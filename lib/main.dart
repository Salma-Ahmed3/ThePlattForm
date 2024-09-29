import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/Screens/Home/home_view.dart';
import 'package:nowproject/cubit/Addrease/addrease_cubit.dart';
import 'package:nowproject/cubit/Hourly_Services/hourly_services_cubit.dart';
import 'package:nowproject/cubit/step/first_step_cubit.dart';
import 'package:nowproject/routes/on_generate_route.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<HourlyServicesCubit>(
          create: (context) =>
              HourlyServicesCubit()..fetchHourlyServices('hourly'),
        ),
        BlocProvider<FirstStepCubit>(
          create: (context) => FirstStepCubit(),
        ),
        BlocProvider<AddreaseCubit>(
          create: (context) => AddreaseCubit(),
        ),
      ],
      child: const PlattForm(),
    ),
  );
}

class PlattForm extends StatelessWidget {
  const PlattForm({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      splitScreenMode: true,
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          onGenerateRoute: onGenerateRoute,
          initialRoute: HomeView.routeName,
          // initialRoute: LoginView.routeName,
          theme: ThemeData(
            scaffoldBackgroundColor: Color(0xff2A7382),
            appBarTheme: const AppBarTheme(
              backgroundColor: Color(0xff2A7382),
              elevation: 10,
              iconTheme: IconThemeData(color: Colors.white),
              titleTextStyle: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        );
      },
    );
  }
}
