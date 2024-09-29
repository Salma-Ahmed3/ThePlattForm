import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nowproject/utility/app_images.dart';

class CustomPhoto extends StatefulWidget {
  final double imageWidth;

  const CustomPhoto({super.key, required this.imageWidth});

  @override
  _CustomPhotoState createState() => _CustomPhotoState();
}

class _CustomPhotoState extends State<CustomPhoto> {
  late ScrollController _scrollController;
  late Timer _timer;
  double _scrollSpeed = 4.0;
  bool _isPaused = false;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _startScrolling(); 
  }
  Future<void> _startScrolling() async {
    _timer = Timer.periodic(const Duration(milliseconds: 50), (timer) async {
      if (_scrollController.hasClients && !_isPaused) {
        _scrollController.animateTo(
          _scrollController.offset + _scrollSpeed,
          duration: const Duration(milliseconds: 50),
          curve: Curves.linear,
        );
        if (_scrollController.offset >= _scrollController.position.maxScrollExtent) {
          _scrollController.jumpTo(0); 
          await _pauseScrolling(); 
        }
      }
    });
  }
  Future<void> _pauseScrolling() async {
    setState(() {
      _isPaused = true; 
    });
    await Future.delayed(const Duration(seconds: 4)); 
    setState(() {
      _isPaused = false; 
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.imageWidth, 
      height: 189.h,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        controller: _scrollController,
        child: Row(
          children: [
            _buildImage(Assets.imagesCleaning),
            const SizedBox(width: 10),
            _buildImage(Assets.imagesCleaning), 
          ],
        ),
      ),
    );
  }

  Widget _buildImage(String imagePath) {
    return Container(
      width: widget.imageWidth,
      height: 189.h,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
