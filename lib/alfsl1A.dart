import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class Alfsl1A extends StatefulWidget {

  const Alfsl1A({Key? key}) : super(key: key);


  @override

  State<Alfsl1A> createState() => _Alfsl1AState();
}

class _Alfsl1AState extends State<Alfsl1A> {
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

        title: Text(" قصة الأب الثري والأب الفقير ",
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
                          child:  Text(" قصة الأب الثري والأب الفقير ",
                            style: TextStyle(
                                color: Colors.black, fontSize: 20),),
                        ),




                        Container(

                          margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.3,right: MediaQuery.of(context).size.width *0.01),

                          padding: EdgeInsets.symmetric( horizontal: MediaQuery.of(context).size.height *0.02),
                          child:
                          Text(
                            """  
 كما يرويها روبرت كيزاكي:
 كأن لي أبوان أحدهما ثري والآخر فقير، أحدهما صاحب تعليم  رفيع وذكاء وحاصل على درجة الدكتوراه. كان قد أنهى دراسته البالغة أربع سنوات في أقل من سنتين ثم ذهب ليلتحق بجامعة إستانفورد ثم جامعة شيكاغو ثم جامعة نورثويسترن ليتم  دراسته العليا وكانت جميعها منح دراسية كاملة تدور حول موضوع التمويل. أما الأب الآخر فلم ينجز صفه الثامنة أبدا. كان كلا الرجلين ناجحا في مجاله عاملا بجد طوال حياته. وجنا كلاهما دخلا مرتفعا، أحدهما ظل يكافح ماليا طوال حياته، فيما أضحى الآخر أحد أثرى الأثرياء في هواي. وقد مات أحدهما تاركا لعائلته عشرات الملايين من الدولارات ومؤسسات خيرية وإحدى دور العبادة التي بناها. فيما خلف الآخر وراءه ديونا مستحقة السداد. كان كذا الرجلين قويا وصاحب شخصية وتأثير، وقد قدم لي كلاهما نصيحة وإن اختلف محتواها إذ اّمن كلا الرجلين بشدة بالتعليم لكن لم يزكيا مسار الدراسة نفسه، فلو كان لي والد واحد فقط لكنت قد قابلت أو رفضت نصيحته، لكن وجود أبوين ينصحاني قد ترك لي الخيار ما بين وجهتي نظر متعارضتين إحداهما للرجل ميسور والأخرى لرجل فقير. وبدلا من قبول إحداهما أو تركها ببساطة، وجدت نفسي أمعن في التفكير والمقارنة ومن ثم الاختيار لنفسي. ولقد تمثلت المشكلة حينها في أن الرجل الثري لم يكن قد أضحى ثريا بعد، كما لم يكن الأب الفقير قد صار فقيرا، فقد كان كلاهما في بدايات مسارهما. وكان كلاهما يكافح مع أعماله وعائلته. لكن كليهما كانت له وجهة نظر مختلفة عن المال. كان أحدهما يقول على سبيل المثال، حب المال رأس كل خطيئة، فيما يقول الآخر قلة ذات اليد هي رأس كل خطيئة. وكفتى صغير كان وجوده أبوين قويين، كلاهما ذو تأثير كبير على شخصيته شيئا صعبا فقد رغبت أن أكون فتى صالحا وأن أنصت، لكن الأبوين لم يكون يقولان الأشياء ذاتها. كما أن تناقض في وجهتي نظريهما، وخاصة حين يتعلق الأمر بالمال، متطرفا للغاية. فنشأت فضوليا متأثرا بكليهما، وقد بدأت أفكر ولفترات طويلة، فيما كان كلاهما يقوله. كنت أنفق الكثير من وقتي متمعنا سائلا نفس السؤال ذاته. لما قال الرجل ما قال ثم طارحني سؤال نفسه عما قاله أبي الآخر. ومع إنه كان من الأيسر لي كثيرا القول ببساطة نعم، قد أصاب في مقال، فأنا أتفق مع هذا أو أن أرفض ببساطة ووجهة نظر أحدهما قائلا إن الرجل العجوز لا يعرف ما يتكلم عنه إلا أن مرافقتي لأبوين أحببتهما قد دفعني للتفكير وأن أخلص في اكتساب طريقة الخاصة في التفكير. وقد أضحت عملية اختياري لنفسي أكثر قيمة على المدى الطويل مما لو كنت قد قبلت ببساطة إحدى وجهتي نظر أو رفضتها. إن أحد الأسباب التي تدفع بالأب الثري لمزيد من الثراء و بالأب الفقير لمزيد من الفقر و بالأب المنتمي للطبقة الوسطى للمزيد من المعاناة مع الديون هو أن موضوع المالي يبدأ طرحه للتعليم في المنزل وليس في المدارس. فأغلبنا تلقى معرفته عن المال من أبويه، فما الذي يسع أبا فقيرا أن يخبر به ابنه عن المال سيقول له ابقى في المدرسة وادرس بجد ثم قد يتخرج الطفل بدرجات ممتازة لكنه سيتخرج بعقلية ومعرفة مالية ضحلتين تلقى مفرداتها في مكان صغيرة. إننا لا ندرس المال في مدارسنا، فالمدرسة تركز على المهارات المدرسية والمهنية وليس على المهارات المالية، وهذا ما يفسر لماذا قد يعاني المصرفيون والأطباء والمحاسبون الذين نالوا درجات ممتازة في الدراسة مالياً او طوال حياتهم. إن ديوننا القوية المتزايدة ترجع بقدر كبير إلى السياسيين رافع التعليم وإلى المسؤولين الحكوميين الذين يتخذون القرارات المالية بخلفية ضئيلة أو معدومة عن المال. وإنني لأتطلع أحيانا إلى الألفية الجديدة وأتساءل ما الذي سيحدث عندما يكون لدينا  ملايين  من الناس الذين يحتاجون عونا طبيا وماليا. هل سيصيرون عالة على عائلاتهم أو حكوماتهم؟ وما الذي سيحدث عندما تنفذ أموال الرعاية الطبية والأمان الاجتماعي.
 
وكيف النجاة لأمة إن هي ظلت توكل  تلقين أبنائها المعرفة بالمال إلى الآباء والذين هم في طريقهم أو قد صاروا بالفعل إلى الفقر؟ ولأنني عايشت أبوين ذوي نفوذ، فإنني تعلمت منهما معاً . فقد كان علي تفكير في نصيحة كل منهما، وفي خضم ذلك اكتسبت بصيرة هائلة بما لأفكار المرء من تأثير ونفوذ على حياته. فعلى سبيل المثال. كان من عادات أحد أبوي أن يقول ليس بوسع القيام بذلك، فيما امتنع أبي الآخر عن استخدام هذه الكلمات، حيث كان يصر على أن يقول كيف لي القيام بذلك. فكانت مقولة أحدهما بمثابة تصريح عن نفسه فيما كانت مقولة الآخر سؤالا كانت واحدة من هاتين المقولتين تكفيك عناء التفكير فيما تدفعك الأخرى إليه. وكان بوسع أبي الذي سيصير سريعا إلى الثراء تفسير ذلك تلقائيا بأن يقول إن مقولة ليس بوسع القيام بذلك تدفع عقلك تلقائيا للتوقف عن العمل. أما بطرحك السؤال كيف لي القيام بذلك فأنت تتبع عقلك إلى العمل. ولم يكن يقصد بذلك القول أن بوسع المرء القيام بكل ما يرغب. به. بل كان متحمسا بشدة لأعمال العقل والذي هو أقوى حاسب آلي في العالم حيث كان يقول إن عقلي يزداد قوة في كل يوم لأني أدفعه للعمل. وكلما ازداد قوة يزداد ما أجنيه من المال، فقد آمن بشدة أن قول المرء ليس بوسعه القيام بذلك يمثل علامة للكسل العقلي. وعلى الرغم من أن كلا الأبوين قد عمل بكد، إلا أنني لاحظ أن أحدهما يخلد عقله إلى النوم ساعت يفكر في المال، فيما كان أحدهما يدفع به إلى العمل. فتمثلت النتيجة طويلة الأجل لهذا في أن أحد الأبوين قد تنامت قوته المالية فيما وهنت عند الآخر. وليس ثمة اختلافا كبيرا في هذا عن ذهاب شخص إلى صالة الجمباز ليتدرب بانتظام، في حين يضطجع الآخر أمام التلفاز. فالتدريب الجسدي الملائم يزيد من فرص بلوغ الصحة البدنية والتدريب العقلي يزيد من فرص جني ثروة. فيما يخفض الكسل من فرص تحقيق أي من الصحة أو الثروة. لقد كان لأبوي اتجاهين فكريان مختلفان إذا رأى أحدهما أن على الميسورين سداد المزيد من الضرائب لمساعدة أولئك الأقل حظا، فيما كان الآخر يقول تعاقب الضرائب أولئك الذين ينتجون وتكافئ وأولئك الذين لا ينتجون. كانت نصيحة أحدهما أدرس بجد لتجد شركة جيدة تعمل بها، بينما كانت نصيحة الآخر أدرس بجد حتى تجد شركة جيدة فتشتريها.
كان أحدهما يقول أحد أسباب عدم بلوغ الثراء هو أن لدي أطفال، أما الآخر فكان يقول السبب الذي لا بد لأجله أن أبلغ الثراء هو أن لدي أطفال كان أحدهما يشجع على الحديث عن المال والأعمال على مائدة العشاء، فيما منع الآخر الحديث عن المال ساعة الطعام. كان أحدهما يقول عندما يأتي وقت المال يحاول اللعب في الجانب الآمن ولا تخاطر بينما كان الآخر يقول تعلم كيف تدير المخاطر. آمن أحدهما بأن منزلنا هو استثمارنا الأكبر وأصلنا الأضخم، بينما آمن الآخر بأن منزله إنما هو التزام. وإذا كان منزلك هو استثمارك الأكبر، فأنت واقع في مشكلة. لقد سددك إلى الأبوين مستحقاتهما في وقتها. كل ما هنالك أن أحدهما بادر وسدد مستحقاته مقدما. فيما سددها الآخر لاحقا. أمن أحدهما بأن الشركة أو الحكومة سترعاك وترعى حاجاتك. فعني على الدوام بزيادة الراتب وخطط التقاعد ومنافع الرعاية الطبية والإجازات المرضية. وأيام العطلة وسائر تلك الزخارف حيث كان متأثرا ببعض أقربائه الذين التحقوا بالجيش ونالوا خطط تقاعد ومستحقات لبقية حياتهم بعد خدمة استمرت ل20 عاما. ولقد أحب فكرة منافع رعاية الطبية والمزايا التي يتيحها الجيش لمتقاعديه. كما أحب نظام التثبيت الذي أتاحته له الجامعة وبدت له فكرة الحماية التي تقدمها الوظيفة مدى الحياة وكذلك المنافع الوظيفية. أكثر أهمية في بعض الأحيان من الوظيفة ذاتها، فكان يردد قد عملت باجتهاد في الحكومة ويستحق هذه المنافع. أما الأب الآخر فأمن بالاعتماد المالي الذاتي الكامل وانتقد عقلية المستحقات وكيف أوجدت أناس معوزين وذوي مركز مالي واهن. وكان يشدد على تحقيق الجدارة المالية. كان أحدهما يكافح ليدخر قلة من الدولارات في مكان الآخر يبني الاستثمارات بسهولة. علمني أحدهما كيف أكتب التماسا مؤثرا يخولني الحصول على وظيفة، بينما علمني الآخر الصيغة الحسنة لخطط المال والأعمال لأخلق وظائف للآخرين.
 وكوني محصلة لفكرة أبوين مؤثرين. أتاح لي ذلك ملاحظة أثر توجهين فكريين مختلفين على حياة صاحبيهما. فعلمت أن الناس حقا يشكلون حياتهم من خلال أفكارهم. فعلى سبيل المثال كان أبي الفقير يقول دوما لن أحقق الثراء أبدا. وقد أضحت تلك النبوءة حقيقة، أما والدي الثري فعلى الطرف الآخر كان يشير لنفسه على الدوام بكونه ثريا. كان يقول أشياء مثل إنني رجل ثري والأثرياء لا يفعلون هذا. وحتى بعد تعرضه لأزمة مالية بكل ما تحمله الكلمة من معنى، استمر يشير لنفسه كرجل ثري. وكان يعلق على أزمته قائلا. هناك فارق بين كون المرء معوزا وبين تعرضه لأزمة مالية فالأزمات وقتية. أما الفقر فأبدي. أما أبي الفقير فكان يقول لا يتملكني الاهتمام بالمال، أو إن المال ليس شيئا مهما بينما كان أبي الثري قول المال قوة. وقد لا نستطيع قياس قوة أفكارنا أبدا أو تقدير قوتها، لكنه أضحى جليا لكل طفل أن أكون واعيا بأفكاره وبالكيفية التي أرمز بها لنفسي، فإننا نجذب لأنفسنا ما نفكر فيه. فقد لاحظت أن والدي الفقيرة كان فقيرا ليس بسبب قدر المال الذي كان يجنيه والذي كان كبيرا. ولكن كان ذلك بسبب أفكاره وسلوكياته. وكفتى صغير عايش أبوين أضحيت واعيا تمام الوعي بالحذر من أي أفكار اعتنقتها لنفسي وأي الأبوين أنصت إليه هل أنصت للثري منهما أم للفقير؟ وعلى الرغم من أن كلا الرجلين بالغ مبالغة عظيمة في احترام التعليم والتعلم. إلا أنهما اختلفا فيما ارتأياه  جديرا بالتعلم، فقد أرادني أحدهما أن أدرس بجد وأنال الدرجات وأحصل على وظيفة لأجل المال. لقد أراد من الدراسة أن أصير محترفا، أي أن أصير محاميا أو محاسبا، أو أن أدرس لأحصل على الماجستير. أما الآخر فشجعني على دراسة لأصير ثريا ول أفهم طبيعة المال ولأتعلم كيف أضعه موضع العمل لصالحي. إنني لا أعمل من أجل المال، بل المال هو ما يعمل لأجلي تلك كلمات كان يرددها على مسامع مرارا وتكرارا، وفي سن التاسعة قررت أن أنصت وأنا أتعلم من والدي الثري ما يقوله عن المال. وفي سعي هذا اخترت أن لا أنصت لوالدي الفقير، وإن كان هو الحاصل على الدرجات الجامعية. 


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
