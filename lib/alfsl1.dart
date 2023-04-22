import 'package:flutter/material.dart';

import 'alfsl1A.dart';
import 'alfsl1B.dart';





class Alfsl1 extends StatefulWidget {
  Alfsl1({
    Key? key}) : super(key: key);



  @override
  State<Alfsl1> createState() => _Alfsl1State();
}

class _Alfsl1State extends State<Alfsl1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 61, 89, 94),
      appBar: AppBar(
        title: Text("الفصل الأول"),
        backgroundColor: Color.fromARGB(255, 61, 89, 94),
      ),
      body: SingleChildScrollView(
        child: Column(

          children: [

            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>Alfsl1A()));
              },
              child: Stack(

                children:[ Container(
                  margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.22),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height *0.2,
                  child:  Image(image: AssetImage("images/fady1.png")),
                ),
                  Container(
                    margin: EdgeInsets.only(right: MediaQuery.of(context).size.width *0.2,top: MediaQuery.of(context).size.height *0.275),
                    child:  Text("قصة الأب الثري والأب الفقير", style: TextStyle(
                        color: Colors.black, fontSize: 20),),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>Alfsl1B()));
              },
              child: Stack(
                children:[ Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height *0.2,
                  child:  Image(image: AssetImage("images/fady2.png")),
                ),
                  Container(
                    margin: EdgeInsets.only(right: MediaQuery.of(context).size.width *0.2,top: MediaQuery.of(context).size.height *0.055),
                    child:  Text("درس من روبرت فروست", style: TextStyle(
                        color: Colors.black, fontSize: 20),),
                  ),

                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}