import 'package:flutter/material.dart';
import 'package:nowproject/Feauters/My%20Request%20Hours/Presentation/views/my_request_hourly_view.dart';
import 'package:nowproject/Feauters/My%20Requests/Presentation/views/my_requests_view.dart';
import 'package:nowproject/Feauters/My%20Requests/Presentation/views/widgets/custom_container_in_my_request.dart';
import 'package:nowproject/Feauters/My%20Requests/Presentation/views/widgets/custom_rectangle_in_my_request.dart';

class MyRequestHourlyViewBody extends StatefulWidget {
  const MyRequestHourlyViewBody({super.key});

  @override
  State<MyRequestHourlyViewBody> createState() => _MyRequestHourlyViewBodyState();
  
}

class _MyRequestHourlyViewBodyState extends State<MyRequestHourlyViewBody> {
  String? selectedRequest; 

  void _onRequestSelected(String requestName) {

   setState(() {
      selectedRequest = requestName; 
    });}
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 23),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 29),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomContainerInMyRequest(
                  nameMyRequest: 'الأفراد',
                  isSelected: selectedRequest == 'الأفراد',
                  onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => MyRequestsView()));
                    
                  },
                ),
                const SizedBox(width: 10),
                CustomContainerInMyRequest(
                  nameMyRequest: 'الساعات',
                  isSelected: selectedRequest == 'الساعات',
                  onTap: () {
                    _onRequestSelected('الساعات');
                    Navigator.of(context).pushNamed(MyRequestHourlyView.routeName);
                  },
                ),
                const SizedBox(width: 10),
                CustomContainerInMyRequest(
                  nameMyRequest: 'الأعمال',
                  isSelected: selectedRequest == 'الأعمال',
                  onTap: () {
                    _onRequestSelected('الأعمال');
                    
                    Navigator.of(context).pushNamed(MyRequestHourlyView.routeName);

                  },
                ),
              ],
            ),
            const SizedBox(height: 23),
            const CustomRectangleInMyRequest(heightContainer: 53, isLatest: true),
              ],
            ),
          )
        );
  }
}