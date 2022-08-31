import 'dart:ui';

import 'package:cu_hub/Models/message_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MessageWidget extends StatelessWidget {
  final MessageModel message;

  const MessageWidget({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40.w, vertical: 10.h),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 108, 107, 107).withOpacity(0.3),
        borderRadius: BorderRadius.all(Radius.circular(20.r)),
      ),
      child: buildBlur(
        sigmaX: 7,
        sigmaY: 7,
        borderRadius: BorderRadius.circular(20.r),
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 200.w,
                      child: Text(
                        overflow: TextOverflow.ellipsis,
                        message.senderName,
                        style: TextStyle(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 100.w,
                      child: Text(
                        overflow: TextOverflow.ellipsis,
                        message.senderDesignation,
                        style: TextStyle(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.grey,
                height: 8.h,
                thickness: 0.8,
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10.w, right: 5.w),
                    child: Text(
                      'Subject:',
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 240.w,
                    child: Text(
                      overflow: TextOverflow.ellipsis,
                      message.subject,
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                // color: Colors.amber.withOpacity(0.5),
                // height: 200.h,
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                child: Text(message.message, style: TextStyle(fontSize: 20.sp)),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildBlur({
    required Widget child,
    double sigmaX = 0,
    double sigmaY = 0,
    required BorderRadius borderRadius,
  }) {
    return ClipRRect(
      borderRadius: borderRadius,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: sigmaX, sigmaY: sigmaY),
        child: child,
      ),
    );
  }
}
