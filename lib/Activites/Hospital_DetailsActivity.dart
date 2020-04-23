import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:give_app_flutter/Utils/flutkart.dart';



class Hospital_Details extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Hospital_DetailsClickLister();
  }
  
  
}

class Hospital_DetailsClickLister extends State<Hospital_Details>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
           child:  new Column(
             children: <Widget>[
                new Column(
                 children: <Widget>[
                   new Padding(padding: EdgeInsets.all(10.0)),
                   new Column(

                     children: <Widget>[
                       new Padding(padding: EdgeInsets.all(25.0)),
                       new Image.asset('img/logo.png',
                           width: 500.0,
                           height: 150.0,
                           alignment: Alignment.center),
                       new Padding(padding: EdgeInsets.all(10.0)),

                     ],
                   )
                 ],
               ),
            new Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.centerRight,
              child:  new Column(
                children: <Widget>[
                  new Text(
                    Flutkart.HospitalName,
                    textDirection: TextDirection.rtl,
                    style: new TextStyle(
                        fontSize: 17.0,
                        color: Colors.blueGrey,
                        fontStyle: FontStyle.italic),
                  ),
                  new Padding(padding: EdgeInsets.all(5.0)),
                  new Text(
                    Flutkart.HospitalAddress,
                    textDirection: TextDirection.rtl,
                    style: new TextStyle(
                        fontSize: 17.0,
                        color: Colors.blueGrey,
                        fontStyle: FontStyle.italic),
                  ),
                  new Padding(padding: EdgeInsets.all(5.0)),
                  new Text(
                    Flutkart.HospitalAddress2,
                    textDirection: TextDirection.rtl,
                    style: new TextStyle(
                        fontSize: 17.0,
                        color: Colors.blueGrey,
                        fontStyle: FontStyle.italic),
                  ),
                  new Padding(padding: EdgeInsets.all(15.0)),
                  new Text(
                    Flutkart.HospitalDetailsText,
                    textDirection: TextDirection.rtl,
                    style: new TextStyle(
                        fontSize: 22.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  new Padding(padding: EdgeInsets.all(5.0)),
                  new Text(
                    Flutkart.HospitalDetails,
                    textDirection: TextDirection.rtl,
                    style: new TextStyle(
                        fontSize: 17.0,
                        color: Colors.blueGrey,
                        fontStyle: FontStyle.italic),
                  ),
                ],
              ),
            ),
               new Container(
                 alignment: Alignment.bottomLeft,
                 padding: EdgeInsets.all(15.0),
                 child: new Column(
                   children: <Widget>[
                   new FloatingActionButton.extended(onPressed: null,
                       icon: new Icon(Icons.call,color: Colors.white,),
                       backgroundColor: Colors.deepPurple, label: new Text(Flutkart.Call,
                         style: new TextStyle(fontSize: 15,color: Colors.white),),),
                   ],
                 ),
               ),
             ],
           ),
          ),
        ],
      ),
    );
  }
  
  
}