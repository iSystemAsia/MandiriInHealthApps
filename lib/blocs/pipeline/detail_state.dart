import 'package:mandiri_in_health/models/pipeline_model.dart';

abstract class PipelineDetailState {}

class PipelineDetailLoading extends PipelineDetailState {}

class PipelineDetailSuccess extends PipelineDetailState {
  final PipelineModel pipeline;

  PipelineDetailSuccess(this.pipeline);
}
