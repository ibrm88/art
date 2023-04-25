import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/page1.dart';

class Part1 extends StatefulWidget {

  const Part1({Key? key}) : super(key: key);

  @override
  State<Part1> createState() => _Part1State();
}
bool clr = false;
double width = 16 ;

class _Part1State extends State<Part1> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(

        title: Text("كتاب فن اللامبالاة",
          style: GoogleFonts.getFont('Almarai'),
        ),



        backgroundColor: Color.fromARGB(255, 82, 86, 89),
      ),
      drawer: Drawer(
        child:  Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.width *0.21,
              color: Color.fromARGB(255, 82, 86, 89),

            ),
            InkWell(
              onTap: (){

              },
              child: ListTile(
                leading: Icon(
                  Icons.home,

                ),
                title: Text("الرئيسية"),
              ),
            ),
            InkWell(
              onTap: (){

              },
              child: ListTile(
                leading: Icon(
                  Icons.menu_book,

                ),
                title: Text("الفهرس"),
              ),
            ),
            InkWell(
              onTap: (){

              },
              child: ListTile(
                leading: Icon(
                  Icons.copyright,

                ),
                title: Text("حقوق النشر"),
              ),
            ),
            InkWell(
              onTap: (){

              },
              child: ListTile(
                leading: Icon(
                  Icons.more,

                ),
                title: Text("للمزيد من الكتب"),
              ),
            ),

          ],
        ),

      ),
      endDrawer: Drawer(

        width: MediaQuery.of(context).size.width *0.2,
        backgroundColor:  Colors.black12,
        semanticLabel: "أدوات" ,
        surfaceTintColor: Colors.red,

        child:   Column(

          children: [


            InkWell(

              child: Container(
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.1,right: MediaQuery.of(context).size.width *0.1),
                height: MediaQuery.of(context).size.height *0.05,
                width: MediaQuery.of(context).size.width *0.09,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(14),
                  boxShadow: [BoxShadow(
                    color: Colors.transparent,
                    spreadRadius: 1,
                    blurRadius: 7,
                    offset: Offset(3, 3),
                  ),],
                ),
                child: Icon(
                  Icons.zoom_in,
                  color: Colors.white,
                  size: 60,

                ),

              ),
              onTap: (){
                if (width <= 29 ){
                  width++;

                  print(width);
                }




                ;

                setState(() {

                });
              },


            ),


            InkWell(
              child: Container(

                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.1,right: MediaQuery.of(context).size.width *0.1),
                height: MediaQuery.of(context).size.height *0.05,
                width: MediaQuery.of(context).size.width *0.09,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(14),
                  boxShadow: [BoxShadow(
                    color: Colors.transparent,
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(3, 3),
                  ),],
                ),
                child: Icon(

                  Icons.zoom_out,
                  color: Colors.white,
                  size: 60,


                ),


              ),
              onTap: (){
                if (width >= 11 ){
                  width--;

                }

                setState(() {

                });
              },


            ),

            InkWell(
              child: Container(
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.1,right: MediaQuery.of(context).size.width *0.1),
                height: MediaQuery.of(context).size.height *0.05,
                width: MediaQuery.of(context).size.width *0.09,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(14),
                  boxShadow: [BoxShadow(
                    color: Colors.transparent,
                    spreadRadius: 1,
                    blurRadius: 7,
                    offset: Offset(3, 3),
                  ),],
                ),
                child: Icon(
                  Icons.radio_button_checked_sharp,
                  color: Colors.black,
                  size: 60,
                  shadows: [

                    Shadow(color: Colors.white,
                      offset: Offset(-1,1),
                    )
                  ],
                ),

              ),
              onTap: (){
                clr = true;
                setState(() {

                });


              },


            ),
            InkWell(
              child: Container(
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.1,right: MediaQuery.of(context).size.width *0.1),
                height: MediaQuery.of(context).size.height *0.05,
                width: MediaQuery.of(context).size.width *0.09,
                decoration:
                BoxDecoration(
                  color: Colors.transparent,

                  borderRadius: BorderRadius.circular(14),
                  boxShadow: [BoxShadow(
                    color: Colors.transparent,
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(3, 3),
                  ),],

                ),
                child: Icon(
                  Icons.radio_button_checked_sharp,
                  color: Colors.white,
                  size: 60,
                  shadows: [
                    Shadow(color: Colors.black,
                      offset: Offset(2,2),
                    )
                  ],
                ),



              ),
              onTap: (){
                clr = false;
                setState(() {

                });


              },


            ),
          ],

        ),
      ),

      body:

      Column(

        children:[


          Expanded(
            child: Scrollbar(
              thickness: 15,
              interactive: true,
              trackVisibility: true,
              thumbVisibility: true,
              child: Stack(


                children: [

                  ListView.builder(

                    scrollDirection: Axis.vertical,
                    itemCount: part1.length,

                    itemBuilder: (context, index)
                    {
                      return Column(

                        children: [

                          Padding(
                            padding: EdgeInsets.all(10),
                            child: ListTile(


                              title: Text('${part1[0]['title']}',
                                style: TextStyle(
                                  color: (clr != false)?  Colors.white :Colors.black,
                                ),
                              ),
                              subtitle: Text('${part1[0]['thetext']}',
                                style: TextStyle(
                                  color: (clr != false)?  Colors.white :Colors.black,
                                  fontSize: width,
                                  height: 2,

                                ),
                                textAlign: TextAlign.justify,
                              ),






                            ),

                          ),
                          Text( index.toString(),),




                        ],

                      );
                    },
                  ),




                ],

              ),
            ),
          ),
        ],
      ),




    );
  }
}
