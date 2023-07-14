// ignore_for_file: non_constant_identifier_names

import 'package:mandiri_in_health/models/model_sort.dart';

class FilterModel {
  final String? search;
  final String? kanal;
  final String? produk;
  final String? nama_bu;
  final String? kepala_unit;
  final String? agent;
  final String? status;
  final String? status_polis;
  final bool? is_komit;
  SortModel? sort;

  FilterModel(
      {this.search,
      this.kanal,
      this.produk,
      this.nama_bu,
      this.kepala_unit,
      this.agent,
      this.status,
      this.status_polis,
      this.is_komit,
      this.sort});

  Future<Map<String, dynamic>> getParams() async {
    Map<String, dynamic> params = {};
    if (search != null) {
      params['search'] = search;
    }
    
    if (kanal != null) {
      params['kanal'] = kanal;
    }

    if (produk != null) {
      params['produk'] = produk;
    }

    if (nama_bu != null) {
      params['nama_bu'] = nama_bu;
    }

    if (kepala_unit != null) {
      params['kepala_unit'] = kepala_unit;
    }

    if (agent != null) {
      params['agent'] = agent;
    }

    if (status != null) {
      params['status'] = status;
    }

    if (status_polis != null) {
      params['status_polis'] = status_polis;
    }

    if (is_komit != null) {
      params['is_komit'] = is_komit;
    }

    if (sort != null) {
      params['order'] = sort!.field;
      params['direction'] = sort!.value;
    }

    return params;
  }

  factory FilterModel.fromDefault() {
    return FilterModel(
        search: null,
        kanal: null,
        produk: null,
        kepala_unit: null,
        agent: null,
        status: null,
        status_polis: null,
        is_komit: null,
        sort: SortModel(
            title: "Data terbaru", value: "DESC", field: "CreatedOn"));
  }
}
