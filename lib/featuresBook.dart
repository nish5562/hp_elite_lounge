import 'package:flutter/material.dart';

import 'KCardForCall.dart';
import 'constantCard.dart';
import 'constantCardLocation.dart';

class FeatureBook extends StatefulWidget {
  const FeatureBook({Key? key}) : super(key: key);

  @override
  State<FeatureBook> createState() => _FeatureBookState();
}

class _FeatureBookState extends State<FeatureBook> {
  int _selectedIndex = 0;
  List<Widget> widgetsOptions=<Widget>[
    ListView(
      scrollDirection: Axis.vertical,

        shrinkWrap: true,
        children: [
          SizedBox(height: 20.0,),
          Text('What we have for you',
            textAlign: TextAlign.center,
            style:TextStyle(
              fontFamily: 'Gilroy',
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
          SizedBox(height: 10.0,),
          KCardDesign(colorSelect: Colors.white,imageShowLink: 'image/wifi.png',textToShow: 'Free WiFi',explainExpand: "Expalin me!!",),
          KCardDesign(colorSelect: Colors.white,imageShowLink: 'image/massageChair2.png',textToShow: 'Massage Chair',explainExpand: "Expalin me!!",),
          KCardDesign(colorSelect: Colors.white,imageShowLink: 'image/omen.png',textToShow: 'Omen Gaming Experience',explainExpand: "Expalin me!!",),
          KCardDesign(colorSelect: Colors.white,imageShowLink: 'image/hpPrinter.jpg',textToShow: 'Photo Print Experience',explainExpand: "Expalin me!!",),
          KCardDesign(colorSelect: Colors.white,imageShowLink: 'image/coffee.jpg',textToShow: 'Complimentary Coffee',explainExpand: "Expalin me!!",),

        ],
      ),

    GridView.count(
      scrollDirection: Axis.vertical,


      shrinkWrap: true,
      crossAxisCount: 2,
      children: [
        SizedBox(height: 20.0,),
        Text('Forest Hill',
          textAlign: TextAlign.center,
          style:TextStyle(
            fontFamily: 'Gilroy',
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
        SizedBox(height: 10.0,),
        KCardDesign(colorSelect: Colors.white,imageShowLink: 'image/earthDo.jpg',textToShow: 'Free WiFi',explainExpand: "Expalin me!!",),
        KCardDesign(colorSelect: Colors.white,imageShowLink: 'image/sbImpact.png',textToShow: 'Massage Chair',explainExpand: "Expalin me!!",),
        KCardDesign(colorSelect: Colors.white,imageShowLink: 'image/havingPurpose.png',textToShow: 'Omen Gaming Experience',explainExpand: "Expalin me!!",),
        KCardDesign(colorSelect: Colors.white,imageShowLink: 'image/hpPrinter.jpg',textToShow: 'Photo Print Experience',explainExpand: "Expalin me!!",),
        KCardDesign(colorSelect: Colors.white,imageShowLink: 'image/coffee.jpg',textToShow: 'Complimentary Coffee',explainExpand: "Expalin me!!",),

      ],
    ),
    ListView(
      scrollDirection: Axis.vertical,

      shrinkWrap: true,
      children: [
        //SizedBox(height: 10.0,),
        // Text('CWC',
        //   textAlign: TextAlign.center,
        //   style:TextStyle(
        //     fontFamily: 'Gilroy',
        //     color: Colors.white,
        //     fontSize: 20.0,
        //   ),
        // ),
        //SizedBox(height: 120.0,),
        KCardDesign(colorSelect: Colors.white,imageShowLink: 'image/HP_Blue_RGB.png',textToShow: 'CWC '
            'Coming Soon !',explainExpand: "Expalin me!!",),
        // KCardDesign(colorSelect: Colors.white,imageShowLink: 'image/wifi.png',textToShow: 'Free WiFi',),
        // KCardDesign(colorSelect: Colors.white,imageShowLink: 'image/massageChair2.png',textToShow: 'Massage Chair',),
        // KCardDesign(colorSelect: Colors.white,imageShowLink: 'image/omen.png',textToShow: 'Omen Gaming Experience',),
        // KCardDesign(colorSelect: Colors.white,imageShowLink: 'image/hpPrinter.jpg',textToShow: 'Photo Print Experience',),
        // KCardDesign(colorSelect: Colors.white,imageShowLink: 'image/coffee.jpg',textToShow: 'Complimentary Coffee',),

      ],
    ),
    ListView(
      scrollDirection: Axis.vertical,

      shrinkWrap: true,
      children: [
        SizedBox(height: 20.0,),
        Text('Find Us',
          textAlign: TextAlign.center,
          style:TextStyle(
            fontFamily: 'Gilroy',
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
        SizedBox(height: 10.0,),
        KPhoneCard(colorSelect: Colors.white,imageShowLink: 'image/HP_Blue_RGB.png',textToShow: 'Call To Book An Appointment',phoneNo: '131047',),
        KLocationCard(colorSelect: Colors.white,imageShowLink: 'image/hpMaps.png',textToShow: 'Get Direction (Forest Hill)',latitude:-37.85312888176969,longitude: 145.16745406929547 ,textOnMap: '353 Burwood Hwy, Forest Hill VIC 3131',),
        KLocationCard(colorSelect: Colors.white,imageShowLink: 'image/CWC.png',textToShow: 'Get Direction (CWC)',latitude:-37.81519466055118,longitude: 144.9657208116248 ,textOnMap: 'HP Customer Welcome Centre',),
        // KLocationCard(colorSelect: Colors.white,imageShowLink: 'image/omen.png',textToShow: 'Omen Gaming Experience',),
        // KLocationCard(colorSelect: Colors.white,imageShowLink: 'image/hpPrinter.jpg',textToShow: 'Photo Print Experience',),
        // KLocationCard(colorSelect: Colors.white,imageShowLink: 'image/coffee.jpg',textToShow: 'Complimentary Coffee',),

      ],
    ),


  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(icon: Icon(Icons.arrow_back,
          color: Colors.black,
        ),
          onPressed: () {
            Navigator.pop(context);
          },),
        title: Text('Elite Lounge',
          style:TextStyle(
            fontFamily: 'Gilroy',
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        actions: [
          Hero(
            tag: 'theLogo',
            child: Container(
              height: 100.0,
              width: 100.0,
              child: Image.asset('image/HP_Blue_RGB.png'),
            ),
          ),

        ],
      ),

      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('image/weAreOpen.jpg'),
              fit: BoxFit.fitHeight,
            )
          ),
          child: Center(
            child: widgetsOptions.elementAt(_selectedIndex),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.transparent,

        items: const [
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("image/HP_Blue_RGB.png"),
              //color: Colors.black,
            ),
            label: 'Home',
            backgroundColor: Color(0xff0096D6),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("image/omen.png"),

              //color: Colors.white,
            ),
            label: 'Forest Hill',
            backgroundColor: Color(0xff0096D6),
          ),
          BottomNavigationBarItem(
            icon:ImageIcon(
              AssetImage("image/hx.png"),
              //color: Color(0xFF3A5A98),
            ),
            label: 'CWC',
            backgroundColor: Color(0xff0096D6),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on_outlined,
              //color: Colors.black,
            ),
            label: 'Location',
            backgroundColor: Color(0xff0096D6),
          ),

        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,

      ),

    );
  }
}
