import 'package:mandiri_in_health/api/api.dart';
import 'package:mandiri_in_health/models/model_filter.dart';

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
      "s": keyword,
    };
    if (filter != null) {
      params.addAll(await filter.getParams());
    }
    final response = await Api.requestPipeline(params);
    return [response['list'], response['pagination']];
  }
}
