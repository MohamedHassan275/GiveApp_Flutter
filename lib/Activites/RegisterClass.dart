import 'package:flutter/material.dart';


class RegisterCliant extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return RegisterClickLisner();
  }


}

class RegisterClickLisner extends State<RegisterCliant> {
  String email = '';
  String name = '';
  String mobile = '';


  void OnClickBtnEmail(String email) {
    setState(() {
      email = ' your email is $email ';
    });
  }

  void OnClickBtnName(String name) {
    setState(() {
      email = ' your name is $name';
    });
  }

  void OnClickBtnMobile(String mobile) {
    setState(() {
      email = ' your mobile is $mobile';
    });
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Register Screen'),
          backgroundColor: Colors.indigo,
          actions: <Widget>[
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
              new Image.asset('img/logo.jpg',
                  width: 100.0, height: 100.0,
                  alignment: Alignment.center),
              new Container(
                padding: EdgeInsets.all(15.0),
              ),
              new Text(
                'Register in App',
                style: new TextStyle(
                  fontSize: 22,
                  color: Colors.red,
                ),
              ),
              new Container(
                child: new Column(
                  children: <Widget>[
                    new TextField(
                      autocorrect: true,
                      autofocus: true,
                      decoration: new InputDecoration(
                        icon: new Icon(
                          Icons.account_circle, color: Colors.indigo,),
                        labelText: 'your name',
                        hintText: 'name',
                      ),
                      keyboardType: TextInputType.emailAddress,
                      onChanged: OnClickBtnName,
                    ),
                    new TextField(
                      autocorrect: true,
                      autofocus: true,
                      decoration: new InputDecoration(
                        icon: new Icon(
                          Icons.email, color: Colors.indigo,),
                        labelText: 'your email',
                        hintText: 'email',
                      ),
                      keyboardType: TextInputType.emailAddress,
                      onChanged: OnClickBtnEmail,
                    ),
                    new TextField(
                      autocorrect: true,
                      autofocus: true,
                      decoration: new InputDecoration(
                        icon: new Icon(
                          Icons.mobile_screen_share, color: Colors.indigo,),
                        labelText: 'your mobile',
                        hintText: 'mobile',
                      ),
                      keyboardType: TextInputType.number,
                      onChanged: OnClickBtnMobile,
                    ),
                    new TextField(
                      autocorrect: true,
                      autofocus: true,
                      decoration: new InputDecoration(
                        icon: new Icon(Icons.lock, color: Colors.blue,),
                        labelText: 'your password',
                        hintText: 'password',
                      ),
                      keyboardType: TextInputType.visiblePassword,
                      onChanged: null,
                    ),
                  ],
                ),
              ),

              new Center(
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Container(
                      margin: EdgeInsets.all(22.0),
                      child: new RaisedButton(
                        padding: EdgeInsets.all(15.0),
                        color: Colors.red,
                        onPressed: ()=> Navigator.of(context).pushNamed('/HomeDetails'),
                        child: new Text('Register '),
                        textColor: Colors.white70,),
                    ),
                    new Container(
                      child: new RaisedButton(
                        padding: EdgeInsets.all(15.0),
                        color: Colors.indigo,
                        onPressed: ()=> Navigator.of(context).pushNamed('/LoginCliant'),
                        child: new Text('Back To Login'),
                        textColor: Colors.white,),
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