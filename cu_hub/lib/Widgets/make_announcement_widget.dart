import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MakeAnnouncementWidget extends StatefulWidget {
  final ValueChanged<bool> onShowAnnouncement;

  MakeAnnouncementWidget({required this.onShowAnnouncement});

  @override
  State<MakeAnnouncementWidget> createState() => _MakeAnnouncementStateWidget();
}

class _MakeAnnouncementStateWidget extends State<MakeAnnouncementWidget> {
  String name = 'NameXYZ';
  String subject = 'New Time Table';
  String designation = 'Desgnation';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.w),
        // height: 380.h,
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 56, 56, 70),
          borderRadius: BorderRadius.all(Radius.circular(20.r)),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.r, vertical: 10.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () => widget.onShowAnnouncement(false),
                    child: Icon(
                      Icons.cancel,
                      size: 30.sp,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Divider(
                color: Colors.white,
                height: 20.h,
                thickness: 0.8,
              ),
              // SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    designation,
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8.h),
              Row(
                children: [
                  Text(
                    'Subject: ',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Expanded(
                    child: TextField(
                      autofocus: true,
                      style: TextStyle(color: Colors.white),
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Type...',
                        hintStyle: TextStyle(color: Colors.white60),
                      ),
                    ),
                  ),
                ],
              ),
              ConstrainedBox(
                constraints: BoxConstraints(maxHeight: 180.h),
                child: const TextField(
                  keyboardType: TextInputType.multiline,
                  maxLines: 11, //(screenSize.height * 0.009).toInt(),
                  style: TextStyle(color: Colors.white),
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Type...',
                    hintStyle: TextStyle(color: Colors.white60),
                  ),
                ),
              ),
              Divider(
                color: Colors.white,
                height: 5.h,
                thickness: 0.8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () => widget.onShowAnnouncement(false),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
                      child: Icon(
                        Icons.send,
                        size: 40.r,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
