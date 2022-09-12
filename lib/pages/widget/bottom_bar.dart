import 'package:flutter/material.dart';

import 'bottom_bar_column.dart';
import 'info_text.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key? key,
  }) : super(key: key);
  static const Color gradientStartColor = Color(0xff11998e);
  static const Color gradientEndColor = Color(0xff0575E6);
  @override
  Widget build(BuildContext context) {
    return Container(
        // ignore: prefer_const_constructors
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(0.0)),
          boxShadow: const <BoxShadow>[
            BoxShadow(
              color: gradientStartColor,
              offset: Offset(1.0, 6.0),
              blurRadius: 1.0,
            ),
            BoxShadow(
              color: gradientEndColor,
              offset: Offset(1.0, 6.0),
              blurRadius: 1.0,
            ),
          ],
          // ignore: prefer_const_constructors
          gradient: LinearGradient(
              colors: const [
                gradientStartColor,
                gradientEndColor
              ],
              begin: const FractionalOffset(0.2, 0.2),
              end: const FractionalOffset(1.0, 1.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp),
        ),
      padding: const EdgeInsets.all(30),
      //color: Colors.blueGrey[900],
      child: Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    BottomBarColumn(
                      heading: 'ABOUT',
                      s1: 'Contact Us',
                      s2: 'About Us',
                      s3: 'Careers',
                    ),
                    BottomBarColumn(
                  heading: 'HELP',
                 s1: 'Payment',
                 s2: 'Cancellation',
                 s3: 'FAQ',
                ),
                BottomBarColumn(
                heading: 'SOCIAL',
                s1: 'Linked-In',
                s2: 'Github/anjesh-shni',
                s3: 'Facebook',
              ),
                    Container(
                      color: Colors.white,
                      width: 2,
                      height: 150,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InfoText(
                          type: 'Email',
                          text: 'anjeshshni1@gmail.com',
                        ),
                        const SizedBox(height: 5),
                        InfoText(
                          type: 'Address',
                          text: 'Aakasedhara, Budhanilkanth-9, Kathmandu',
                        )
                      ],
                    ),
                  ],
                ),
                const Divider(
                  color: Colors.white,
                ),
                const SizedBox(height: 20),
                const Text(
                  'Copyright © 2022 | Anjesh',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
    );
  }
}
