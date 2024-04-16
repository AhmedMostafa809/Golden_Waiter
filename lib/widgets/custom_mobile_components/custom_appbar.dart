import 'package:flutter/material.dart';
import 'package:golden_waiter/app_constants/app_fonts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key,});

  // final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 14.w,
      // leading: IconButton(
      //   icon: Icon(
      //     Icons.menu,
      //     size: 7.w,
      //   ),
      //   onPressed: () {
      //     scaffoldKey.currentState!.openDrawer();
      //   },
      // ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      title: Text(
        "Golden Waiter",
        style: GoogleFonts.montserratAlternates(
          color: Colors.black,
          fontSize: getResponsiveFontSize(context, 20.sp),
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(14.w);
}
