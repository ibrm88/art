import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled1/index.dart';
import 'package:untitled1/pages/page1.dart';

class Home extends StatefulWidget {
    Home({Key? key , required this.i}) : super(key: key);
    int i = 0;
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final PageController controller = PageController();



  @override
  void initState() {

    super.initState();
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(

      backgroundColor: Color.fromARGB(255, 82, 86, 89),
      appBar: AppBar(

        title: Text("كتاب فن اللامبالاة",
          style: GoogleFonts.getFont('Almarai'),
        ),
        backgroundColor: Color.fromARGB(255, 82, 86, 89),
      ),
      drawer: Drawer(

        child: Column(
          children: [
            Container(
              height: 150,
              color: Colors.red,
            ),
            InkWell(
                onTap: (){
                  controller.jumpToPage(1);
                  Navigator.pop(context);
                },
                child: Text('index 1' , style: TextStyle(fontSize: 20),)) ,
            InkWell(
                onTap: (){
                  controller.jumpToPage(2);
                  Navigator.pop(context);
                },
                child: Text('index 2' , style: TextStyle(fontSize: 20),)) ,
            InkWell(
                onTap: (){
                  controller.jumpToPage(3);
                  Navigator.pop(context);
                },
                child: Text('index 3' , style: TextStyle(fontSize: 20),)) ,
            InkWell(
                onTap: (){
                  controller.jumpToPage(4);
                  Navigator.pop(context);
                },
                child: Text('index 4' , style: TextStyle(fontSize: 20),)) ,
          ],
        ),
      ),
      body:
      Stack(
        children:
        [Column(
          children:[Expanded(
            child: Scrollbar(
              thickness: 15,
              interactive: true,
              trackVisibility: true,
              thumbVisibility: true,
              child: PageView.builder(
                  itemCount: 20,
                  controller: controller,
                  itemBuilder: (c,i){

                    return Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          width: MediaQuery.of(context).size.width *0.9,
                          height: MediaQuery.of(context).size.height *0.8,
                          color: Colors.white,
                          child: Column(
                            children: [

                              Text(
                                i.toString(),
                              ),
                            ],   ),

                        ),

                      ],
                    );

              }),
              ),
            ),
            ],
          ),

    ],  ),

      );
  }
}
