import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/Feauters/Choose%20the%20package/Presentation/Views/widgets/custom_button_nationality.dart';
import 'package:nowproject/Feauters/Choose%20the%20package/Presentation/Views/widgets/custom_detailes_in_choose_packege.dart';
import 'custom_button_copon.dart';

class ChoosePackageViewBody extends StatelessWidget {
  const ChoosePackageViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 18.h,),
          const CustomButtonNationality(),
          SizedBox(height: 24.h,),
          const CustomButtonCopon(),
          SizedBox(height: 15.h,),
          const CustomDetailesInChoosePackege(workerData: 'سائق خاص- باكستان - شهر', heightContainer: 128,),
          SizedBox(height: 16.h,),
          const CustomDetailesInChoosePackege(workerData: 'باقة كينيا ثلاثة أشهر اقساط دفعة أولى 1000 و قسط شهري 3620 ريال', heightContainer: 150,),
        ],
      ),
    );
  }
}

