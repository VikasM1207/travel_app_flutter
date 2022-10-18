import 'package:flutter/material.dart';
import '../misc/colors.dart';
import 'app_normal.dart';

class AppButton extends StatelessWidget {
    Color color;
    Color backgroundColor;
    Color borderColor;
    double size;
    String? text;
    IconData? icon;
    bool? isIcon;

    AppButton({Key? key,
    required this.color,
    required this.backgroundColor,
    required this.borderColor,
    required this.size,
    this.text,
    this.icon,
    this.isIcon = false}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Container(
            width: size,
            height: size,
            decoration: BoxDecoration(
                border: Border.all(
                    color: borderColor,
                ),
                borderRadius: BorderRadius.circular(15),
                color: backgroundColor,
            ),
            child: isIcon == false ?
                        Center(
                            child: AppNormalText(
                                text: text!,
                                color: color,
                            ),
                        )          :
                        Center(
                            child: Icon(
                                icon,
                                color: color,
                            ),
                        ),
        );
    }
}