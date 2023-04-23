import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled1/pages/page1.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 10,
                itemBuilder: (context, index)
              {
                return Column(


                  children: [


                    Container(
                    margin: EdgeInsets.only(top: 20),
                    width: MediaQuery.of(context).size.width *0.9,
                    height: MediaQuery.of(context).size.height *0.9,
                    color: Colors.white,
                    child: Column(
                    children: [

                      Text(
                        index.toString(),
                      ),
                    ],   ),

                      ),

                  ],
                );
              },
              ),
              ),
            ),
            ],
          ),

    ],  ),

      );
  }
}
