import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';


class KPhoneCard extends StatefulWidget {
  const KPhoneCard({Key? key,required this.colorSelect,required this.imageShowLink,required this.textToShow,required this.phoneNo }) : super(key: key);
  final Color colorSelect;
  final String imageShowLink;
  final String textToShow;
  final String phoneNo;

  @override
  State<KPhoneCard> createState() => _KPhoneCardState();
}

class _KPhoneCardState extends State<KPhoneCard> {


  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child:GestureDetector(
        onTap:(){
          setState(() {
            _makePhoneCall('131047');
          });

        },
        child: Card(
          color: widget.colorSelect,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
          elevation: 10.0,
          child: Column(
            children: [
              Image.asset(widget.imageShowLink,
                height: 250.0,
                width: 250.0,
              ),
              SizedBox(height: 20.0,),

              Text(widget.textToShow,
                textAlign: TextAlign.center,
                style:TextStyle(
                  fontFamily: 'Gilroy',
                  color: Colors.black,
                  fontSize: 20.0,

                ),
              ),
              SizedBox(height: 30.0,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.phone,
                    color: Color(0xff0096D6),

                  ),
                  SizedBox(width: 15.0,),

                  Text(widget.phoneNo,
                    textAlign: TextAlign.center,
                    style:TextStyle(
                      fontFamily: 'Gilroy',
                      color: Colors.black,
                      fontSize: 20.0,

                    ),

                  ),

                ],
              ),

              SizedBox(height: 10.0,),

            ],
          ),




        ),
      ),
    );
  }
}
