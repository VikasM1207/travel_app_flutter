import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../misc/colors.dart';
import '../widgets/app_bold.dart';
import '../widgets/app_normal.dart';
import '../widgets/responsive_button.dart';
import '../cubit/app_cubits.dart';

class WelcomePage extends StatefulWidget {
    const WelcomePage({Key? key}) : super(key: key);

    @override
    _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {

    List images = [
        "welcome-one.png",
        "welcome-two.png",
        "welcome-three.png"
    ];
    
    @override
    Widget build(BuildContext context) {
        
        return Scaffold(
            body: PageView.builder(
                itemCount: images.length,
                itemBuilder: (_, index) {
                    return Container(
                        width: double.maxFinite,
                        height: double.maxFinite,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("img/" + images[index]),
                                fit: BoxFit.cover,
                            ),
                        ),
                        child: Container(
                            margin: EdgeInsets.only(top: 150, left: 20, right: 20),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget> [
                                    Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget> [
                                            AppBoldText(
                                                text: "Trips",
                                            ),
                                            AppNormalText(
                                                text: "Mountain",
                                                size: 30,
                                            ),
                                            SizedBox(
                                                height: 20,
                                            ),
                                            Container(
                                                width: 250,
                                                child: AppNormalText(
                                                    text: "Mountain hikes give you an incredible sense of freedom along with endurance tests ",
                                                    size: 18,
                                                ),
                                            ),
                                            SizedBox(
                                                height: 40,
                                            ),
                                            GestureDetector(
                                                onTap: (){
                                                    BlocProvider.of<AppCubits>(context).getData();
                                                },
                                                child: Container(
                                                    width: 200,
                                                    child: Row(
                                                        children: <Widget> [
                                                            ResponsiveButton()
                                                        ],
                                                    ),
                                                ),
                                            ),
                                        ],
                                    ),
                                    Column(
                                        children: List.generate(images.length, (indexChecker) {
                                            return Container(
                                                margin: EdgeInsets.only(bottom: 2),
                                                width: 8,
                                                height: index == indexChecker ? 25 : 8,
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(8),
                                                    color: index == indexChecker ? AppColors.mainColor : AppColors.mainColor.withOpacity(0.3),
                                                ),
                                            );
                                        })
                                    ),
                                ],
                            ),
                        ),
                    );
                },
                scrollDirection: Axis.vertical,
            ),
        );
    }
}