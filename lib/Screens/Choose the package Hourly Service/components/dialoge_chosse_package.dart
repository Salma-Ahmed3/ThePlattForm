import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nowproject/Screens/Contract%20Data/contract_data_view.dart';
import 'package:nowproject/components/custom_button/custom_button_in_add_new_addrease.dart';
import 'package:nowproject/cubit/Calender/calender_cubit.dart';
import 'package:nowproject/cubit/Calender/calender_state.dart';
import 'package:nowproject/utility/app_text_style.dart';
import 'package:table_calendar/table_calendar.dart';

class DialogeChossePackage extends StatefulWidget {
  const DialogeChossePackage({
    super.key,
    required this.promotionCode,
    required this.promotionCodeDescription,
  });

  final String promotionCode;
  final String promotionCodeDescription;

  @override
  State<DialogeChossePackage> createState() => _DialogeChossePackageState();
}

class _DialogeChossePackageState extends State<DialogeChossePackage> {
  DateTime _selectedDay = DateTime.now();
  DateTime _focusedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CalenderCubit, CalenderState>(
      listener: (context, state) {
        if (state is CalenderFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.error)),
          );
        }
      },
      builder: (context, state) {
        if (state is CalenderLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is CalenderListUpdate) {
          final calenderData = state.calenderModel;

          DateTime? firstDay = DateTime.tryParse(calenderData.minDate ?? '');
          DateTime? lastDay = DateTime.tryParse(calenderData.maxDate ?? '');

          return Stack(
            alignment: Alignment.topCenter,
            children: [
              Directionality(
                textDirection: TextDirection.rtl,
                child: Dialog(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(height: 50),
                      Text('اختيار تاريخ اول زيارة',
                          style: TextStyles.semiBold18),
                      const SizedBox(height: 20),
                      TableCalendar(
                        firstDay: firstDay ?? DateTime.now(),
                        lastDay: lastDay ??
                            DateTime.now().add(const Duration(days: 365)),
                        focusedDay: _focusedDay,
                        selectedDayPredicate: (day) {
                          return isSameDay(_selectedDay, day);
                        },
                        onDaySelected: (selectedDay, focusedDay) {
                          setState(() {
                            _selectedDay = selectedDay;
                            _focusedDay = focusedDay;
                          });

                          Navigator.pushNamed(
                            context,
                            ContractDataView.routeName,
                            arguments: {
                              'promotionCode': widget.promotionCode,
                              'promotionCodeDescription':
                                  widget.promotionCodeDescription,
                              'selectedDate': _selectedDay,
                            },
                          );
                        },
                        enabledDayPredicate: (day) {
                          return day.isAfter(DateTime.now()
                                  .subtract(const Duration(days: 1))) &&
                              day.weekday != DateTime.friday;
                        },
                        calendarFormat: CalendarFormat.month,
                        startingDayOfWeek: StartingDayOfWeek.saturday,
                        headerStyle: const HeaderStyle(
                          formatButtonVisible: false,
                          titleCentered: true,
                        ),
                        calendarStyle: const CalendarStyle(
                          selectedDecoration: BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle,
                          ),
                          todayDecoration: BoxDecoration(
                            color: Colors.grey,
                            shape: BoxShape.circle,
                          ),
                          disabledTextStyle: TextStyle(color: Colors.red),
                        ),
                      ),
                      const SizedBox(height: 20),
                      CustomButtonInAddNewAddrease(
                        alignment: Alignment.centerRight,
                        colorBackGround: Colors.black,
                        tixtInButton: Center(
                          child: Text(
                            'التالي',
                            style: TextStyles.regular18
                                .copyWith(color: Colors.white),
                          ),
                        ),
                        width: 108,
                        height: 47,
                        colorBorder: const Color(0xff000000),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      const SizedBox(height: 30),
                    ],
                  ),
                ),
              ),
            ],
          );
        } else {
          return Container();
        }
      },
    );
  }
}
