import 'package:flutter/material.dart';
import 'package:nowproject/Screens/Contract%20Data/components/custom_dialoge_show_visits.dart';
import 'package:nowproject/Screens/Contract%20Success/contract_success_view.dart';
import 'package:nowproject/components/custom_button/custom_button_in_add_new_addrease.dart';
import 'package:nowproject/utility/app_text_style.dart';

class CustomClickInContractData extends StatefulWidget {
  final bool isTermsAccepted;
  final DateTime selectedDate;

  const CustomClickInContractData({
    super.key,
    required this.isTermsAccepted,
    required this.selectedDate,
  });

  @override
  State<CustomClickInContractData> createState() =>
      _CustomClickInContractDataState();
}

class _CustomClickInContractDataState extends State<CustomClickInContractData> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomButtonInAddNewAddrease(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return DialogeShowVisits(
                    selectedDate: widget.selectedDate,
                  );
                },
              );
            },
            alignment: Alignment.centerRight,
            colorBackGround: Colors.transparent,
            tixtInButton: Center(
              child: Text(
                'عرض الزيارات',
                style: TextStyles.regular18,
              ),
            ),
            width: 167,
            height: 48,
            colorBorder: const Color(0xff000000),
            borderRadius: BorderRadius.circular(8),
          ),
          CustomButtonInAddNewAddrease(
            onTap: widget.isTermsAccepted
                ? () {
                    Navigator.pushNamed(
                      context,
                      ContractSuccessView.routeName,
                    );
                  }
                : null,
            alignment: Alignment.centerRight,
            colorBackGround:
                widget.isTermsAccepted ? Colors.black : Colors.grey,
            tixtInButton: Center(
              child: Text(
                'إتمام التعاقد',
                style: TextStyles.regular18.copyWith(color: Colors.white),
              ),
            ),
            width: 152,
            height: 47,
            colorBorder: const Color(0xff000000),
            borderRadius: BorderRadius.circular(8),
          ),
        ],
      ),
    );
  }
}
