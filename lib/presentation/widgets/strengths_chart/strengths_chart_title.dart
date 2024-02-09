import 'package:flutter/material.dart';
import 'package:resume/utils/constants/colors.dart';
import 'package:resume/presentation/widgets/strengths_chart/strengths_text_styles.dart';

class StrengthsChartTitle extends StatelessWidget {
  const StrengthsChartTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.contain,
      child: Transform(
        transform: Matrix4.identity()
          ..translate(0.0, 0.0)
          ..rotateZ(-0.27),
        child: Container(
          width: 156.63,
          height: 82.39,
          decoration: const ShapeDecoration(
            color: Colores.blueGraphics,
            shape: OvalBorder(
              side: BorderSide(width: 5, color: Colores.orangeBorderGraphics),
            ),
          ),
          child: Center(
            child: Transform(
              transform: Matrix4.identity()
                ..translate(0.0, 0.0)
                ..rotateZ(-0.10),
              child: const Text('Strengths').strengthsTitleStyle(),
            ),
          ),
        ),
      ),
    );
  }
}
