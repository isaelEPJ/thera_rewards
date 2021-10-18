import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thera_rewards/shared/themes/app_colors.dart';

class AppTextStyles {
  static final titleHome = GoogleFonts.roboto(
    fontSize: 30,
    fontWeight: FontWeight.w500,
    color: AppColors.primary,
  );
  static final titleBackGround = GoogleFonts.roboto(
    fontSize: 22,
    fontWeight: FontWeight.w500,
    color: AppColors.whitePrimary,
  );

  static final titleListTile = GoogleFonts.roboto(
    fontSize: 17,
    fontWeight: FontWeight.w600,
    color: AppColors.grayPrimary,
  );
  static final normalTextPrimary = GoogleFonts.roboto(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: AppColors.primary,
  );
  static final normalTextBlack = GoogleFonts.roboto(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: AppColors.black,
  );
  static final normalTextSecoundary = GoogleFonts.roboto(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: AppColors.graySecoundary,
  );
  static final normalTextBackground = GoogleFonts.roboto(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: AppColors.whitePrimary,
  );
}
