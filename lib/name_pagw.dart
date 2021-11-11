import 'package:flutter/material.dart';
import 'package:quiz_game/home.dart';

class NamePage extends StatefulWidget {
  @override
  State<NamePage> createState() => _NamePageState();
}

class _NamePageState extends State<NamePage> {
  TextEditingController emailController = new TextEditingController();
  var val=1;

  @override
  Widget build(BuildContext context) {

    return
      MaterialApp(
        debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: [
            Container(
              child: Image.asset("assets/quiz_pic.jpg"),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10.0, left: 10.0, right: 10.0),
              padding: EdgeInsets.only(top: 70),
              child: ListTile(
                title: Text(
                  "Start the Quiz",
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
                subtitle: Text(
                  "Enter Your Name",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
            ),
            // Divider(thickness: 3,),
            SizedBox(
              height: 45,
            ),
            Container(
              height: 50,
              // padding: EdgeInsets.all(5),
              margin: EdgeInsets.only(bottom: 10.0, left: 20.0, right: 20.0),

              decoration: BoxDecoration(
                color: Colors.blueGrey[100],
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                    hintText: "     Enter Your Name",
                    hintStyle: TextStyle(color: Colors.black26),
                    border: InputBorder.none),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            SizedBox(height: 30),
            Container(
                margin: EdgeInsets.only(bottom: 10.0, left: 130.0, right: 130.0),
              // padding: EdgeInsets.only(left: 100,right: 100),
              height: 50,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(15),
              ),

              child: MaterialButton(onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                  return home();
                }));
              },child: Text('Lets Start Quiz',style: TextStyle(fontSize: 15,color: Colors.white),)),
            ),
            SizedBox(
              height: 50,
            ),
            Divider(
              thickness: 3,
            ),

          ],
        ),
      ),
    );
  }
}

void main() {
  // runApp(NamePage());
  // print(emailController);
}
