import 'package:flutter/material.dart';
import 'package:nowproject/Feauters/My%20Request%20Hours/Presentation/views/my_request_hourly_view.dart';
import 'package:nowproject/Feauters/My%20Requests/Presentation/views/my_requests_view.dart';
import 'package:nowproject/Feauters/My%20Requests/Presentation/views/widgets/custom_container_in_my_request.dart';
import 'package:nowproject/Feauters/My%20Requests/Presentation/views/widgets/custom_rectangle_in_my_request.dart';

class MyRequestsViewBody extends StatefulWidget {
  const MyRequestsViewBody({super.key});

  @override
  _MyRequestsViewBodyState createState() => _MyRequestsViewBodyState();
}

class _MyRequestsViewBodyState extends State<MyRequestsViewBody> {
  String? selectedRequest; 

  void _onRequestSelected(String requestName) {
    setState(() {
      selectedRequest = requestName; 
    });
  }

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
                  onTap: () {
                    _onRequestSelected('الأفراد');
                   Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) {
                  return const MyRequestsView();
                } ));
                  },
                
                  nameMyRequest: 'الأفراد',
                  isSelected: selectedRequest == 'الأفراد',
                  
                ),
                const SizedBox(width: 10),
                CustomContainerInMyRequest(
                  nameMyRequest: 'الساعات',
                  isSelected: selectedRequest == 'الساعات',
                  onTap: () {
                    _onRequestSelected('الساعات');
                   Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) {
                  return const MyRequestHourlyView();
                }
                ));
                  },
                ),
                const SizedBox(width: 10),
                CustomContainerInMyRequest(
                  nameMyRequest: 'الأعمال',
                  isSelected: selectedRequest == 'الأعمال',
                   onTap: () {
                    _onRequestSelected('الأفراد');
                   Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) {
                  return const MyRequestsView();
                } ));
                  },
                ),
              ],
            ),
            const SizedBox(height: 23),
            const CustomRectangleInMyRequest(heightContainer: 53, isLatest: true),
            const SizedBox(height: 17),
            const CustomRectangleInMyRequest(heightContainer: 53, isLatest: false),
            const SizedBox(height: 17),
            const CustomRectangleInMyRequest(heightContainer: 53, isLatest: false),
            const SizedBox(height: 17),
          ],
        ),
      ),
    );
  }
}
