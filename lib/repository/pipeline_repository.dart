import 'dart:convert';

import 'package:mandiri_in_health/api/api.dart';
import 'package:mandiri_in_health/configs/preferences.dart';
import 'package:mandiri_in_health/models/filter_model.dart';
import 'package:mandiri_in_health/models/pipeline_model.dart';
import 'package:mandiri_in_health/models/user_model.dart';

class PipelineRepository {
  static Future<List?> loadList({
    int? page,
    int? perPage,
    FilterModel? filter,
    String? keyword,
  }) async {
    Map<String, dynamic> params = {
      "page": page,
      "limit": perPage,
      "search": keyword,
    };
    if (filter != null) {
      params.addAll(await filter.getParams());
    }

    final getUser = Preferences.getString(Preferences.user);
    final user =
        getUser != null ? UserModel_.fromJson(jsonDecode(getUser)) : null;
    params['contact'] = user?.contactId;

    final response = await Api.requestPipeline(params);
    return [response['list'], response['pagination']];
  }

  static Future<PipelineModel?> loadPipeline(id) async {
    return await Api.requestPipelineDetail(id);
  }
}
