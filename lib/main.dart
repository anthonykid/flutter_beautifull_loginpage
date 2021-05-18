import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/* use this if you have the main page in diffrent class
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}*/
void main() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp
  ]) //to make our project cannot be rotated
      .then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //making the debug banner gone
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  double getSmallDiameter(
          BuildContext
              context) => //build context to save information for later use
      MediaQuery.of(context).size.width *
      2 /
      3; //calculate the users phone resolution so it can be compatible
  double getBigDiameter(
          BuildContext
              context) => //build context to save information for later use
      MediaQuery.of(context).size.width *
      7 /
      8; //calculate the users phone resolution so it can be compatible

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200], //using light grey
      body: Stack(
        children: <Widget>[
          Positioned(
            //im using positioned to move over the wdget from home
            //circle widget on top right
            right: -getSmallDiameter(context) /
                3, //using - to make it outside the home
            top: -getSmallDiameter(context) /
                3, //using - to make it outside the home
            child: Container(
              width: getSmallDiameter(context), //using buildcontext from above
              height: getSmallDiameter(context), //using buildcontext from above
              decoration: BoxDecoration(
                  shape: BoxShape.circle, //making the widget look circle
                  gradient: LinearGradient(
                      //using linear gradient
                      colors: [
                        Colors.purple,
                        Colors.pink
                      ], //giving 2 colors for the linear gradient
                      begin: Alignment.topCenter, //begin of the gradient
                      end: Alignment.bottomCenter)), //end of the gradient
            ),
          ),
          Positioned(
            //circle widget on top left
            left: -getBigDiameter(context) /
                4, //using - to make it outside the home
            top: -getBigDiameter(context) /
                4, //using - to make it outside the home
            child: Container(
              child: Center(
                child: Text(
                  "AnthonyKid", //giving a text
                  style: TextStyle(
                      //giving the text a textstyle
                      fontSize: 30, //font for the text
                      fontWeight: FontWeight.w600, //giving the font kinda bold
                      color: Colors.white), //colors of the text
                ),
              ),
              width: getBigDiameter(context), //using buildcontext from above
              height: getBigDiameter(context), //using buildcontext from above
              decoration: BoxDecoration(
                  shape: BoxShape.circle, //making the widget look circle
                  gradient: LinearGradient(
                      //using linear gradient
                      colors: [
                        Colors.purple,
                        Colors.pink[400]
                      ], //giving 2 colors for the linear gradient
                      begin: Alignment.topCenter, //begin of the gradient
                      end: Alignment.bottomCenter)), //end of the gradient
            ),
          ),
          Positioned(
            //circle widget on bottom right
            right: -getBigDiameter(context) /
                2, //using - to make it outside the home
            bottom: -getBigDiameter(context) /
                2, //using - to make it outside the home
            child: Container(
              width: getBigDiameter(context), //using buildcontext from above
              height: getBigDiameter(context), //using buildcontext from above
              decoration: BoxDecoration(
                  shape: BoxShape.circle, //making the widget look circle
                  gradient: LinearGradient(
                      //using linear gradient
                      colors: [
                        Colors.purple[200],
                        Colors.pink[500]
                      ], //giving 2 colors for the linear gradient
                      begin: Alignment.topCenter, //begin of the gradient
                      end: Alignment.bottomCenter)), //end of the gradient
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter, //align the listview to bottom
            child: ListView(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white, //colors white
                      border: Border.all(
                          color: Colors.grey[400]), //border light grey
                      borderRadius: BorderRadius.circular(5)),
                  margin: EdgeInsets.fromLTRB(20, 300, 20,
                      10), //giving a margin so it doesnt look too wide or too high
                  padding:
                      EdgeInsets.fromLTRB(10, 0, 10, 25), //giving a padding
                  child: Column(
                    children: <Widget>[
                      TextField(
                        //first textfield to put email
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.email, //ixon looks like email
                              color: Colors.pink,
                            ),
                            focusedBorder: UnderlineInputBorder(
                                //a hint to know where to type
                                borderSide: BorderSide(color: Colors.pink)),
                            labelText: "Email : ",
                            labelStyle: TextStyle(color: Colors.pink)),
                      ),
                      TextField(
                        //second textfield to put password
                        obscureText:
                            true, //to make the typing looks like a password or turn typing too *
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.vpn_key, //icon looks like password key
                              color: Colors.pink,
                            ),
                            focusedBorder: UnderlineInputBorder(
                                //a hint to know where to type
                                borderSide: BorderSide(color: Colors.pink)),
                            labelText: "Password : ",
                            labelStyle: TextStyle(color: Colors.pink)),
                      ),
                    ],
                  ),
                ),
                Align(
                    alignment:
                        Alignment.centerRight, //making an forgot password
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 20,
                          20), //margin from right so it doesnt go to the very end
                      child: Text(
                        "FORGOT PASSWORD ?",
                        style: TextStyle(color: Colors.pink, fontSize: 11),
                      ),
                    )),
                Container(
                  //making container for 3 button
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SizedBox(
                        //first button is to sign in, if you didnt understand you can check my other project about inkwell
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: 40,
                        child: Container(
                          child: Material(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.transparent,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(30),
                              splashColor: Colors.red,
                              onTap: () {},
                              child: Center(
                                child: Text(
                                  "SIGN IN",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              gradient: LinearGradient(
                                  colors: [Colors.purple, Colors.pink],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter)),
                        ),
                      ),
                      FloatingActionButton(
                        //second button is facebook, dont forget to import the image in pubspec.yaml
                        onPressed: () {},
                        mini: true,
                        elevation: 0,
                        child:
                            Image(image: AssetImage("images/facebooklogo.png")),
                      ),
                      FloatingActionButton(
                        //third button is twitter, dont forget to import the image in pubspec.yaml
                        onPressed: () {},
                        mini: true,
                        elevation: 0,
                        child:
                            Image(image: AssetImage("images/twitterlogo.png")),
                      ),
                    ],
                  ),
                ),
                Row(
                  //making an sign up text if doesnt have any account yet
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "DON'T HAVE AN ACCOUNT ?  ",
                      style: TextStyle(
                          fontSize: 11,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "SIGN UP",
                      style: TextStyle(
                          fontSize: 11,
                          color: Colors.pink,
                          fontWeight: FontWeight.w700),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
