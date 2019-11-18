import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netease_cloud_music/utils/utils.dart';

class OverImgWidget extends StatelessWidget {
  final String img;
  final double width;
  final BoxFit fit;

  OverImgWidget(this.img, this.width, {this.fit});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: img.startsWith('http')
          ? Utils.showNetImage(img,
              width: ScreenUtil().setWidth(width),
              height: ScreenUtil().setWidth(width),
              fit: fit)
          : Image.asset(img),
    );
  }
}
