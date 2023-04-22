import 'package:flutter/material.dart';

class Al7gog extends StatefulWidget {
  const Al7gog({Key? key}) : super(key: key);

  @override
  State<Al7gog> createState() => _Al7gogState();
}

class _Al7gogState extends State<Al7gog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 61, 89, 94),
      appBar: AppBar(
        title: Text("سياسة الخصوصية وحقوق النشر"),
        backgroundColor: Color.fromARGB(255, 61, 89, 94),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.23, right: MediaQuery.of(context).size.height *0.05,left: MediaQuery.of(context).size.height *0.05),
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.height *0.3,

           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(30),
             color: Colors.white,
           ),

           child: Center(
             child: Text(''' جميع الحقوق محفوظة للمؤلف ولدار النشر
             
              للتواصل والاستفسار والشكاوي
            
                         info@spinel.online
                         
                        
             
             ''',
             style: TextStyle(
               fontSize: 18,
             ),
             ),

           ),
        ),
      ),
    );
  }
}
