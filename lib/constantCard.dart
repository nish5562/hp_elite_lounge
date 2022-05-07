import 'package:flutter/material.dart';


class KCardDesign extends StatefulWidget {
  const KCardDesign({Key? key, required this.colorSelect,required this.imageShowLink, required this.textToShow, required this.explainExpand}) : super(key: key);
  final Color colorSelect;
  final String imageShowLink;
  final String textToShow;
  final String explainExpand;

  @override
  State<KCardDesign> createState() => _KCardDesignState();
}




class _KCardDesignState extends State<KCardDesign> {
  Widget contentExpand (BuildContext context){
    return Container(
      child: Column(
        children: [
          Image.asset(widget.imageShowLink,
            height: 200.0,
            width: 200.0,
          ),
          SizedBox(height: 20.0,),
          Text(widget.explainExpand,
            textAlign: TextAlign.center,
            style:TextStyle(
              fontFamily: 'GilroyLite',
              color: Colors.black,
              fontSize: 20.0,

            ),
          ),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return
      Container(

        margin: EdgeInsets.all(20.0),
        child: GestureDetector(
          onTap: (){
            setState(() {
              showModalBottomSheet(context: context, builder: contentExpand);
            });

          },
          child: Card(

            color: widget.colorSelect,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
            elevation: 10.0,
            child: Column(

              children: [
                Image.asset(widget.imageShowLink,
                height: 200.0,
                  width: 200.0,
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
                SizedBox(height: 10.0,),

              ],
            )

          ),
        ),
      );

  }
}
