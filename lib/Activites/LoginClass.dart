import 'package:flutter/material.dart';




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
        children: <Widget>[
          Container(
            child: new DecoratedBox(
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage("img/background_splash_screen.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        new Column(
              children: <Widget>[

                new Card(
                  elevation: 7.0,
                  margin:EdgeInsets.all(25.0),
                  child:  new Container(
                    child: new Column(
                      children: <Widget>[
                        new Column(
                          children: <Widget>[
                            new TextField(
                              autocorrect: true,
                              autofocus: true,
                              decoration: new InputDecoration(
                                icon: new Icon(Icons.account_circle,color: Colors.indigo,),
                                labelText: 'your email',
                                hintText: 'email',
                              ),
                              keyboardType: TextInputType.emailAddress,
                              onChanged: OnChangeValue,
                            ),
                            new TextField(
                              autocorrect: true,
                              autofocus: true,
                              decoration: new InputDecoration(
                                icon: new Icon(Icons.lock,color: Colors.blue,),
                                labelText: 'your password',
                                hintText: 'password',
                              ),
                              keyboardType: TextInputType.visiblePassword,
                              onChanged: OnChangeValue,
                            ),
                            new Center(
                              child: new Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  new Container(
                                    margin: EdgeInsets.all(22.0),
                                    child:   new RaisedButton(
                                      padding: EdgeInsets.all(15.0),
                                      color: Colors.indigo,
                                      onPressed: ()=> Navigator.of(context).pushNamed('/HomeTabBar'),
                                      child: new Text('Login'),textColor: Colors.white70,),
                                  ),
                                  new Container(
                                    child:    new RaisedButton(
                                      padding: EdgeInsets.all(15.0),
                                      color: Colors.red,
                                      onPressed: ()=> Navigator.of(context).pushNamed('/RegisterCliant'),
                                      child: new Text('Register'),textColor: Colors.white,),
                                  )

                                ],
                              ),
                            ),
                          ],

                        )
                      ],
                    ),

                  ),

                ),



              ],
            ),

        ],
      ),
    );


  }
}
