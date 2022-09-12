import 'package:flutter/material.dart';
import 'package:web3/pages/home-page/floating_access.dart';
import 'package:web3/pages/home-page/topbar_content.dart';
import 'package:web3/pages/widget/bottom_bar.dart';
import 'package:web3/pages/widget/carousel.dart';
import 'package:web3/pages/widget/featured_heading.dart';
import 'package:web3/pages/widget/featured_tiles.dart';
import 'package:web3/pages/widget/main_heading.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController=ScrollController();
    double _scrollPosition=0;
    double _opacity =0;

    
    _scrollListener(){
      setState(() {
        _scrollPosition=_scrollController.position.pixels;
      });
    }

  @override
  void initState(){
       super.initState();
       _scrollController.addListener(_scrollListener);
       
  }

 
  @override
  Widget build(BuildContext context) {

    //Screen Dimernsion
    var screenSize = MediaQuery.of(context).size;
    _opacity =_scrollPosition < screenSize.height*0.40?
    _scrollPosition/(screenSize.height*0.40)
    :1;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        
        preferredSize: Size(screenSize.width,65),
        child: TopBarContent(opacity: _opacity,),
        ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  child: SizedBox(
                    height: screenSize.height * 0.65,
                    width:screenSize.width ,
                  child: Image.asset(
                    "assets/image/main.jpg",
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
                    SizedBox(height: screenSize.height/10,),
                    const BottomBar(),
                ],)
            
              ],
            ),
          ],
        ),
      ),
    );
  }
}