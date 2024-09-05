import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nowproject/cubit/loading_cubit/loading_cubit.dart';
import 'package:nowproject/utility/app_images.dart';

class Loader extends StatelessWidget {
  final Loading loading;
  final Widget? loader;

  const Loader({super.key, required this.loading, this.loader});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Loading, LoadingState>(
      bloc: loading,
      builder: (context, state) {
        if (state is LoadingChange) {
          return state.loading!
              ? WillPopScope(
                  child: loader == null ? const LoaderItem() : loader!,
                  onWillPop: () async {
                    loading.hide;
                    return true;
                  },
                )
              : const SizedBox();
        } else {
          return const SizedBox();
        }
      },
    );
  }
}

class LoaderItem extends StatelessWidget {
  const LoaderItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 100,
        width: 100,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(10),
        ),
        child:  Center(
          child: SizedBox(
            height: 80,
            width: 80,
            child:
            Image.asset(Assets.imagesclockloader),
            /*CircularProgressIndicator(
              color: AppColors.mainColor,
              backgroundColor: Colors.grey.shade200,
            ),*/
          ),
        ),
      ),
    );
    //  return Container(
    //   decoration: BoxDecoration(
    //     color: Colors.black.withOpacity(.02),
    //   ),
    //   child: Center(
    //     child: /* Image.asset(
    //     AppImage.loading,
    //     width: 55.sp,
    //     height: 55.sp,
    //   )*/
    //         CircularProgressIndicator.adaptive(
    //       strokeWidth: 6.w,
    //       backgroundColor: AppColors.appPrimaryColor,
    //       valueColor: const AlwaysStoppedAnimation<Color>(AppColors.white),
    //     ),
    //   ),
    // );
  }
}
