import 'package:flutter/material.dart';
import 'app_normal.dart';

class ProfilePageButton extends StatelessWidget {
    IconData icon;
    String text;
    bool isWidget;

    ProfilePageButton({Key? key,
    required this.icon,
    required this.text,
    required this.isWidget}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Container(
            padding: isWidget == true ? EdgeInsets.all(0) : EdgeInsets.only(left: 10),
            height: isWidget == true ? 80 : 30,
            width: isWidget == true ? 100 : double.maxFinite,
            child: isWidget == true ? Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget> [
                    Icon(
                        icon,
                        color: Colors.black,
                    ),
                    AppNormalText(
                        text: text,
                        color: Colors.black,
                        size: 12,
                    ),
                ],
            ) : Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget> [
                    Icon(
                        icon,
                        color: Colors.black,
                    ),
                    SizedBox(
                        width: 20,
                    ),
                    AppNormalText(
                        text: text,
                        color: Colors.black,
                        size: 16
                    ),
                ],
            ),
            decoration: isWidget == true ? BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
            ) : BoxDecoration(

            ),
        );
    }
}