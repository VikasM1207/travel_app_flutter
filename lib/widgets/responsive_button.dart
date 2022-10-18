import 'package:flutter/material.dart';
import '../misc/colors.dart';
import 'app_normal.dart';

class ResponsiveButton extends StatelessWidget {

    bool? isResponsive;
    double? width;

    ResponsiveButton({Key? key,
    this.isResponsive = false,
    this.width = 120}) : super(key: key);

    @override
    Widget build(BuildContext context) {

        return Flexible(
            child: Container(
                width: isResponsive == true ? double.maxFinite : width,
                height: 64,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.mainColor,
                ),
                child: Row(
                    mainAxisAlignment: isResponsive == true ? MainAxisAlignment.spaceBetween : MainAxisAlignment.center,
                    children: <Widget> [
                        isResponsive == true ? 
                                    Container(
                                        margin: EdgeInsets.only(left: 25),
                                        child: AppNormalText(
                                            text: "Book Trip Now",
                                            color: Colors.white,
                                        )
                                    ) : 
                                    Container(),

                        Image.asset("img/button-one.png"),
                    ],
                ),
            ),
        );
    }
}