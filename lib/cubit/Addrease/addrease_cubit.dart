import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:nowproject/Models/address/saved_address.dart';
import 'package:nowproject/Screens/Hourly%20service/data/hourly_global_data.dart';
import 'package:nowproject/Screens/Resident%20service/data/indiv_global_data.dart';
import 'package:nowproject/controller/saved_content_location.dart';
import 'package:nowproject/cubit/Addrease/addrease_state.dart';
import 'package:nowproject/cubit/Login/login_cubit.dart';
import 'package:nowproject/cubit/loading_cubit/loading_cubit.dart';
import 'package:nowproject/cubit/step/first_step_cubit.dart';
import 'package:nowproject/utility/enums.dart';

class AddreaseCubit extends Cubit<SavedAddressState> {
  AddreaseCubit() : super(SavedAddressInitial());
  final Loading loading = Loading();
 
  getSavedAddress() async {
    emit(SavedAddressLoading());  // Emit loading state

    try {
      if (!BlocProvider.of<LoginCubit>(Get.context!, listen: false).iSUserVisitor) {
        String contactId = BlocProvider.of<LoginCubit>(Get.context!, listen: false).userData!.crmUserId!;
        String? serviceId = hourlyGlobalData.serviceId;
        String? pricingId = offerGlobalData.currentOffers != null ? offerGlobalData.currentOffers!.pricingId : "";

        if (BlocProvider.of<FirstStepCubit>(Get.context!, listen: false).serviceType != ServiceType.hourlyServiceType) {
          serviceId = null;
        }

        SavedAddressClass savedAddressClass = await SavedContactLocationController.getAllUserAddress(
          crmUserId: contactId, 
          serviceId: serviceId, 
          selectedHourlyPricingId: pricingId
        );

        loading.hide;
        emit(SavedAddressUpdate(
          savedAddressClass: savedAddressClass, 
          change: !state.change!
        ));
      }
    } catch (e) {
      loading.hide;
      emit(SavedAddressFailure(error: 'Error fetching data'));
    }
  }
}
