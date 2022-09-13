import 'package:flutter/material.dart';

class TopBarContent extends StatefulWidget {
  final double opacity;
  const TopBarContent({ Key? key, required this.opacity }) : super(key: key);

  @override
  State<TopBarContent> createState() => _TopBarContentState();
}

class _TopBarContentState extends State<TopBarContent> {
  final _isHovering=[
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;
    return  Container(
        color: Colors.grey.shade500,
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              
              Expanded(
                child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  
                 SizedBox(width: screensize.width/6),
                 Container(
                    height: 100,
                    width: 80,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage(
                            "assets/image/Web-3.png",
                          ),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                 const SizedBox(width: 2,),
                 const Text(
                  "WEB3",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize:25,
                   fontWeight: FontWeight.normal,
                   letterSpacing: 1,
                  ),
                ),
                 SizedBox(
                    width: screensize.width / 10,
                  ),
                  InkWell(
                    onHover: (value) {
                      setState(() {
                        value?_isHovering[0]=true
                        :_isHovering[0]=false;
                      });
                    },
                    onTap: (){},
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                      Text(
                        "Home"
                        ,style: TextStyle(
                          color: _isHovering[0]
                          ?Colors.white
                      : Colors.black,
                       fontSize: 16,
                      fontWeight: FontWeight.bold,
                      ),
                     ),
                     const SizedBox(height: 5,),
                     Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      visible: _isHovering[0],
                      child: 
                     Container(
                      height: 2,
                     width: 20,
                     color: Colors.black,
                     ),
                     ),
                    ],
                   ),
                  ),
                  
                  SizedBox(
                    width: screensize.width / 15,
                  ),
                  InkWell(
                    onHover: (value) {
                      setState(() {
                        value ? _isHovering[1] = true : _isHovering[1] = false;
                      });
                    },
                    onTap: () {},
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Content",
                          style: TextStyle(
                            color: _isHovering[1] ? Colors.white : Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Visibility(
                          maintainAnimation: true,
                          maintainState: true,
                          maintainSize: true,
                          visible: _isHovering[1],
                          child: Container(
                            height: 2,
                            width: 20,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: screensize.width / 15,
                  ),
                  InkWell(
                    onHover: (value) {
                      setState(() {
                        value ? _isHovering[2] = true : _isHovering[2] = false;
                      });
                    },
                    onTap: () {},
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "About Us",
                          style: TextStyle(
                            color: _isHovering[2] 
                            ? Colors.white : Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Visibility(
                          maintainAnimation: true,
                          maintainState: true,
                          maintainSize: true,
                          visible: _isHovering[2],
                          child: Container(
                            height: 2,
                            width: 20,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: screensize.width / 15,
                  ),
                  InkWell(
                    onHover: (value) {
                      setState(() {
                        value ? _isHovering[3] = true : _isHovering[3] = false;
                      });
                    },
                    onTap: () {},
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Contact",
                          style: TextStyle(
                            color: _isHovering[3] ? Colors.white : Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Visibility(
                          maintainAnimation: true,
                          maintainState: true,
                          maintainSize: true,
                          visible: _isHovering[3],
                          child: Container(
                            height: 2,
                            width: 20,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                 
    
                ],
              ),
            ),
          ],),
        ),
    );
  }
}