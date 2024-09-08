import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nowproject/cubit/Addrease/addrease_state.dart';
import 'package:nowproject/services/app_services.dart';

import '../../Models/address/saved_address.dart';

class AddreaseCubit extends Cubit<AddreaseState> {
  AddreaseCubit() : super(AddreaseInitial());

  Future<void> fetchAddrease(String contactId) async {
    emit(AddreaseLoading());

    final queryParameters = {'contactId': contactId}; 

    final response = await AppService.callService(
      actionType: ActionType.get,
      apiName: 'SavedContactLocation/ContactSavedAddress',
      body: {},
      query: queryParameters,
    );

    if (response != null && response['status'] == 200) {
      if (response['data'] == null || (response['data'] as List).isEmpty || response['data'][0] == null) {
        emit(const AddreaseFailure(error: 'لا يوجد بيانات متاحة'));
      } else {
        List<SavedAddressClass> addrease = (response['data'] as List)
            .map((addreaseData) => SavedAddressClass.fromJson(addreaseData))
            .toList();

        emit(AddreaseSuccess(addrease: addrease));
      }
    }
    if (response != null && response['status'] == 500) {
      if (response['data'] == null || (response['data'] as List).isEmpty || response['data'][0] == null) {
        emit(const AddreaseFailure(error: 'لا يوجد بيانات متاحة'));
      } else {
        List<SavedAddressClass> addrease = (response['data'] as List)
            .map((addreaseData) => SavedAddressClass.fromJson(addreaseData))
            .toList();

        emit(AddreaseSuccess(addrease: addrease));
      }
    } else {
      emit(const AddreaseFailure(error: 'حدث خطأ أثناء تحميل البيانات'));
    }
  }
}
