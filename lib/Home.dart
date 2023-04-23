import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/page1.dart';

class Home extends StatefulWidget {

  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}
bool clr = false;
double width = 13 ;
double cont = 800;
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
                if (width <= 29 && cont <= 3200){
                  width++;
                  cont = cont + 152;
                  print(width+cont);
                }




                ;
                print("cont=$cont"+"width=$width");
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
                if (width >= 11 && cont >= 534){
                  width--;
                  cont = cont - 152;
                }
                print("cont=$cont"+"width=$width");
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

                      Container(
                      margin: EdgeInsets.only(top: 20),
                      width: MediaQuery.of(context).size.width *0.9,
                      height: cont,
                      color: (clr == true)?  Colors.black :Colors.white,
                      child:   ListTile(

                        title: Text('${part1[index]['title']}',
                        style: TextStyle(
                          color: (clr != false)?  Colors.white :Colors.black,
                        ),
                        ),
                        subtitle: Text('${part1[index]['thetext']}',
                        style: TextStyle(
                          color: (clr != false)?  Colors.white :Colors.black,
                          fontSize: width,
                        ),
                        ),




                        ) ,
                      ),




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
