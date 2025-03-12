import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopywell/utils/app_colors.dart';

class SocialMeadiaIconWidget extends StatefulWidget {
  const SocialMeadiaIconWidget({super.key});

  @override
  State<SocialMeadiaIconWidget> createState() => _SocialMediaButtonsState();
}

class _SocialMediaButtonsState extends State<SocialMeadiaIconWidget> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double iconSize = screenWidth * 0.16;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildSocialButton("assets/images/icons/google.svg", iconSize),
        SizedBox(width: screenWidth * 0.05),
        _buildSocialButton("assets/images/icons/apple.svg", iconSize),
        SizedBox(width: screenWidth * 0.05),
        _buildSocialButton("assets/images/icons/facebook.svg", iconSize),
      ],
    );
  }

  Widget _buildSocialButton(String assetName, double size) {
    return Container(
      width: size,
      height: size,
      padding: EdgeInsets.all(size * 0.2),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: AppColors.red, width: 2),
        color: AppColors.light_red, // Background color
      ),
      child: Center(
        child: SvgPicture.asset(
          assetName,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
