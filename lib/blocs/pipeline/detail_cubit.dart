import 'package:bloc/bloc.dart';
import 'package:mandiri_in_health/blocs/pipeline/detail_state.dart';
import 'package:mandiri_in_health/models/pipeline_model.dart';
import 'package:mandiri_in_health/repository/pipeline_repository.dart';

class PipelineDetailCubit extends Cubit<PipelineDetailState> {
  PipelineDetailCubit() : super(PipelineDetailLoading());
  PipelineModel? pipeline;

  void onLoad(String id) async {
    final result = await PipelineRepository.loadPipeline(id);
    print("PipelineDetailCubit > onLoad > result: $result");

    if (result != null) {
      pipeline = result;
      emit(PipelineDetailSuccess(pipeline!));
    }
  }
}
