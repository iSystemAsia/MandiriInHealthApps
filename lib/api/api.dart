import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:mandiri_in_health/blocs/app_bloc.dart';
import 'package:mandiri_in_health/configs/application.dart';
import 'package:mandiri_in_health/models/closing_model.dart';
import 'package:mandiri_in_health/models/sales_activity_model.dart';
import 'package:mandiri_in_health/utils/utils.dart';
import 'package:mandiri_in_health/api/http_manager.dart';
import 'package:mandiri_in_health/models/achievement_agent_model.dart';
import 'package:mandiri_in_health/models/model.dart';
import 'package:mandiri_in_health/models/pipeline_model.dart';
import 'package:mandiri_in_health/models/quotation_model.dart';
import 'package:mandiri_in_health/models/auth_model.dart';
import 'package:http/http.dart' as http;

class Api {
  static final httpManager = HTTPManager();

  static const String secretKey =
      "2y\$10\$QAsAzXePzUSQjX3T3PYuPuDJzAANS3Vf8If./n810N0i4itTeJLlm";
  static const String login_ = "/login";
  static const String logout = "/logout";
  static const String validateToken = "/validate";
  static const String achievementAgent = "/achievement-agent";
  static const String pipeline = "/pipeline";
  static const String salesActivity = "/sales-activity";
  static const String quotation = "/quotation";
  static const String closing = "/closing";

  static Future<AuthModel> requestLogin(params) async {
    String url = "$login_?SecretKey=$secretKey";
    final result = await httpManager.post(url: url, data: params);
    return AuthModel.fromJson(result);
  }

  static Future<void> requestLogout() async {
    await httpManager.get(url: logout, params: {'SecretKey': secretKey});
  }

  static Future<bool> requestValidateToken() async {
    return await httpManager
        .get(url: validateToken, params: {'SecretKey': secretKey});
  }

  /// Pipeline

  static Future<List<PipelineModel>> requestTop3Pipeline(params) async {
    List<PipelineModel> pipelineList = [];
    params['SecretKey'] = secretKey;
    params['type'] = 'top-3';
    final result = await httpManager.get(url: pipeline, params: params);
    print("requestTop3Pipeline: $result");

    result.forEach((item) => pipelineList.add(PipelineModel.fromJson(item)));

    return pipelineList;
  }

  static Future<Map<String, dynamic>> requestPipeline(params) async {
    List<PipelineModel> pipelineList = [];
    params['SecretKey'] = secretKey;
    final result = await httpManager.get(url: pipeline, params: params);
    print("requestPipeline: $result");

    result['data']
        .forEach((item) => pipelineList.add(PipelineModel.fromJson(item)));
    PaginationModel pagination = PaginationModel(
        page: result['current_page'],
        perPage: result['per_page'],
        maxPage: result['last_page'],
        total: result['total']);

    return {'list': pipelineList, 'pagination': pagination};
  }

  static Future<PipelineModel> requestPipelineDetail(id) async {
    final result = await httpManager
        .get(url: "$pipeline/$id", params: {'SecretKey': secretKey});
    return PipelineModel.fromJson(result);
  }

  /// End Pipeline

  /// Quotation

  static Future<List<QuotationModel>> requestTop5Quotation(params) async {
    List<QuotationModel> pipelineList = [];
    params['SecretKey'] = secretKey;
    params['type'] = 'top-5';
    final result = await httpManager.get(url: quotation, params: params);
    print("requestTop5Quotation: $result");

    result.forEach((item) => pipelineList.add(QuotationModel.fromJson(item)));

    return pipelineList;
  }

  static Future<Map<String, dynamic>> requestQuotation(params) async {
    List<QuotationModel> quotationList = [];
    params['SecretKey'] = secretKey;
    final result = await httpManager.get(url: quotation, params: params);
    print("requestQuotation: $result");

    result['data']
        .forEach((item) => quotationList.add(QuotationModel.fromJson(item)));
    PaginationModel pagination = PaginationModel(
        page: result['current_page'],
        perPage: result['per_page'],
        maxPage: result['last_page'],
        total: result['total']);

    return {'list': quotationList, 'pagination': pagination};
  }

  static Future<QuotationModel> requestQuotationDetail(id) async {
    final result = await httpManager
        .get(url: "$quotation/$id", params: {'SecretKey': secretKey});
    return QuotationModel.fromJson(result);
  }

  /// End Quotation

  /// Sales Activity

  static Future<Map<String, dynamic>> requestSalesActivity(params) async {
    List<SalesActivityModel> salesActivityList = [];
    params['SecretKey'] = secretKey;
    final result = await httpManager.get(url: salesActivity, params: params);
    print("requestSalesActivity: $result");

    result['data'].forEach(
        (item) => salesActivityList.add(SalesActivityModel.fromJson(item)));
    PaginationModel pagination = PaginationModel(
        page: result['current_page'],
        perPage: result['per_page'],
        maxPage: result['last_page'],
        total: result['total']);

    return {'list': salesActivityList, 'pagination': pagination};
  }

  static Future<SalesActivityModel> requestSalesActivityDetail(id) async {
    final result = await httpManager
        .get(url: "$salesActivity/$id", params: {'SecretKey': secretKey});
    return SalesActivityModel.fromJson(result);
  }

  /// End Sales Activity

  /// Closing

  static Future<Map<String, dynamic>> requestClosing(params) async {
    List<ClosingModel> closingList = [];
    params['SecretKey'] = secretKey;
    final result = await httpManager.get(url: closing, params: params);
    print("requestClosing: $result");

    result['data']
        .forEach((item) => closingList.add(ClosingModel.fromJson(item)));
    PaginationModel pagination = PaginationModel(
        page: result['current_page'],
        perPage: result['per_page'],
        maxPage: result['last_page'],
        total: result['total']);

    return {'list': closingList, 'pagination': pagination};
  }

  static Future<ClosingModel> requestClosingDetail(id) async {
    final result = await httpManager
        .get(url: "$closing/$id", params: {'SecretKey': secretKey});
    return ClosingModel.fromJson(result);
  }

  /// End Closing

  static Future<List<AchievementAgentModel>> requestAchievementAgent(
      params) async {
    List<AchievementAgentModel> achievementAgentList = [];
    params['SecretKey'] = secretKey;
    final result = await httpManager.get(url: achievementAgent, params: params);
    print("requestAchievementAgent: $result");

    result.forEach((item) =>
        achievementAgentList.add(AchievementAgentModel.fromJson(item)));

    return achievementAgentList;
  }

  /// ===============================================================

  ///URL API
  static const String login = "/jwt-auth/v1/token";
  static const String authValidate = "/jwt-auth/v1/token/validate";
  static const String user = "/listar/v1/auth/user";
  static const String register = "/listar/v1/auth/register";
  static const String forgotPassword = "/listar/v1/auth/reset_password";
  static const String changePassword = "/wp/v2/users/me";
  static const String changeProfile = "/wp/v2/users/me";
  static const String setting = "/listar/v1/setting/init";
  static const String submitSetting = "/listar/v1/place/form";
  static const String home = "/listar/v1/home/init";
  static const String categories = "/listar/v1/category/list";
  static const String discovery = "/listar/v1/category/list_discover";
  static const String withLists = "/listar/v1/wishlist/list";
  static const String addWishList = "/listar/v1/wishlist/save";
  static const String removeWishList = "/listar/v1/wishlist/remove";
  static const String clearWithList = "/listar/v1/wishlist/reset";
  static const String list = "/listar/v1/place/list";
  static const String deleteProduct = "/listar/v1/place/delete";
  static const String authorList = "/listar/v1/author/listing";
  static const String authorReview = "/listar/v1/author/comments";
  static const String tags = "/listar/v1/place/terms";
  static const String comments = "/listar/v1/comments";
  static const String saveComment = "/wp/v2/comments";
  static const String product = "/listar/v1/place/view";
  static const String saveProduct = "/listar/v1/place/save";
  static const String locations = "/listar/v1/location/list";
  static const String uploadImage = "/wp/v2/media";
  static const String bookingForm = "/listar/v1/booking/form";
  static const String calcPrice = "/listar/v1/booking/cart";
  static const String order = "/listar/v1/booking/order";
  static const String bookingDetail = "/listar/v1/booking/view";
  static const String bookingList = "/listar/v1/booking/list";
  static const String bookingRequestList = "/listar/v1/author/booking";
  static const String bookingCancel = "/listar/v1/booking/cancel_by_id";
  static const String bookingAccept = "/listar/v1/booking/accept_by_id";
  static const String deactivate = "/listar/v1/auth/deactivate";

  ///Forgot password
  static Future<ResultApiModel> requestForgotPassword(params) async {
    Map<String, dynamic> result = await httpManager.post(
      url: forgotPassword,
      data: params,
      loading: true,
    );
    result['message'] = result['code'] ?? result['msg'];
    return ResultApiModel.fromJson(result);
  }

  ///Register account
  static Future<ResultApiModel> requestRegister(params) async {
    final result = await httpManager.post(
      url: register,
      data: params,
      loading: true,
    );
    final convertResponse = {
      "success": result['code'] == 200,
      "message": result['message'],
      "data": result
    };
    return ResultApiModel.fromJson(convertResponse);
  }

  ///Change Profile
  static Future<ResultApiModel> requestChangeProfile(params) async {
    final result = await httpManager.post(
      url: changeProfile,
      data: params,
      loading: true,
    );
    final convertResponse = {
      "success": result['code'] == null,
      "message": result['code'] ?? "update_info_success",
      "data": result
    };
    return ResultApiModel.fromJson(convertResponse);
  }

  ///change password
  static Future<ResultApiModel> requestChangePassword(params) async {
    final result = await httpManager.post(
      url: changePassword,
      data: params,
      loading: true,
    );
    final convertResponse = {
      "success": result['code'] == null,
      "message": result['code'] ?? "change_password_success",
      "data": result
    };
    return ResultApiModel.fromJson(convertResponse);
  }

  ///Get User
  static Future<ResultApiModel> requestUser() async {
    final result = await httpManager.get(url: user);
    return ResultApiModel.fromJson(result);
  }

  ///Get Setting
  static Future<ResultApiModel> requestSetting() async {
    final result = await httpManager.get(url: setting);
    return ResultApiModel.fromJson(result);
  }

  ///Get Submit Setting
  static Future<ResultApiModel> requestSubmitSetting(params) async {
    final result = await httpManager.get(
      url: submitSetting,
      params: params,
    );
    final convertResponse = {
      "success": result['countries'] != null,
      "data": result
    };
    return ResultApiModel.fromJson(convertResponse);
  }

  ///Get Area
  static Future<ResultApiModel> requestLocation(params) async {
    final result = await httpManager.get(url: locations, params: params);
    return ResultApiModel.fromJson(result);
  }

  ///Get Category
  static Future<ResultApiModel> requestCategory(params) async {
    final result = await httpManager.get(url: categories, params: params);
    return ResultApiModel.fromJson(result);
  }

  ///Get Discovery
  static Future<ResultApiModel> requestDiscovery() async {
    final result = await httpManager.get(url: discovery);
    return ResultApiModel.fromJson(result);
  }

  ///Get Home
  static Future<ResultApiModel> requestHome() async {
    final result = await httpManager.get(url: home);
    return ResultApiModel.fromJson(result);
  }

  ///Get ProductDetail
  static Future<ResultApiModel> requestProduct(params) async {
    final result = await httpManager.get(
      url: product,
      params: params,
    );
    return ResultApiModel.fromJson(result);
  }

  ///Get Wish List
  static Future<ResultApiModel> requestWishList(params) async {
    final result = await httpManager.get(url: withLists, params: params);
    return ResultApiModel.fromJson(result);
  }

  ///Save Wish List
  static Future<ResultApiModel> requestAddWishList(params) async {
    final result = await httpManager.post(url: addWishList, data: params);
    return ResultApiModel.fromJson(result);
  }

  ///Save Product
  static Future<ResultApiModel> requestSaveProduct(params) async {
    final result = await httpManager.post(
      url: saveProduct,
      data: params,
      loading: true,
    );
    return ResultApiModel.fromJson(result);
  }

  ///Remove Wish List
  static Future<ResultApiModel> requestRemoveWishList(params) async {
    final result = await httpManager.post(
      url: removeWishList,
      data: params,
      loading: true,
    );
    return ResultApiModel.fromJson(result);
  }

  ///Clear Wish List
  static Future<ResultApiModel> requestClearWishList() async {
    final result = await httpManager.post(url: clearWithList, loading: true);
    return ResultApiModel.fromJson(result);
  }

  ///Get Product List
  static Future<ResultApiModel> requestList(params) async {
    final result = await httpManager.get(url: list, params: params);
    return ResultApiModel.fromJson(result);
  }

  ///Get Tags List
  static Future<ResultApiModel> requestTags(params) async {
    final result = await httpManager.get(url: tags, params: params);
    return ResultApiModel.fromJson(result);
  }

  ///Clear Wish List
  static Future<ResultApiModel> requestDeleteProduct(params) async {
    final result = await httpManager.post(
      url: deleteProduct,
      data: params,
      loading: true,
    );
    return ResultApiModel.fromJson(result);
  }

  ///Get Author Product List
  static Future<ResultApiModel> requestAuthorList(params) async {
    final result = await httpManager.get(
      url: authorList,
      params: params,
    );
    return ResultApiModel.fromJson(result);
  }

  ///Get Author Review List
  static Future<ResultApiModel> requestAuthorReview(params) async {
    final result = await httpManager.get(
      url: authorReview,
      params: params,
    );
    return ResultApiModel.fromJson(result);
  }

  ///Get Review
  static Future<ResultApiModel> requestReview(params) async {
    final result = await httpManager.get(url: comments, params: params);
    return ResultApiModel.fromJson(result);
  }

  ///Save Review
  static Future<ResultApiModel> requestSaveReview(params) async {
    final result = await httpManager.post(
      url: saveComment,
      data: params,
      loading: true,
    );
    final convertResponse = {
      "success": result['code'] == null,
      "message": result['message'] ?? "save_data_success",
      "data": result
    };
    return ResultApiModel.fromJson(convertResponse);
  }

  ///Upload image
  // static Future<ResultApiModel> requestUploadImage(formData, progress) async {
  //   var result = await httpManager.post(
  //     url: uploadImage,
  //     formData: formData,
  //     progress: progress,
  //   );

  //   final convertResponse = {"success": result['id'] != null, "data": result};
  //   return ResultApiModel.fromJson(convertResponse);
  // }

  ///Get booking form
  static Future<ResultApiModel> requestBookingForm(params) async {
    final result = await httpManager.get(
      url: bookingForm,
      params: params,
      loading: true,
    );
    return ResultApiModel.fromJson(result);
  }

  ///Get Price
  static Future<ResultApiModel> requestPrice(params) async {
    final result = await httpManager.post(
      url: calcPrice,
      data: params,
      loading: true,
    );
    return ResultApiModel.fromJson(result);
  }

  ///Get Order
  static Future<ResultApiModel> requestOrder(params) async {
    final result = await httpManager.post(
      url: order,
      data: params,
      loading: true,
    );
    return ResultApiModel.fromJson(result);
  }

  ///Get Booking Detail
  static Future<ResultApiModel> requestBookingDetail(params) async {
    final result = await httpManager.get(url: bookingDetail, params: params);
    return ResultApiModel.fromJson(result);
  }

  ///Get Booking List
  static Future<ResultApiModel> requestBookingList(
    params, {
    required bool request,
  }) async {
    final result = await httpManager.get(
      url: request ? bookingRequestList : bookingList,
      params: params,
    );
    return ResultApiModel.fromJson(result);
  }

  ///Booking Cancel
  static Future<ResultApiModel> requestBookingCancel(params) async {
    final result = await httpManager.post(
      url: bookingCancel,
      data: params,
      loading: true,
    );
    return ResultApiModel.fromJson(result);
  }

  ///Booking Cancel
  static Future<ResultApiModel> requestBookingAccept(params) async {
    final result = await httpManager.post(
      url: bookingAccept,
      data: params,
      loading: true,
    );
    return ResultApiModel.fromJson(result);
  }

  ///Download file
  static Future<ResultApiModel> requestDownloadFile({
    required FileModel file,
    required progress,
    String? directory,
  }) async {
    directory ??= await UtilFile.getFilePath();
    final filePath = '$directory/${file.name}.${file.type}';
    final result = await httpManager.download(
      url: file.url,
      filePath: filePath,
      progress: progress,
    );
    return ResultApiModel.fromJson(result);
  }

  ///Deactivate account
  static Future<ResultApiModel> requestDeactivate() async {
    final result = await httpManager.post(
      url: deactivate,
      loading: true,
    );
    return ResultApiModel.fromJson(result);
  }

  ///Singleton factory
  static final Api _instance = Api._internal();

  factory Api() {
    return _instance;
  }

  Api._internal();
}
