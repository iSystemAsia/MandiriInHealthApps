import 'package:bloc/bloc.dart';
import 'package:mandiri_in_health/repository/repository.dart';

import '../../models/model_discovery.dart';
import 'cubit.dart';

class DiscoveryCubit extends Cubit<DiscoveryState> {
  DiscoveryCubit() : super(DiscoveryLoading());

  Future<void> onLoad() async {
    final result = await CategoryRepository.loadDiscovery();
    if (result != null) {
      emit(DiscoverySuccess(result));
    }
  }
}
