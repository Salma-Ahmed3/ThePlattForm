import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/Screens/Resident%20service/components/button_in_resident_service.dart';
import 'package:nowproject/cubit/Addrease/addrease_cubit.dart';
import 'package:nowproject/cubit/Addrease/addrease_state.dart';
import 'package:nowproject/utility/app_text_style.dart';

class ResidentServiceViewBody extends StatefulWidget {
  const ResidentServiceViewBody({super.key, required this.onChanged});
  final void Function(bool) onChanged;

  @override
  State<ResidentServiceViewBody> createState() => _ResidentServiceViewBodyState();
}

class _ResidentServiceViewBodyState extends State<ResidentServiceViewBody> {
  @override
@override

void initState() {
  super.initState();
  // Fetch dynamic steps with necessary parameters
  BlocProvider.of<AddreaseCubit>(context).getSavedAddress(
    '4dc0edee-8e92-ee11-b766-000d3a236f24',
    '1f87f7f3-6466-4013-9be3-e23ce4e62a55'
    );
}


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: 
          BlocConsumer<AddreaseCubit, SavedAddressState>(
  builder: (context, state) {
    print('Current state: $state'); 
    if (state is SavedAddressUpdate) {
      if (state.savedAddressClass?.mainLocations != null || state.savedAddressClass?.subLocation?.isNotEmpty == true) {
        return Column(
          children: [
            SizedBox(height: 30.h),
            Text('اختيار العنوان من عناوينك السابقة', style: TextStyles.regular18),
            SizedBox(height: 32.h),
            Expanded(
              child: ListView.builder(
                itemCount: state.savedAddressClass!.mainLocations!.length,
                itemBuilder: (context, index) {
                  return ButtonInResidentService(
                    savedAddressClass: state.savedAddressClass!.mainLocations![index],
                    isAddressMain: true,
                    showIsAddressMain: false,
                    onTapAction: true,
                    onChanged: widget.onChanged,
                    colorBackGroun: Colors.transparent,
                    colorBorder: const Color(0xffACACAC),
                  );
                },
              ),
            ),
            SizedBox(height: 24.h),
          ],
        );
      } else {
        return const Center(child: Text('لا يوجد عناوين محفوظة'));
      }
    } else if (state is SavedAddressLoading) {
      return const Center(child: CircularProgressIndicator());
    } else if (state is SavedAddressFailure) {
      return Center(child: Text(state.error)); 
    } else {
      return const Center(child: Text('هناك خطأ ما'));
    }
  },
  listener: (context, state) {
    print('Listener: $state');
  },
)

        ),
      ],
    );
  }
}
