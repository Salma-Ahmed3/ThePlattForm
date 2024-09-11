import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nowproject/Models/model_addrease/model_addrease.dart';
import 'package:nowproject/controller/dynamic_steps/dynamic_steps_controller.dart';
import 'package:nowproject/cubit/Addrease/addrease_state.dart';

class AddreaseCubit extends Cubit<SavedAddressState> {
  AddreaseCubit() : super(SavedAddressInitial());

  void getSavedAddress(String serviceId, String contactId) async {
    try {
      emit(SavedAddressLoading());
      final savedAddressesJson = await DynamicStepsController.firstStepAction(
        contactId: contactId,
        serviceId: serviceId,
      );

      if (savedAddressesJson != null) {
        final modelAddrease = ModelAddrease.fromJson(savedAddressesJson);

        if (modelAddrease.mainLocations!=null &&
            modelAddrease.subLocation!.isNotEmpty) {
          emit(SavedAddressUpdate(modeladdrease: modelAddrease));
        } else {
          emit(SavedAddressUpdate(modeladdrease: modelAddrease));
        }
      } else {
        emit(SavedAddressFailure(error: 'لا يوجد عنواين محفوظة'));
      }
    } catch (e) {
      emit(SavedAddressFailure(error: ' خطأ غير متوقع: $e'));
    }
  }
}
