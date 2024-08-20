import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/Feauters/Choose%20the%20package/Presentation/Views/widgets/custom_dialoge_personal.dart';
import 'package:nowproject/Feauters/Home/Presentation/Views/Widgets/test_page.dart';
import 'package:nowproject/Feauters/My%20Requests/Presentation/views/widgets/custom_container_in_my_request.dart';


class MyRequestsViewBody extends StatelessWidget {
  const MyRequestsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(height: 29),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomContainerInMyRequest(
                nameMyRequest: 'الأفراد',
                onTap: () {
                  Navigator.of(context).pushNamed(TestPage.routeName);
                },
              ),
              const SizedBox(width: 10),
              const CustomContainerInMyRequest(
                nameMyRequest: 'الساعات',
              ),
              const SizedBox(width: 10),
              const CustomContainerInMyRequest(
                nameMyRequest: 'الأعمال',
              ),
            ],
          ),
              const SizedBox(height: 23),

              const CustomDetailesInMyRequest(workerData: '', heightContainer: 53, textPackageDuration: '',)

        ],
      ),
    );
  }
}





class CustomDetailesInMyRequest extends StatefulWidget {
  const CustomDetailesInMyRequest({super.key, required this.workerData, required this.heightContainer, required this.textPackageDuration});
final String workerData;
final String textPackageDuration;
final double heightContainer;
  @override
  State<CustomDetailesInMyRequest> createState() =>
      _CustomDetailesInMyRequestState();
}

class _CustomDetailesInMyRequestState
    extends State<CustomDetailesInMyRequest> {
  bool isRectangleVisible = false;

  void toggleRectangleVisibility() {
    setState(() {
      isRectangleVisible = !isRectangleVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Container(
            width: 384,
            height: widget.heightContainer,
            decoration: BoxDecoration(
              color: const Color(0xffD6D6D6),
              borderRadius: isRectangleVisible
                  ? const BorderRadius.only(
                      topLeft: Radius.circular(14),
                      topRight: Radius.circular(14),
                    )
                  : BorderRadius.circular(14),
              border: Border.all(
                color: Colors.black,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 20.r,
                    backgroundColor: Colors.transparent,
                    child: IconButton(
                      onPressed: toggleRectangleVisibility,
                      icon: Icon(
                        isRectangleVisible ? Icons.remove : Icons.add,
                        color: Colors.black,
                      ),
                      
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (isRectangleVisible)
            GestureDetector(
              onTap: (){
                showDialog(
                context: context,
                builder: (BuildContext context) {
                  return const CustomDialogPersonal();
                },
              );
              },
              child: Container(
                width: 700,
                height: 260,
                decoration: BoxDecoration(
                  color: const Color(0xffF8F8F8),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(14),
                    bottomRight: Radius.circular(14),
                  ),
                  border: Border.all(
                    color: Colors.black,
                  ),
                ),
                // child: const CustomDetailesInChoosePackegeItem(),
              ),
            ),
        ],
      ),
    );
  }
}
