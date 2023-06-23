import 'dart:convert';

import 'package:mandiri_in_health/api/api.dart';
import 'package:mandiri_in_health/configs/preferences.dart';
import 'package:mandiri_in_health/models/model_filter.dart';
import 'package:mandiri_in_health/models/sales_activity_model.dart';
import 'package:mandiri_in_health/models/user_model.dart';

class SalesActivityRepository {
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
    final user = getUser != null ? UserModel_.fromJson(jsonDecode(getUser)) : null;
    params['contact'] = user?.contactId;
    
    final response = await Api.requestSalesActivity(params);
    return [response['list'], response['pagination']];
  }

  static Future<SalesActivityModel?> loadSalesActivity(id) async {
    return await Api.requestSalesActivityDetail(id);
  }
}
