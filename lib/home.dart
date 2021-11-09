import 'package:flutter/material.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  List<Icon> _scoreTracker = [Icon(Icons.check_circle),Icon(Icons.clear)];
  int _questionindex=0;
  int _totalscore=0;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        shape:RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(50),top: Radius.circular(50))),
        title:  Center(
          child: Text(
            "Quiz Game",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
      body: Center(

        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  if(_scoreTracker.isEmpty)
                    Container(height: 25,),
                  if(_scoreTracker.isNotEmpty)
                    ..._scoreTracker
                ],
              ),

              Container(
                width: double.infinity,
                height: 130.0,
                margin: EdgeInsets.only(bottom: 10.0, left: 30.0, right: 30.0),
                padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 20.0),
                decoration: BoxDecoration(
                    gradient:LinearGradient(colors:[Colors.white,Colors.pinkAccent]),
                    borderRadius: BorderRadius.circular(10.0)),
                child: Center(child: Text("questions")),
              ),
              InkWell(
                onTap: () {},
                child: Container(

                  padding: EdgeInsets.all(15.0),
                  margin: EdgeInsets.symmetric(vertical: 2.0, horizontal: 30.0),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: null,
                      border: Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Text("answer"),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(15.0),
                  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 30.0),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: null,
                      border: Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Text("answer"),
                ),
              ),InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(15.0),
                  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 30.0),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: null,
                      border: Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Text("answer"),
                ),
              ),InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(15.0),
                  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 30.0),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: null,
                      border: Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Text("answer"),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(100, 40.0)),
                  onPressed: () {},
                  child: Text("next")),
              Container(
                padding: EdgeInsets.all(40.0),

                child: Text('0/9',style: TextStyle(fontSize: 20),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
