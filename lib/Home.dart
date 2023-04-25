import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:untitled1/part1.dart';




class Home extends StatefulWidget {

  const Home({Key? key}) : super(key: key);

  @override

  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color.fromARGB(255, 61, 89, 94),
      appBar: AppBar(
        title: Text("كتاب الأب الغني والأب الفقير",
          style: GoogleFonts.getFont('Almarai'),
        ),

        backgroundColor: Color.fromARGB(255, 61, 89, 94),
      ),
      body: SingleChildScrollView(
        child: Column(

          children: [
            Row(

              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width *0.9,
                      height: MediaQuery.of(context).size.height *0.3,
                      child:  Image(image: AssetImage("images/bb.png")),
                    ),
                    Container(

                      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.08,
                          right: MediaQuery.of(context).size.width *0.40),
                      child: Text("كتاب", style: TextStyle(
                        fontSize: 20,color: Colors.white,
                      ),),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.14,right: MediaQuery.of(context).size.width *0.3),
                      child: Text("الأب الغني والأب الفقير", style: TextStyle(
                          fontSize: 20,color: Colors.black
                      ),),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.19,right: MediaQuery.of(context).size.width *0.3),
                      child: Text("روبرت كيوساكي", style: TextStyle(
                          fontSize: 20,color: Colors.white
                      ),),
                    ),

                  ], ),


              ],
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>Part1()));
              },
              child: Stack(
                children: [

                  Container(
                    width: MediaQuery.of(context).size.width *0.99,
                    height: MediaQuery.of(context).size.height *0.20,
                    child:  Image(image: AssetImage("images/fady1.png")),

                  ),
                  Container(
                    margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.04,right: MediaQuery.of(context).size.width *0.1),
                    child:  Text("المقدمة:", style: TextStyle(
                        color: Colors.black, fontSize: 20),),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.08,right: MediaQuery.of(context).size.width *0.3),
                    child: Text("أشياء نحن في احتياج إليها:", style: TextStyle(
                        color: Colors.black, fontSize: 20
                    ),),),
                ],
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>Part1()));
              },
              child: Stack(
                children:[ Container(
                  width: MediaQuery.of(context).size.width *0.99,
                  height: MediaQuery.of(context).size.height *0.19,
                  child:  Image(image: AssetImage("images/fady2.png")),
                ),
                  Container(
                    margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.04,right: MediaQuery.of(context).size.width *0.09),
                    child:  Text("الفصل الأول:", style: TextStyle(
                        color: Colors.black, fontSize: 20),),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.07,right: MediaQuery.of(context).size.width *0.25),
                    child: Text("قصة الأب الغني والأب الفقير", style: TextStyle(
                        color: Colors.black, fontSize: 20
                    ),),),
                ],
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>Part1()));
              },
              child: Stack(
                children: [Container(
                  width: MediaQuery.of(context).size.width *0.99,
                  height: MediaQuery.of(context).size.height *0.20,
                  child:  Image(image: AssetImage("images/fady3.png")),
                ),
                  Container(
                    margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.04,right: MediaQuery.of(context).size.width *0.09),
                    child:  Text("الفصل الثاني / الدرس الأول:", style: TextStyle(
                        color: Colors.black, fontSize: 20),),
                  ),
                  Container(

                    margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.08,right: MediaQuery.of(context).size.width *0.25),
                    child: Text("الأثرياء لا يعملون لجني المال", style: TextStyle(
                        color: Colors.black, fontSize: 20
                    ),),),
                ],
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>Part1()));
              },
              child: Stack(
                  children: [Container(
                    width: MediaQuery.of(context).size.width *0.99,
                    height: MediaQuery.of(context).size.height *0.20,
                    child:  Image(image: AssetImage("images/fady4.png")),
                  ),
                    Container(
                      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.04,right: MediaQuery.of(context).size.width *0.09),
                      child:  Text("الفصل الثالث / الدرس الثاني:", style: TextStyle(
                          color: Colors.black, fontSize: 20),),
                    ),
                    Container(

                      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.08,right: MediaQuery.of(context).size.width *0.25),
                      child: Text("لماذا يتم تدريس الثقافة المالية؟", style: TextStyle(
                          color: Colors.black, fontSize: 20
                      ),),),
                  ]
              ),
            ),

            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>Part1()));
              },
              child: Stack(
                children:[ Container(
                  width: MediaQuery.of(context).size.width *0.99,
                  height: MediaQuery.of(context).size.height *0.20,
                  child:  Image(image: AssetImage("images/fady1.png")),
                ),
                  Container(
                    margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.04,right: MediaQuery.of(context).size.width *0.09),
                    child:  Text("الفصل الرابع / الدرس الثالث:", style: TextStyle(
                        color: Colors.black, fontSize: 20),),
                  ),
                  Container(

                    margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.08,right: MediaQuery.of(context).size.width *0.35),
                    child: Text("فكر في عملك الخاص", style: TextStyle(
                        color: Colors.black, fontSize: 20
                    ),),),
                ],
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>Part1()));
              },
              child: Stack(
                children:[ Container(
                  width: MediaQuery.of(context).size.width *0.99,
                  height: MediaQuery.of(context).size.height *0.20,
                  child:  Image(image: AssetImage("images/fady2.png")),
                ),
                  Container(
                    margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.04,right: MediaQuery.of(context).size.width *0.09),
                    child:  Text("الفصل الخامس / الدرس الرابع:", style: TextStyle(
                        color: Colors.black, fontSize: 20),),
                  ),
                  Container(

                    margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.08,right: MediaQuery.of(context).size.width *0.25),
                    child: Text("تاريخ الضرائب ونفوذ الشركات", style: TextStyle(
                        color: Colors.black, fontSize: 20
                    ),),),
                ],
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>Part1()));
              },
              child: Stack(
                children: [Container(
                  width: MediaQuery.of(context).size.width *0.99,
                  height: MediaQuery.of(context).size.height *0.20,
                  child:  Image(image: AssetImage("images/fady3.png")),
                ),
                  Container(
                    margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.04,right: MediaQuery.of(context).size.width *0.09),
                    child:  Text("الفصل السادس / الدرس الخامس:", style: TextStyle(
                        color: Colors.black, fontSize: 20),),
                  ),
                  Container(

                    margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.08,right: MediaQuery.of(context).size.width *0.25),
                    child: Text("الثري يبتكر سبل الحصول على المال", style: TextStyle(
                        color: Colors.black, fontSize: 20
                    ),),),
                ],
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>Part1()));
              },
              child: Stack(
                children: [Container(
                  width: MediaQuery.of(context).size.width *0.99,
                  height: MediaQuery.of(context).size.height *0.20,
                  child:  Image(image: AssetImage("images/fady4.png")),
                ),
                  Container(
                    margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.04,right: MediaQuery.of(context).size.width *0.09),
                    child:  Text("الفصل السابع / الدرس السادس:", style: TextStyle(
                        color: Colors.black, fontSize: 20),),
                  ),
                  Container(

                    margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.08,right: MediaQuery.of(context).size.width *0.10),
                    child: Text("ليكن عملك بهدف التعلم لا لجمع المال", style: TextStyle(
                        color: Colors.black, fontSize: 20
                    ),),),
                ],
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>Part1()));
              },
              child: Stack(
                children: [Container(
                  width: MediaQuery.of(context).size.width *0.99,
                  height: MediaQuery.of(context).size.height *0.20,
                  child:  Image(image: AssetImage("images/fady1.png")),
                ),
                  Container(
                    margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.04,right: MediaQuery.of(context).size.width *0.09),
                    child:  Text("الفصل الثامن / ", style: TextStyle(
                        color: Colors.black, fontSize: 20),),
                  ),
                  Container(

                    margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.08,right: MediaQuery.of(context).size.width *0.25),
                    child: Text("التغلب على المعوقات", style: TextStyle(
                        color: Colors.black, fontSize: 20
                    ),),),
                ],
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>Part1()));
              },
              child: Stack(
                children: [Container(
                  width: MediaQuery.of(context).size.width *0.99,
                  height: MediaQuery.of(context).size.height *0.20,
                  child:  Image(image: AssetImage("images/fady2.png")),
                ),
                  Container(
                    margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.04,right: MediaQuery.of(context).size.width *0.09),
                    child:  Text("الفصل التاسع / :", style: TextStyle(
                        color: Colors.black, fontSize: 20),),
                  ),
                  Container(

                    margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.08,right: MediaQuery.of(context).size.width *0.3),
                    child: Text("البداية", style: TextStyle(
                        color: Colors.black, fontSize: 20
                    ),),),
                ],
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>Part1()));
              },
              child: Stack(
                children: [Container(
                  width: MediaQuery.of(context).size.width *0.99,
                  height: MediaQuery.of(context).size.height *0.20,
                  child:  Image(image: AssetImage("images/fady3.png")),
                ),
                  Container(
                    margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.04,right: MediaQuery.of(context).size.width *0.09),
                    child:  Text("الفصل العاشر:", style: TextStyle(
                        color: Colors.black, fontSize: 20),),
                  ),
                  Container(

                    margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.08,right: MediaQuery.of(context).size.width *0.25),
                    child: Text("أما زلت تحتاج المزيد؟", style: TextStyle(
                        color: Colors.black, fontSize: 20
                    ),),),
                ],
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>Part1()));
              },
              child: Stack(
                children: [Container(
                  width: MediaQuery.of(context).size.width *0.99,
                  height: MediaQuery.of(context).size.height *0.20,
                  child:  Image(image: AssetImage("images/fady4.png")),
                ),

                  Container(

                    margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.05,right: MediaQuery.of(context).size.width *0.05),
                    child: Text('''الخاتمة/ كيف تسدد نفقات التعليم الجامعي 
لولدك من خلا 7 الاف دولار لا غير؟      ''', style: TextStyle(
                        color: Colors.black, fontSize: 20
                    ),),),
                ],
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>Part1()));
              },
              child: Stack(
                children: [Container(
                  width: MediaQuery.of(context).size.width *0.99,
                  height: MediaQuery.of(context).size.height *0.20,
                  child:  Image(image: AssetImage("images/fady1.png")),
                ),
                  Container(
                    margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.06,right: MediaQuery.of(context).size.width *0.2),
                    child:  Text("سياسة الخصوصية وحقوق النشر", style: TextStyle(
                        color: Colors.black, fontSize: 20),),
                  ),

                ],
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>Part1()));
              },
              child: Stack(
                children: [Container(
                  width: MediaQuery.of(context).size.width *0.99,
                  height: MediaQuery.of(context).size.height *0.20,
                  child:  Image(image: AssetImage("images/fady2.png")),
                ),
                  Container(
                    margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.04,right: MediaQuery.of(context).size.width *0.25),
                    child:  Text("هل أعجبك الكتاب؟", style: TextStyle(
                        color: Colors.black, fontSize: 20),),
                  ),
                  Container(

                    margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.08,right: MediaQuery.of(context).size.width *0.18),
                    child: Text("حمل المزيد من الكتب من هنا", style: TextStyle(
                        color: Colors.black, fontSize: 20
                    ),),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
