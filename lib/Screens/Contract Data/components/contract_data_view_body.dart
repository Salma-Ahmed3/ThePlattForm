import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/Screens/Choose%20the%20package%20Individual%20Service/components/custom_button_copon.dart';
import 'package:nowproject/Screens/Contract%20Data/components/custom_click_in_contract_data.dart';
import 'package:nowproject/Screens/Contract%20Data/components/custom_favorite_date.dart';
import 'package:nowproject/components/custom_check_box/custom_check_box.dart';
import 'package:nowproject/cubit/Fixed_Package/fixed_package_cubit.dart';
import 'package:nowproject/cubit/Fixed_Package/fixed_package_state.dart';
import 'package:nowproject/utility/app_images.dart';
import 'package:nowproject/utility/app_text_style.dart';

import '../../Choose the package Individual Service/components/custom_detailes_in_choose_packege.dart';

class ContractDataViewBody extends StatefulWidget {
  const ContractDataViewBody({
    super.key,
    required this.promotionCode,
    required this.promotionCodeDescription,
    required this.selectedDate, required this.onChanged,
  });

  final String promotionCode;
  final String promotionCodeDescription;
  final DateTime selectedDate;
  final ValueChanged<bool> onChanged;

  @override
  State<ContractDataViewBody> createState() => _ContractDataViewBodyState();
}

class _ContractDataViewBodyState extends State<ContractDataViewBody> {
  bool isTermsAccepted = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 27),
          CustomButtonCopon(
            promotionCode: widget.promotionCode,
            promotionCodeDescription: widget.promotionCodeDescription,
          ),
          const SizedBox(height: 19),
          CustomFavorteDate(selectedDate: widget.selectedDate ),
          const SizedBox(height: 23),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child:
            BlocConsumer<FixedPackageCubit, FixedPackageState>(
                    builder: (context, state) {
                      if (state is FixedPackageLoading) {
                        return Center(
                          child: SizedBox(
                            width: 80.w,
                            height: 100.h,
                            child: Image.asset(Assets.imagesclockloader),
                          ),
                        );
                      } else if (state is FixedPackageListUpdate && state.fixedPackag.data?.selectedPackages != null) {
                        if (state.fixedPackag.data!.selectedPackages!.isEmpty) {
                            return const Center(child: Text('لا توجد باقات متاحه'));
                        }else {
                      return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                SizedBox(
                                  child: Column(
                                    children: List.generate(
                                      state.fixedPackag.data!.selectedPackages!.length,
                                      (index) {
                                        return  CustomDetailesInChoosePackege(
                                          workerData:state.fixedPackag.data!.selectedPackages![index].resourceGroupName!,
                                          textPackageDuration: state.fixedPackag.data!.selectedPackages![index].promotionCodeDescription!,
                                          packagePrice: state.fixedPackag.data!.selectedPackages![index].packagePrice.toString(),
                                          packagePriceWithoutDiscount: state.fixedPackag.data!.selectedPackages![index].totalPriceWithVatBeforePromotion.toString(),
                                        );
                                      },
                                    ),
                                  ),
                                )

                            ],
                        );
                        }
                      }
                      return const SizedBox.shrink();
                    },
                    listener: (context, state) {
                      if (state is FixedPackageFailure) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text(state.error)),
                        );
                      }
                    },
                  ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomCheckBox(
                onChecked: (value) {
                isTermsAccepted = value;
                widget.onChanged(value);
                setState(() {});
              },
                isChecked: isTermsAccepted,
              ),
          const SizedBox(width: 16),

                        Column(
                          children: [
                            Text(
                            'بإكمالك الخطوات فأنت توافق على',
                            style: TextStyles.regular14,
                            ),
                            const SizedBox(height: 5),
                            Text(
                            'شروط و أحكام الشركة',
                            style: TextStyles.regular14.copyWith(color: const Color(0xff24A19D)),
                            ),
                          ],
                        ),
              ],
          ),
          const SizedBox(height: 37),
          CustomClickInContractData(isTermsAccepted: isTermsAccepted, selectedDate: widget.selectedDate,),
          const SizedBox(height: 40),

        ],
      ),
    );
  }
}
