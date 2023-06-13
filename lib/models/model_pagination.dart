class PaginationModel {
  final int page;
  final int perPage;
  final int maxPage;
  final int total;

  PaginationModel({
    required this.page,
    required this.perPage,
    required this.maxPage,
    required this.total,
  });

  // factory PaginationModel.fromJson(Map<String, dynamic> json) {
  //   return PaginationModel(
  //     page: json['page'] ?? 0,
  //     perPage: json['per_page'] ?? 0,
  //     maxPage: json['max_page'] ?? 0,
  //     total: json['total'] ?? 0,
  //   );
  // }

  // sample menggunakan pagination laravel
  factory PaginationModel.fromJson(Map<String, dynamic> json) {
    return PaginationModel(
      page: json['current_page'] ?? 1,
      perPage: json['per_page'] ?? 10, // default 10 data
      maxPage: json['last_page'] ?? 0,
      total: json['total'] ?? 0,
    );
  }
}
