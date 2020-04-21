import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:give_app_flutter/Utils/flutkart.dart';

class LoginCliant extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new HomeClickLiser();
  }
}

class HomeClickLiser extends State<LoginCliant> {
  String MyName = '';
  String name = '';

  void OnChangeValue(String text) {
    setState(() {
      MyName = 'OnChange :  $text';
    });
  }

  void OnClickBtn() {
    setState(() {
      name = ' your email is ';
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            child: new DecoratedBox(
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage("img/backgroung_hand_screen.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Padding(padding: EdgeInsets.only(bottom: 125.0)),
              new Card(
                elevation: 7.0,
                margin: EdgeInsets.all(25.0),
                child: new Container(
                  padding: EdgeInsets.all(15.0),
                  child: new Column(
                    children: <Widget>[
                      new Padding(padding: EdgeInsets.all(10.0)),
                      new Column(
                        children: <Widget>[
                          new Image.asset('img/ic_group_add.png',
                              width: 35.0,
                              height: 35.0,
                              alignment: Alignment.center),
                          new Padding(padding: EdgeInsets.all(10.0)),
                          new TextField(
                            decoration: new InputDecoration(
                              icon: new Icon(
                                Icons.account_circle,
                                color: Colors.indigo,
                              ),
                              labelText: 'your email',
                              hintText: 'email',
                            ),
                            keyboardType: TextInputType.emailAddress,
                            onChanged: OnChangeValue,
                          ),
                          new Padding(padding: EdgeInsets.all(10.0)),
                          new TextField(
                            decoration: new InputDecoration(
                              icon: new Icon(
                                Icons.lock,
                                color: Colors.blue,
                              ),
                              labelText: 'your password',
                              hintText: 'password',
                            ),
                            keyboardType: TextInputType.visiblePassword,
                            onChanged: OnChangeValue,
                          ),
                          new Padding(padding: EdgeInsets.all(15.0)),
                           Text(
                             Flutkart.forgetPassword,
                             style: new TextStyle(color: Colors.black,fontSize: 17.0,
                               fontStyle: FontStyle.italic,),


                           ),
                          new Padding(padding: EdgeInsets.all(10.0)),
                          new InkWell(
                            onTap: () => print('hello'),
                            child: new Container(
                              width: 200.0,
                              height: 37.0,
                              decoration: new BoxDecoration(
                                color: Colors.blueAccent,
                                border: new Border.all(color: Colors.blueAccent, width: 1.0),
                                borderRadius: new BorderRadius.circular(25.0),
                              ),
                              child: new Center(child: new Text('Login', style: new TextStyle(fontSize: 17.0,
                                  color: Colors.white),),),
                            ),
                          ),
                          new Padding(padding: EdgeInsets.all(15.0)),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              new Padding(padding: EdgeInsets.all(10.0)),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Text(
                    Flutkart.RegisterNow,
                    style: new TextStyle(color: Colors.red,fontSize: 19.0,
                      fontStyle: FontStyle.normal,),
                  ),

                  new Padding(padding: EdgeInsets.all(2.0)),
                  new  Text(
                    Flutkart.notAccount,
                    style: new TextStyle(color: Colors.grey,fontSize: 19.0,
                      fontStyle: FontStyle.normal,),

                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
