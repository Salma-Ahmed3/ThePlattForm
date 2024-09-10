import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nowproject/Models/address/saved_address.dart';
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
        final mainLocation = MainLocation.fromJson(savedAddressesJson);

        if (mainLocation.displayValue.isNotEmpty &&
            mainLocation.availabilityMessage.isNotEmpty) {
          emit(SavedAddressUpdate(mainLocation: mainLocation));
        } else {
          emit(SavedAddressUpdate(mainLocation: mainLocation));
        }
      } else {
        emit(SavedAddressFailure(error: 'لا يوجد عنواين محفوظة'));
      }
    } catch (e) {
      emit(SavedAddressFailure(error: ' خطأ غير متوقع: $e'));
    }
  }
}
