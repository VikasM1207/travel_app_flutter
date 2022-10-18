import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../widgets/app_bold.dart';
import '../widgets/app_normal.dart';
import '../widgets/app_buttons.dart';
import '../widgets/responsive_button.dart';
import '../misc/colors.dart';
import '../cubit/app_cubits.dart';
import '../cubit/app_cubit_states.dart';

class DetailPage extends StatefulWidget {
    DetailPage({Key? key}) : super(key: key);

    @override
    _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {

    int stars = 4;
    int selectedIndex = -1;

    @override
    Widget build(BuildContext context) {
        return BlocBuilder<AppCubits, CubitStates>(
            builder: (context, state) {
                DetailState detail = state as DetailState;
                return Scaffold(
                    body: Container(
                        width: double.maxFinite,
                        height: double.maxFinite,
                        child: Stack(
                            children: <Widget> [
                                Positioned(
                                    left: 0,
                                    right: 0,
                                    child: Container(
                                        width: double.maxFinite,
                                        height: 350,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: NetworkImage("http://mark.bslmeiyu.com/uploads/" + detail.place.img),
                                                fit: BoxFit.cover,
                                            ),
                                        ),
                                    ),
                                ),
                                Positioned(
                                    left: 20,
                                    top: 50,
                                    child: Row(
                                        children: <Widget> [
                                            IconButton(
                                                onPressed: (){
                                                    BlocProvider.of<AppCubits>(context).goHome();
                                                },
                                                icon: Icon(Icons.arrow_back),
                                                color: Colors.white,
                                            ),
                                        ],
                                    ),
                                ),
                                Positioned(
                                    top: 320,
                                    child: Container(
                                        padding: EdgeInsets.only(left: 20, right: 20, top: 30),
                                        width: MediaQuery.of(context).size.width,
                                        height: MediaQuery.of(context).size.height,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(30),
                                                topRight: Radius.circular(30),
                                            ),
                                        ),
                                        child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget> [
                                                Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: <Widget> [
                                                        AppBoldText(
                                                            text: detail.place.name,
                                                            color: Colors.black.withOpacity(0.8)
                                                        ),
                                                        AppBoldText(
                                                            text: "\$" + detail.place.price.toString(),
                                                            color: AppColors.mainColor
                                                        ),
                                                    ],
                                                ),
                                                SizedBox(
                                                    height: 10,
                                                ),
                                                Row(
                                                    children: <Widget> [
                                                        Icon(
                                                            Icons.location_on,
                                                            color: AppColors.mainColor,
                                                        ),
                                                        SizedBox(
                                                            width: 5,
                                                        ),
                                                        AppNormalText(
                                                            text: detail.place.location,
                                                            color: AppColors.mainColor
                                                        ),
                                                    ],
                                                ),
                                                SizedBox(
                                                    height: 15,
                                                ),
                                                Row(
                                                    children: <Widget> [
                                                        Wrap(
                                                            children: List.generate(5, (index){
                                                                return Icon(
                                                                    Icons.star,
                                                                    color: index < detail.place.stars ? AppColors.starColor : AppColors.textColor1,
                                                                );
                                                            })
                                                        ),
                                                        SizedBox(
                                                            width: 5,
                                                        ),
                                                        AppNormalText(
                                                            text: "(5.0)",
                                                            color: AppColors.textColor1
                                                        ),
                                                    ],
                                                ),
                                                SizedBox(
                                                    height: 25,
                                                ),
                                                AppBoldText(
                                                    text: "People",
                                                    color: Colors.black.withOpacity(0.8),
                                                    size: 25
                                                ),
                                                SizedBox(
                                                    height: 5,
                                                ),
                                                AppNormalText(
                                                    text: "Number of people in your group",
                                                    color: AppColors.mainTextColor
                                                ),
                                                SizedBox(
                                                    height: 10,
                                                ),
                                                Wrap(
                                                    children: List.generate(5, (index){
                                                        return InkWell(
                                                            onTap: (){
                                                                setState(() {
                                                                    selectedIndex = index;
                                                                });
                                                            },
                                                            child: Container(
                                                                margin: EdgeInsets.only(right: 10),
                                                                child: AppButton(
                                                                    size: 50,
                                                                    color: selectedIndex == index ? Colors.white : Colors.black,
                                                                    backgroundColor: selectedIndex == index ? Colors.black : AppColors.buttonBackground,
                                                                    borderColor: selectedIndex == index ? Colors.black : AppColors.buttonBackground,
                                                                    text: (index + 1).toString(),
                                                                )
                                                            )
                                                        );
                                                    }),
                                                ),
                                                SizedBox(
                                                    height: 25,
                                                ),
                                                AppBoldText(
                                                    text: "Description",
                                                    color: Colors.black.withOpacity(0.8),
                                                    size: 25
                                                ),
                                                SizedBox(
                                                    height: 5,
                                                ),
                                                AppNormalText(
                                                    text: detail.place.description,
                                                    color: AppColors.mainTextColor,
                                                ),
                                            ],
                                        ),
                                    ),
                                ),
                                Positioned(
                                    left: 20,
                                    bottom: 20,
                                    right: 20,
                                    child: Row(
                                        children: <Widget> [
                                            AppButton(
                                                size: 64,
                                                color: AppColors.textColor1,
                                                backgroundColor: Colors.white,
                                                borderColor: AppColors.textColor1,
                                                isIcon: true,
                                                icon: Icons.favorite_border,
                                            ),
                                            SizedBox(
                                                width: 20,
                                            ),
                                            ResponsiveButton(
                                                isResponsive: true,
                                            ),
                                        ],
                                    ),
                                ),
                            ],
                        ),
                    ),
                );
            },
        );
    }
}