import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:nowproject/Models/services.dart';
import 'package:nowproject/controller/horly_contract/hourly_contract.dart';
import 'package:nowproject/controller/services/services.dart';
import 'package:nowproject/cubit/generic_cubit/generic_cubit.dart';
import 'package:nowproject/cubit/loading_cubit/loading_cubit.dart';
import 'package:nowproject/cubit/steps/dynamic_step_cubit.dart';


mixin class ServiceData {
  Loading loading = Loading();
  bool isHourlySectorAvailable = false;

  GenericCubit<List<ServiceItems>> serviceApp =
      GenericCubit<List<ServiceItems>>(data: []);

  initData() async {
    loading.show;
    isHourlySectorAvailable =
        await HourlyContractController.isHourlySectorAvailable();
     List<ServiceItems> services = await ServiceController.getService(
        serviceType: BlocProvider.of<DynamicStepCubit>(Get.context!, listen: false)
           
            .toString());
      // لو عملتها isEmpty هيظهرلي لا يوجد بيانات حاليا
    if (services.isNotEmpty) {
      serviceApp.update(data: services);
    } else {
      serviceApp.update(data: []);
    }
    loading.hide;
  }
}



