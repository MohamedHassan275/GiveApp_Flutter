import 'package:flutter/material.dart';




    // Initial commit
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
      appBar: new AppBar(
        title: new Text('Login Screen'),
        backgroundColor: Colors.indigo,
        actions: <Widget>[
//          new IconButton(
//              icon: new Icon(Icons.airplanemode_active), onPressed: () => debugPrint('air plane')),
//          new IconButton(
//              icon: new Icon(Icons.add_a_photo),
//              onPressed: () => debugPrint('camera')),
          new IconButton(
              icon: new Icon(Icons.more_vert),
              onPressed: () => debugPrint('more')),

        ],
      ),
      body: new Container(
        alignment: Alignment.center,
        color: Colors.white,
        padding: new EdgeInsets.all(22.0),
        child: new Column(
          children: <Widget>[
//            new Image.asset('img/logo.jpg',
//            width: 100.0,height: 100.0,
//            alignment: Alignment.center),
            CircleAvatar(
              backgroundColor: Colors.indigoAccent,
              radius: 50.0,
              child: Icon(
                Icons.shopping_cart,
                color: Colors.white,
                size: 50.0,
              ),
            ),

            new Container(
              padding: EdgeInsets.all(15.0),
            ),
            new Text(
              'Login in App',
              style: new TextStyle(
                fontSize: 22,
                color: Colors.red,
              ),
            ),
         new Container(
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
                 ],

             )
             ],
           ),
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
        ),
      ),

    );
  }
}
