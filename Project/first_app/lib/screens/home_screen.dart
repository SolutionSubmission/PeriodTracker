import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding:const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                      children :[
                        Text(
                            "Good Morning",style: Styles.headlineStyle3,
                        ),
                        const Gap(10),
                        Text(
                            "Check on your health",style: Styles.headlineStyle1,
                        ),
                      ],

                    ),
                    Container(
                      height:50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  "assests/images/logo.png"
                              )
                          )
                      ),
                      //child: Image.asset("assests/images/logo.png"),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

