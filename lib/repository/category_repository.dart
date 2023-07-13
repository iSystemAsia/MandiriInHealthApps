import 'package:mandiri_in_health/api/api.dart';
import 'package:mandiri_in_health/blocs/bloc.dart';
import 'package:mandiri_in_health/models/model.dart';

class CategoryRepository {
  ///Load Category
  static Future<List<CategoryModel>?> loadCategory({int? id}) async {
    final Map<String, dynamic> params = {};
    if (id != null) {
      params['category_id'] = id;
    }
    final result = await Api.requestCategory(params);
    if (result.success) {
      return List.from(result.data ?? []).map((item) {
        return CategoryModel.fromJson(item);
      }).toList();
    }
    AppBloc.messageCubit.onShow(result.message);
    return null;
  }

  ///Load Location category
  static Future<List<CategoryModel>?> loadLocation(int id) async {
    final result = await Api.requestLocation({"parent_id": id});
    if (result.success) {
      return List.from(result.data ?? []).map((item) {
        return CategoryModel.fromJson(item);
      }).toList();
    }
    AppBloc.messageCubit.onShow(result.message);
    return null;
  }

  ///Load Discovery
  static Future<List<DiscoveryModel>?> loadDiscovery() async {
    var data = [
            {
                "color": "#0081C9",
                "icon": "fas fa-chart-simple",
                "id": 1,
                "name": "Dashboard Pipeline",
                "posts": [
                    {
                        "ID": 1,
                        "address": null,
                        "author": null,
                        "booking_price": null,
                        "booking_price_display": null,
                        "booking_style": null,
                        "booking_use": false,
                        "category": null,
                        "color": null,
                        "data_closing": null,
                        "data_pipeline": null,
                        "data_quotation": null,
                        "data_sales_activity": null,
                        "date_establish": null,
                        "email": null,
                        "fax": null,
                        "features": null,
                        "galleries": null,
                        "icon": null,
                        "image": {
                            "full": {
                                "url": "https://cdn-mdr.appbuilder.my.id/Performance-Nasional.jpg"
                            },
                            "id": 1,
                            "thumb": {
                                "url": "https://cdn-mdr.appbuilder.my.id/Performance-Nasional.jpg"
                            }
                        },
                        "latest": null,
                        "link": null,
                        "menuId": 0,
                        "opening_hour": null,
                        "phone": null,
                        "post_date": null,
                        "post_excerpt": null,
                        "post_status": null,
                        "post_title": "Performance Nasional",
                        "price_max": null,
                        "price_min": null,
                        "rating_avg": 0,
                        "rating_count": 0,
                        "related": null,
                        "social_network": null,
                        "socials": null,
                        "status": null,
                        "tags": null,
                        "uuid": "00000000-0000-0000-0000-000000000000",
                        "video_url": null,
                        "website": null,
                        "wishlist": false,
                        "zip_code": null
                    },
                    {
                        "ID": 2,
                        "address": null,
                        "author": null,
                        "booking_price": null,
                        "booking_price_display": null,
                        "booking_style": null,
                        "booking_use": false,
                        "category": null,
                        "color": null,
                        "data_closing": null,
                        "data_pipeline": null,
                        "data_quotation": null,
                        "data_sales_activity": null,
                        "date_establish": null,
                        "email": null,
                        "fax": null,
                        "features": null,
                        "galleries": null,
                        "icon": null,
                        "image": {
                            "full": {
                                "url": "https://cdn-mdr.appbuilder.my.id/New-Business.jpg"
                            },
                            "id": 1,
                            "thumb": {
                                "url": "https://cdn-mdr.appbuilder.my.id/New-Business.jpg"
                            }
                        },
                        "latest": null,
                        "link": null,
                        "menuId": 0,
                        "opening_hour": null,
                        "phone": null,
                        "post_date": null,
                        "post_excerpt": null,
                        "post_status": null,
                        "post_title": "New Business",
                        "price_max": null,
                        "price_min": null,
                        "rating_avg": 0,
                        "rating_count": 0,
                        "related": null,
                        "social_network": null,
                        "socials": null,
                        "status": null,
                        "tags": null,
                        "uuid": "00000000-0000-0000-0000-000000000000",
                        "video_url": null,
                        "website": null,
                        "wishlist": false,
                        "zip_code": null
                    },
                    {
                        "ID": 3,
                        "address": null,
                        "author": null,
                        "booking_price": null,
                        "booking_price_display": null,
                        "booking_style": null,
                        "booking_use": false,
                        "category": null,
                        "color": null,
                        "data_closing": null,
                        "data_pipeline": null,
                        "data_quotation": null,
                        "data_sales_activity": null,
                        "date_establish": null,
                        "email": null,
                        "fax": null,
                        "features": null,
                        "galleries": null,
                        "icon": null,
                        "image": {
                            "full": {
                                "url": "https://cdn-mdr.appbuilder.my.id/Renewal.jpg"
                            },
                            "id": 1,
                            "thumb": {
                                "url": "https://cdn-mdr.appbuilder.my.id/Renewal.jpg"
                            }
                        },
                        "latest": null,
                        "link": null,
                        "menuId": 0,
                        "opening_hour": null,
                        "phone": null,
                        "post_date": null,
                        "post_excerpt": null,
                        "post_status": null,
                        "post_title": "Renewal",
                        "price_max": null,
                        "price_min": null,
                        "rating_avg": 0,
                        "rating_count": 0,
                        "related": null,
                        "social_network": null,
                        "socials": null,
                        "status": null,
                        "tags": null,
                        "uuid": "00000000-0000-0000-0000-000000000000",
                        "video_url": null,
                        "website": null,
                        "wishlist": false,
                        "zip_code": null
                    }
                ]
            },
            {
                "color": "#FF0032",
                "icon": "fas fa-handshake-simple",
                "id": 1,
                "name": "Dashboard Quotation",
                "posts": [
                    {
                        "ID": 1,
                        "address": null,
                        "author": null,
                        "booking_price": null,
                        "booking_price_display": null,
                        "booking_style": null,
                        "booking_use": false,
                        "category": null,
                        "color": null,
                        "data_closing": null,
                        "data_pipeline": null,
                        "data_quotation": null,
                        "data_sales_activity": null,
                        "date_establish": null,
                        "email": null,
                        "fax": null,
                        "features": null,
                        "galleries": null,
                        "icon": null,
                        "image": {
                            "full": {
                                "url": "https://cdn-mdr.appbuilder.my.id/Quotation-Dashboard.jpg"
                            },
                            "id": 1,
                            "thumb": {
                                "url": "https://cdn-mdr.appbuilder.my.id/Quotation-Dashboard.jpg"
                            }
                        },
                        "latest": null,
                        "link": null,
                        "menuId": 0,
                        "opening_hour": null,
                        "phone": null,
                        "post_date": null,
                        "post_excerpt": null,
                        "post_status": null,
                        "post_title": "Quotation Dashboard",
                        "price_max": null,
                        "price_min": null,
                        "rating_avg": 0,
                        "rating_count": 0,
                        "related": null,
                        "social_network": null,
                        "socials": null,
                        "status": null,
                        "tags": null,
                        "uuid": "00000000-0000-0000-0000-000000000000",
                        "video_url": null,
                        "website": null,
                        "wishlist": false,
                        "zip_code": null
                    }
                ]
            }
        ];
    return List.from(data as List<Map<String, dynamic>>).map((item) {
      return DiscoveryModel.fromJson(item);
    }).toList();
  }
}
