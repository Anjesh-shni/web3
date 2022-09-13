import 'package:flutter/material.dart';
import 'package:web3/pages/home-page/floating_access.dart';
import 'package:web3/pages/home-page/topbar_content.dart';
import 'package:web3/pages/widget/bottom_bar.dart';
import 'package:web3/pages/widget/carousel.dart';
import 'package:web3/pages/widget/featured_heading.dart';
import 'package:web3/pages/widget/featured_tiles.dart';
import 'package:web3/pages/widget/main_heading.dart';
import 'package:web3/pages/widget/menu_drawer.dart';

import '../widget/testimonial.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();
  double _scrollPosition = 0;
  double _opacity = 0;

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  @override
  Widget build(BuildContext context) {
    //Screen Dimernsion
    var screenSize = MediaQuery.of(context).size;
    _opacity = _scrollPosition < screenSize.height * 0.40
        ? _scrollPosition / (screenSize.height * 0.40)
        : 1;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: screenSize.width < 800
          ? AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              iconTheme: const IconThemeData(color: Colors.black),
              title: const Text(
                "WEB3",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.normal,
                  letterSpacing: 1,
                ),
              ),
            )
          : PreferredSize(
              preferredSize: Size(screenSize.width, 70),
              child: TopBarContent(
                opacity: _opacity,
              ),
            ),
      drawer: const MenuDrawer(),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  child: SizedBox(
                    height: screenSize.height * 0.65,
                    width: screenSize.width,
                    child: Image.asset(
                      "assets/image/web1.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  children: [
                    FloatingAcessBar(screenSize: screenSize),
                    FeaturedHeading(screenSize: screenSize),
                    FeaturedTiles(screenSize: screenSize),
                    MainHeading(screenSize: screenSize),
                    MainCarousel(),
                    const SizedBox(
                      height: 20,
                    ),
                    const Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                    Testimonial(
                      screenSize: screenSize,
                    ),
                    const SizedBox(height: 20),
                    const BottomBar(),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
