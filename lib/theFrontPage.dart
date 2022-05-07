import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import 'featuresBook.dart';



class TheFrontPage extends StatelessWidget {
  const TheFrontPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   backgroundColor: const Color(0xFF0096D6),
      //   leading: IconButton(icon: const Icon(Icons.arrow_back),
      //     onPressed: () {
      //       Navigator.pop(context);
      //     },),
      //   title: const Text('Welcome',
      //     style: TextStyle(
      //       fontFamily: 'Gilroy',
      //     ),
      //
      //   ),
      //   centerTitle: true,
      //   actions: [
      //     Hero(
      //       tag: 'theLogo',
      //       child: Container(
      //         height: 100.0,
      //         width: 100.0,
      //         child: Image.asset('image/HP_White_RGB.png'),
      //       ),
      //     ),
      //
      //   ],
      // ),
      body:

      SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.all(20.0),
          children:  [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,

              children:  [
                SizedBox(height: 90.0),
                Hero(
                  tag: 'theLogo',
                  child: Image.asset('image/HP_Blue_RGB.png',
                    height: 180.0,
                    width: 180.0,
                  ),
                ),
                Text('Make Life Better',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20.0,
                    fontFamily: 'Gilroy',
                  ),
                ),
                SizedBox(height: 20.0),
                Text('At HP, we pride ourselves on customer obsession and ensuring we provide the best solutions for our customers amidst the current competitive PC market.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'GilroyLite',
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 30.0),
                Text('For our customer obsession goal we created ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'GilroyLite',
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 15.0,),
                SizedBox(
                  width: 250.0,
                  child:DefaultTextStyle(style: TextStyle(
                    fontFamily: 'Gilroy',
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,

                  ),
                    child:AnimatedTextKit(
                    animatedTexts: [TypewriterAnimatedText('"Elite Lounge"',
                    textAlign: TextAlign.center,
                    ),

                    ],
                  ),
                ),
                ),
                SizedBox(height: 70.0),
                //
                // ClipRRect(
                //   borderRadius: BorderRadius.circular(10.0),
                //   child: SizedBox(
                //     height: 60.0,
                //     width: 240.0,
                //     child: Stack(
                //       children: [
                //         Positioned.fill(
                //           child: Container(
                //             decoration: const BoxDecoration(
                //               shape: BoxShape.rectangle,
                //               gradient: LinearGradient(
                //                 colors: <Color>[
                //                   Color(0xFF5ECD7B),
                //                   Color(0xFFEF8D72),
                //                   Color(0xFF0096D6),
                //                   Color(0xFFED6EB8),
                //                   Color(0xFFAA5BED),
                //                 ],
                //               ),
                //             ),
                //           ),
                //         ),
                //         TextButton(onPressed: (){
                //           Navigator.push(context, MaterialPageRoute(builder: (context)=>FeatureBook()));
                //         },
                //           child: Row(
                //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //             children: [
                //               Icon(
                //                 Icons.arrow_forward,
                //                 size: 40.0,
                //                 color: Colors.white,
                //               ),
                //               Text('Enter Elite Lounge',
                //                 style:TextStyle(
                //                   fontFamily: 'Gilroy',
                //                   color: Colors.white,
                //                   fontSize: 20.0,
                //                 ),
                //
                //               ),
                //             ],
                //           ),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),

                Container(
                  width: 70.0,
                  height: 70.0,
                  child: FloatingActionButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>FeatureBook()));
                  },
                    child: Container(
                      width: 90.0,
                      height: 90.0,
                      child: Icon(
                        Icons.arrow_forward,
                        size: 40.0,
                      ),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: <Color>[
                            Color(0xff0096D6),
                            Color(0xff0096D6),
                            Color(0xff0096D6),
                            Color(0xff0096D6),
                            Color(0xff0096D6),
                          ],
                        ),
                      ),
                    ),

                    elevation: 20.0,
                    //autofocus: true,

                  ),
                ),

              ],

            ),
          ],
        ),
      ),
    );
  }
}

