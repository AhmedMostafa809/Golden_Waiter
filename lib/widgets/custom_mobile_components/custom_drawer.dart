import 'package:flutter/material.dart';
import 'package:golden_waiter/app_constants/app_fonts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 70.w,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .33,
            child: DrawerHeader(
              padding: const EdgeInsets.all(0),
              child: Text(
                "Golden Waiter",
                style: GoogleFonts.montserratAlternates
                  (
                  color: Colors.black,
                  fontSize: getResponsiveFontSize( context, 20.sp),
                  fontWeight: FontWeight.w900,
                ),
              ),
          ),
          // CustomButton("Subscriptions".tr, () {
          //   Get.toNamed("/subscription");
          // }, AppAssets.subscription),
          // CustomButton("Terms and Conditions".tr, () {
          //   Get.toNamed("/vision");
          // }, AppAssets.vision),
          // CustomButton("Privacy policies".tr, () {
          //   Get.toNamed("/policy");
          // }, AppAssets.policy),
          // CustomButton("Settings".tr, () {
          //   Get.toNamed("/settings");
          // }, AppAssets.settings),
          // CustomButton("Share the app".tr, () {
          //   Share.share('Check out this awesome app',
          //       subject: 'Check out this app!');
          // }, AppAssets.share),
          ),

                      ],
                    ),
      ),

    );
  }
}