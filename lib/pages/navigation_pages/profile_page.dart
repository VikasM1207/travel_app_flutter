import 'package:flutter/material.dart';
import '../../widgets/app_bold.dart';
import '../../widgets/app_normal.dart';
import '../../widgets/profile_page_widget.dart';

class ProfilePage extends StatelessWidget {

    ProfilePage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        
        return Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 50),
            child: Column(
                children: <Widget> [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget> [
                            Icon(
                                Icons.menu,
                                size: 30,
                                color: Colors.black,
                            ),
                            Icon(
                                Icons.doorbell_sharp,
                                size: 30,
                                color: Colors.black,
                            ),
                        ],
                    ),
                    SizedBox(
                        height: 30,
                    ),
                    Container(
                        padding: EdgeInsets.all(16),
                        height: 150,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget> [
                                AppBoldText(
                                    text: "Your Profile",
                                    size: 26,
                                ),
                                SizedBox(
                                    height: 8
                                ),
                                AppNormalText(
                                    text: "Log in or sign up to view your complete profile",
                                    size: 14
                                ),
                                SizedBox(
                                    height: 24
                                ),
                                Container(
                                    height: 40,
                                    child: Center(
                                        child: AppNormalText(
                                            text: "Sign Up or Log In",
                                            color: Colors.black,
                                        ),
                                    ),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.black,
                                            width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(4),
                                    ),
                                ),
                            ],
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                        ),
                    ),
                    SizedBox(
                        height: 30,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget> [
                            ProfilePageButton(
                                icon: Icons.favorite_border,
                                text: "Likes",
                                isWidget: true,
                            ),
                            ProfilePageButton(
                                icon: Icons.payment_outlined,
                                text: "Payments",
                                isWidget: true,
                            ),
                            ProfilePageButton(
                                icon: Icons.settings,
                                text: "Settings",
                                isWidget: true,
                            ),
                        ],
                    ),
                    SizedBox(
                        height: 30,
                    ),
                    Container(
                        height: 200,
                        padding: EdgeInsets.only(top: 20),
                        child: Column(
                            children: <Widget> [
                                ProfilePageButton(
                                    icon: Icons.info_outline,
                                    text: "About",
                                    isWidget: false,
                                ),
                                Divider(
                                    indent: 50,
                                    color: Colors.black,
                                ),
                                ProfilePageButton(
                                    icon: Icons.feedback_outlined,
                                    text: "Feedback",
                                    isWidget: false,
                                ),
                                Divider(
                                    indent: 50,
                                    color: Colors.black,
                                ),
                                ProfilePageButton(
                                    icon: Icons.report,
                                    text: "Report a problem",
                                    isWidget: false,
                                ),
                                Divider(
                                    indent: 50,
                                    color: Colors.black,
                                ),
                                ProfilePageButton(
                                    icon: Icons.logout,
                                    text: "Logout",
                                    isWidget: false,
                                ),
                            ],
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                        ),
                    ),
                ],
            ),
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1),
            ),
        );
    }
}