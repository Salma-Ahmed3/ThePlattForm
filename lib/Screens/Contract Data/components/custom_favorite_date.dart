import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/Screens/Choose%20the%20package%20Individual%20Service/components/custom_container_nationality.dart';
import 'package:nowproject/utility/app_text_style.dart';

class CustomFavorteDate extends StatefulWidget {
  final DateTime selectedDate;

  const CustomFavorteDate({super.key, required this.selectedDate});

  @override
  State<CustomFavorteDate> createState() => _CustomFavorteDateState();
}

class _CustomFavorteDateState extends State<CustomFavorteDate> {
  DateTime? _selectedDate;
  bool _isDaySelected = true;

  @override
  void initState() {
    super.initState();
    _selectedDate = widget.selectedDate;
  }

  List<DateTime> _getDaysToDisplay() {
    List<DateTime> days = [];
    days.add(widget.selectedDate);
    for (int i = 1; i <= 5; i++) {
      days.add(widget.selectedDate.add(Duration(days: i)));
    }
    return days;
  }

  @override
  Widget build(BuildContext context) {
    final daysOfWeek = [
      'السبت',
      'الأحد',
      'الاثنين',
      'الثلاثاء',
      'الأربعاء',
      'الخميس',
      'الجمعة'
    ];

    final daysToDisplay = _getDaysToDisplay();

    return Stack(
      children: [
        CustomContainerNationality(
          titleText: 'الأيام المفضله *',
          widthContainer: 110.w,
          height: 119,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 18),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  for (var i = 0; i < 3; i++)
                    _buildDayContainer(
                      daysOfWeek[daysToDisplay[i].weekday % 7],
                      daysToDisplay[i],
                      isSelected: daysToDisplay[i] == _selectedDate,
                    ),
                ],
              ),
              SizedBox(height: 5.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  for (var i = 3; i < 6; i++)
                    _buildDayContainer(
                      daysOfWeek[daysToDisplay[i].weekday % 7],
                      daysToDisplay[i],
                      isSelected: daysToDisplay[i] == _selectedDate,
                    ),
                ],
              ),
              const SizedBox(
                height: 6,
              ),
              if (_selectedDate == null)
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    'الرجاء اختيار الايام المفضله كامله',
                    style: TextStyles.regular12.copyWith(color: Colors.red),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildDayContainer(String dayOfWeek, DateTime date,
      {bool isSelected = false}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (_selectedDate == date && _isDaySelected) {
            _selectedDate = null;
            _isDaySelected = false;
          } else if (_selectedDate == null && !_isDaySelected) {
            if (date == widget.selectedDate) {
              _selectedDate = date;
              _isDaySelected = true;
            }
          }
        });
      },
      child: Column(
        children: [
          Container(
            width: 90.w,
            height: 40.h,
            decoration: BoxDecoration(
              color: isSelected ? Colors.black : const Color(0xffD6D6D6),
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Center(
              child: Text(
                '$dayOfWeek\n${date.toLocal().toString().split(' ')[0]}',
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.bold,
                  color: isSelected ? Colors.white : Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
