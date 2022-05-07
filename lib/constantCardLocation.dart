import 'package:flutter/material.dart';
import 'package:maps_launcher/maps_launcher.dart';


class KLocationCard extends StatelessWidget {
  const KLocationCard({Key? key,required this.colorSelect,required this.imageShowLink, required this.textToShow,required this.latitude,required this.longitude, required this.textOnMap}) : super(key: key);
  final Color colorSelect;
  final String imageShowLink;
  final String textToShow;
  final double latitude;
  final double longitude;
  final String textOnMap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child:GestureDetector(
        onTap:(){
          MapsLauncher.launchCoordinates(latitude, longitude,textOnMap);
        },
        child: Card(
            color: colorSelect,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
            elevation: 10.0,
            child: Column(
              children: [
                Image.asset(imageShowLink,
                  height: 300.0,
                  width: 300.0,
                ),
                SizedBox(height: 20.0,),

                Text(textToShow,
                  textAlign: TextAlign.center,
                  style:TextStyle(
                    fontFamily: 'Gilroy',
                    color: Colors.black,
                    fontSize: 20.0,

                  ),
                ),
                SizedBox(height: 10.0,),

              ],
            ),



        ),
      ),
    );
  }
}
