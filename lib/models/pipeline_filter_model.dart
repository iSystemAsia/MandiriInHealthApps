// ignore_for_file: non_constant_identifier_names

import 'package:mandiri_in_health/models/model_sort.dart';

class PipelineFilterModel {
  final String? kanal;
  final String? produk;
  final String? kepala_unit;
  final String? agent;
  final String? status;
  final String? status_polis;
  final bool? is_komit;
  SortModel? sort;

  PipelineFilterModel(
      {this.kanal,
      this.produk,
      this.kepala_unit,
      this.agent,
      this.status,
      this.status_polis,
      this.is_komit,
      this.sort});

  Future<Map<String, dynamic>> getParams() async {
    Map<String, dynamic> params = {};
    if (kanal != null) {
      params['kanal'] = kanal;
    }

    if (produk != null) {
      params['produk'] = produk;
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

  factory PipelineFilterModel.fromDefault() {
    return PipelineFilterModel(
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
