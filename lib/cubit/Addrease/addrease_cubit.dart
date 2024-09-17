import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nowproject/Models/hourly/address/saved_address.dart';
import 'package:nowproject/cubit/Addrease/addrease_state.dart';
import 'package:nowproject/cubit/step/first_step_cubit.dart';

class AddreaseCubit extends Cubit<SavedAddressState> {
  AddreaseCubit() : super(SavedAddressInitial());

  void getSavedAddress(String serviceId, String contactId) async {
    try {
      emit(SavedAddressLoading());

      final savedAddressesJson = await FirstStepCubit.getFirstStep(
        contactId: contactId,
        serviceId: serviceId,
      );

      if (savedAddressesJson != null) {
        final mainLocation =
            SavedAddressClass.fromJson(savedAddressesJson['data']);
        log("main location: ${savedAddressesJson}");

        if (mainLocation.mainLocations != null &&
            mainLocation.subLocation!.isNotEmpty) {
          emit(SavedAddressUpdate(mainLocation: mainLocation));
        } else {
          emit(SavedAddressUpdate(mainLocation: mainLocation));
        }
      } else {
        emit(SavedAddressFailure(error: 'No saved addresses found'));
      }
    } catch (e, s) {
      log(e.toString() + s.toString());
      emit(SavedAddressFailure(error: 'Unexpected error: $e'));
    }
  }
}
