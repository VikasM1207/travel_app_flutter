import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {

    SearchPage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        
        return Container(
            child: Container(
                padding: EdgeInsets.only(left: 20, right: 20, top: 50),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget> [
                        SizedBox(
                            height: 20,
                        ),
                        TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Try Searching Hill Stations, Beaches....',
                                suffixIcon: Icon(
                                    Icons.search
                                ),
                                fillColor: Colors.white,
                                filled: true,
                            ),
                        ),
                    ],
                ),
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.1),
                ),
            ),
        );
    }
}