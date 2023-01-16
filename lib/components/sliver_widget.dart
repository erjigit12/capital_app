import 'package:country_app/utils/colors.dart';
import 'package:flutter/material.dart';

class SliderWidget extends StatelessWidget {
  const SliderWidget({
    Key? key,
    required this.value,
  }) : super(key: key);
  final int value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SliderTheme(
          data: SliderThemeData(
            overlayShape: SliderComponentShape.noOverlay,
            thumbShape: SliderComponentShape.noThumb,
          ),
          child: Slider(
            activeColor: AppColors.active,
            inactiveColor: AppColors.inActive,
            value: value.toDouble(),
            max: 10,
            onChanged: (value) {},
          )),
    );
  }
}
