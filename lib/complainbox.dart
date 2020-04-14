import 'package:flutter/material.dart';

class ComplainBox extends StatefulWidget {
  @override
  _ComplainBoxState createState() => _ComplainBoxState();
}

class _ComplainBoxState extends State<ComplainBox> {
  Widget complainbox(){
    return
  Padding(
      
      padding: const EdgeInsets.all(20.0),
      
      child: Material(
        elevation: 10.0,
        
              child: Container(
                margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Text('ENTER YOUR COMPLAIN HERE'),
              Center(
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  child: TextField()),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      RaisedButton(
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.camera),Text('ADD PHOTO')
                          ],
                        ),
                        onPressed: (){}
                      ,),
                      RaisedButton(
                        onPressed: (){},
                        
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.add_location),
                            Text('Add Location'),
                          ],
                        ),)
                    ],
                  ),
             Center(child: FlatButton(
               color: Colors.greenAccent,
               child: Text('ADD COMPLAINT'),
             onPressed: (){},),)
            ],
          )
          ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return ListView(
   children: <Widget>[
      complainbox()
    ],
    );
}
}

class Addphoto extends StatefulWidget {
  @override
  _AddphotoState createState() => _AddphotoState();
}

class _AddphotoState extends State<Addphoto> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}

