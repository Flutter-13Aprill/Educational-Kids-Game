import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project3/core/theme/app_palette.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 378.w,
      height: 69.h,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      decoration: BoxDecoration(
        color: AppPalette.backgroundColor,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(color: Colors.grey.shade300, width: 3),
      ),
      child: Row(
        children: [
          Image.asset("asset/image/🎊.png", width: 30.w, height: 30.h),
          SizedBox(width: 12.w),
          Expanded(
            child: Text(
              'Friends updates',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16.sp,
                color: Colors.black,
              ),
            ),
          ),
          Icon(Icons.arrow_forward_ios, size: 18.sp, color: Colors.grey),
        ],
      ),
    );
  }
}
