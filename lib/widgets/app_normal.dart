import 'package:flutter/material.dart';

class AppNormalText extends StatelessWidget {

    double size;
    String text;
    Color color;
    
    AppNormalText ({Key? key,
    this.size = 16,
    required this.text,
    this.color = Colors.black54}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        
        return Text(
            text,
            style: TextStyle(
                color: color,
                fontSize: size,
            ),
        ); 
    }
}