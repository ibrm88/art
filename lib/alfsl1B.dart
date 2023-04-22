import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class Alfsl1B extends StatefulWidget {

  const Alfsl1B({Key? key}) : super(key: key);


  @override

  State<Alfsl1B> createState() => _Alfsl1BState();
}

class _Alfsl1BState extends State<Alfsl1B> {
  final ScrollController controller = ScrollController();
  BannerAd? _bannerAd ;


  bool clr = false;
  double width = 19 ;
  int x = 0 ;

  InterstitialAd? _interstitialAd;

  // TODO: Implement _loadInterstitialAd()
  void _loadInterstitialAd() {
    InterstitialAd.load(
      adUnitId: 'ca-app-pub-9118481973136364/3440121717',
      request: AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (ad) {
          ad.fullScreenContentCallback = FullScreenContentCallback(
            onAdDismissedFullScreenContent: (ad) {

            },
          );

          setState(() {
            _interstitialAd = ad;
          });
        },
        onAdFailedToLoad: (err) {
          print('Failed to load an interstitial ad: ${err.message}');
        },
      ),
    );
  }

  Future<void> getX () async{
    Future.delayed(Duration(seconds: 5)).whenComplete(() => x = 1);
  }
  @override
  void initState() {
    _loadInterstitialAd();


    BannerAd(
      adUnitId: 'ca-app-pub-9118481973136364/8981605893',
      request: const AdRequest(),
      size: AdSize.banner,
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          setState(() {
            _bannerAd = ad as BannerAd;
          });
        },
        onAdFailedToLoad: (ad, err) {
          print('Failed to load a banner ad: ${err.message}');
          ad.dispose();
        },
      ),
    ).load();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    if(_interstitialAd != null){
      _interstitialAd!.show();
    }
    return Scaffold(
      backgroundColor:  (clr == true)?  Colors.black :Colors.white,
      appBar: AppBar(

        title: Text(" درس من روبرت فروست ",
          style: GoogleFonts.getFont('Almarai'),

        ),

      ),
      body:  SingleChildScrollView(

        child: Column(

            children: [
              _bannerAd != null ?
              Container(
                width: _bannerAd!.size.width.toDouble(),
                height: _bannerAd!.size.height.toDouble(),
                child:  AdWidget(ad: _bannerAd!) ,
              ):
              SizedBox(),
              Column(
                  children: [

                    Stack(

                      children:[ Container(

                        child:  Image(image: AssetImage("images/fady1.png"),

                        ),
                      ),
                        Container(
                          margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.04,right: MediaQuery.of(context).size.width *0.1),
                          child:  Text(" درس من روبرت فروست ",
                            style: TextStyle(
                                color: Colors.black, fontSize: 20),),
                        ),




                        Container(

                          margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.3,right: MediaQuery.of(context).size.width *0.01),

                          padding: EdgeInsets.symmetric( horizontal: MediaQuery.of(context).size.height *0.02),
                          child:
                          Text(
                            """  
روبرت فروست هو شاعري المفضل، ورغم أنني أحب العديد من قصائده فإن قصيدته الأثيرة منها هي الدرب المهجور وهي التي اعتدت على الإنصات لها كل يوم تقريبا. 
الدرب المهجور
دربان تفرق في الغابة الفتية 
ولا يمكن أن أطرقهما سويا.
وحيدا وقفت هناك أفكر ماليا 
وتمعنت بأحادهما ما بلغت عيناي
إلى أين أنثني في الغابة الفتية؟
وأخذت الدرب الثانية أخيرا
رأيت أنه أفضل طريق
 فعشبه كان ناظرا جميلا
فلم تطأ قدم هذا الطريق
فحينها لا أفكر كثيرا
لأسلك درب زحام العتيق
فكلا الطريقين كان أمامي
وكان علي اتخاذ القرار
طريق طويل كثير الترامي
وآخر سهل كثير المسار
أخذت الذي كنت فيه وحيدا
فلا للتراجع ولا للفرار
تمر السنون وأحكي حكاية 
قلبي الذي عاش دوما جسور
وكيف تغير مسار الحياة
عندما سلكت الدرب المهجور.
-  روبرت  فروست 1916- 

لطالما عدت قصيدة روبرت فروست المرة بعد المرة، ولقد كان قرار اختياري عدم الإنصات للوالد الحاصل على التعليم العالي قرارا مؤلما لكنه مثل قرار شكل ما بقي من حياتي. ولقد بدأ تعلمي عن المال ثورة اتخاذ القرار لمن منهما سأنصت. وتلقيت التعليم عن والدي الثري  طوال فترة 30 عاما حتى بلغت سن ال 39. ثم توقفت فورا عن أدركت أنني عرفت واستوعبت ما كان يحاول إقحامه في جمجمة السميكة. يعد المال أحد أشكال القوة، لكن التعليم المالي هو القوة الأكبر من المال، فالمال يأتي ويذهب، ولكنك إن كنت تعلمت أشياء عن طبيعة المال. فلديك السلطان النافذ عليه وبوسعك تحصيل ثروتك ولن يجدي التفكير الإيجابي للمرء نفعا وحده، إذ قد ذهب أغلب الناس إلى المدارس ولم يتعلموا أبدا شيئا عن طبيعة المال ولهذا أنفقوا أعمارهم في العمل جنيه. وحيث إنني كنت في الساعة التاسعة حينما خاطبت خطواتي الأولى، كانت دروس والدي الثرية بسيطة، وعندما قيل وفعل كل ما كان مطلوبا، كانت هناك ستة دروس وحسب تكررت عبر 30 عاما ويدور هذا الكتاب حول هذه الدروس الستة. ولكنها بنفس البساطة التي علمني إياها أبي. ولم يقصد بهذه الدروس أن تكون إجابات وإنما خطوط إرشادية ستعينك وتعين أطفالك على المضي نحو الثراء بغض النظر عما يحدث في عالم يزداد تغيرا بشكل متسارع. 

الدرس الأول: الأثرياء لا يعملون لجني المال.
الدرس الثاني: لماذا يتم تدريس الثقافة المالية؟
الدرس الثالث: فكر في عملك الخاص.
الدرس الرابع: تاريخ الضرائب ونفوذ المؤسسات .
الدرس الخامس: الثري يبتكر سبل الحصول على المال. 
الدرس السادس: ليكن عملك بهدف التعلم لا جمع المال.


 """ ,
                            style: TextStyle(
                              fontSize: width,
                              height: 2,
                              color: (clr != false)?  Colors.white :Colors.black,

                            ),



                            textAlign: TextAlign.justify,
                          ),
                        ),


                        Container(
                          margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.172, right: MediaQuery.of(context).size.width *0.08,left: MediaQuery.of(context).size.width *0.08),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.black12,
                          ),

                          height:  MediaQuery.of(context).size.height *0.07,
                          width:  MediaQuery.of(context).size.width *0.9,
                        ),
                        Row(

                          children: [


                            InkWell(

                              child: Container(
                                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.18,right: MediaQuery.of(context).size.width *0.13),
                                height: MediaQuery.of(context).size.height *0.05,
                                width: MediaQuery.of(context).size.width *0.09,
                                decoration: BoxDecoration(
                                  color: Colors.cyan,
                                  borderRadius: BorderRadius.circular(14),
                                  boxShadow: [BoxShadow(
                                    color: Colors.grey,
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(3, 3),
                                  ),],
                                ),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.black,

                                ),

                              ),
                              onTap: (){
                                width++;
                                setState(() {

                                });
                              },


                            ),


                            InkWell(
                              child: Container(
                                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.18,right: MediaQuery.of(context).size.width *0.13),
                                height: MediaQuery.of(context).size.height *0.05,
                                width: MediaQuery.of(context).size.width *0.09,
                                decoration: BoxDecoration(
                                  color: Colors.cyan,
                                  borderRadius: BorderRadius.circular(14),
                                  boxShadow: [BoxShadow(
                                    color: Colors.grey,
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(3, 3),
                                  ),],
                                ),
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.black,

                                ),

                              ),
                              onTap: (){
                                width--;
                                setState(() {

                                });
                              },


                            ),

                            InkWell(
                              child: Container(
                                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.18,right: MediaQuery.of(context).size.width *0.13),
                                height: MediaQuery.of(context).size.height *0.05,
                                width: MediaQuery.of(context).size.width *0.09,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(14),
                                  boxShadow: [BoxShadow(
                                    color: Colors.grey,
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(3, 3),
                                  ),],
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
                                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.18,right: MediaQuery.of(context).size.width *0.13),
                                height: MediaQuery.of(context).size.height *0.05,
                                width: MediaQuery.of(context).size.width *0.09,
                                decoration:
                                BoxDecoration(
                                  color: Colors.white,

                                  borderRadius: BorderRadius.circular(14),
                                  boxShadow: [BoxShadow(
                                    color: Colors.grey,
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(3, 3),
                                  ),],

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




                      ],


                    ),


                  ]
              )]    ),
      ),
    );
  }
}
