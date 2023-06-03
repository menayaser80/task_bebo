import 'package:flutter/material.dart';
import 'package:graduation_project/modules/Chat.dart';
import 'package:graduation_project/modules/colors.dart';
import 'package:graduation_project/modules/connect.dart';
import 'package:graduation_project/modules/mother.dart';
class Die extends StatefulWidget {
  const Die({Key? key}) : super(key: key);

  @override
  State<Die> createState() => _DieState();
}

class _DieState extends State<Die> {
  bool border=false;

  var money=TextEditingController();

  bool mon=false;

  bool felo=false;

  bool bebo=false;
  bool male=false;
  bool female=false;
  bool live=false;
  bool die=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(
            image: AssetImage('assets/images/Vector.jpg'),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fitHeight,
          ),
SizedBox(
  width: double.infinity,
  child: SingleChildScrollView(
    child: Padding(
      padding: const EdgeInsets.all(20.0),
child: Column(
  children: [
    Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Container(
            height: 45.0,
            width: 45.0,
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Image(
              image: AssetImage(
                'assets/images/back.png',
              ),
            ),
          ),
        ),
        Spacer(),
        InkWell(
          onTap: () {
            showDialog(
                barrierDismissible: false,
                context: context,
                builder: (context) {
                  return StatefulBuilder(
                      builder: (context, nsetState) {
                        return AlertDialog(
                          backgroundColor: Colors.white,
                          actionsAlignment:
                          MainAxisAlignment.center,
                          title: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.end,
                            children: [
                              const Text(
                                'مواريث',
                                style: TextStyle(
                                    fontFamily: "Cairo",
                                    color: Colors.black,
                                    fontWeight:
                                    FontWeight.bold),
                              ),
                              const SizedBox(
                                width: 15.0,
                              ),
                              Container(
                                height: 65,
                                width: 65,
                                clipBehavior:
                                Clip.antiAliasWithSaveLayer,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle),
                                child: const Image(
                                  image: AssetImage(
                                    'assets/images/Bebo.jpg',
                                  ),
                                  height: 65,
                                  width: 65,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),

                          // ignore: sized_box_for_whitespace
                          content: Container(
                            height: 540.0,
                            width: 342.0,
                            decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.circular(50.0),
                            ),
                            child: Padding(
                              padding:
                              const EdgeInsets.symmetric(
                                  vertical: 50.0),
                              child: Column(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder:
                                                (context) =>
                                                Chat(),
                                          ));
                                    },
                                    child: Ink(
                                      height: 40.0,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius
                                            .circular(15.0),
                                        color: border
                                            ? Colors.blue
                                            : Colors.white,
                                      ),
                                      child: Row(
                                        children: [
                                          const Image(
                                              image: AssetImage(
                                                  'assets/images/back.png')),
                                          const Spacer(),
                                          const Text(
                                            'شات بوت',
                                            style: TextStyle(
                                                fontFamily:
                                                "Cairo",
                                                color: Colors
                                                    .black,
                                                fontSize: 20.0),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 25.0,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      if (mon == true) {
                                        nsetState(() {
                                          mon = false;
                                          felo=false;
                                        });
                                      } else {
                                        nsetState(() {
                                          mon = true;
                                          felo=false;
                                        });
                                      }
                                    },
                                    child: Ink(
                                      height: 40.0,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius
                                            .circular(15.0),
                                        color: mon
                                            ? Colors.blue
                                            : Colors.white,
                                      ),
                                      child: Row(
                                        children: [
                                          const Image(
                                              image: AssetImage(
                                                  'assets/images/back.png')),
                                          const Spacer(),
                                          const Text(
                                            'مسالة جديدة',
                                            style: TextStyle(
                                                fontFamily:
                                                "Cairo",
                                                color: Colors
                                                    .black,
                                                fontSize: 20.0),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 25.0,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder:
                                                (context) =>
                                                Connect(),
                                          ));
                                    },
                                    child: Ink(
                                      height: 40.0,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius
                                            .circular(15.0),
                                        color: felo
                                            ? Colors.blue
                                            : Colors.white,
                                      ),
                                      child: Row(
                                        children: [
                                          const Image(
                                              image: AssetImage(
                                                  'assets/images/back.png')),
                                          const Spacer(),
                                          const Text(
                                            'تواصل معنا',
                                            style: TextStyle(
                                                fontFamily:
                                                "Cairo",
                                                color: Colors
                                                    .black,
                                                fontSize: 18.0),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 25.0,
                                  ),
                                  InkWell(
                                    onTap: (){

                                    },
                                    child: Ink(
                                      height: 40.0,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15.0),
                                        color:felo ? Colors.blue:Colors.white,
                                      ),
                                      child:Row(
                                        children: [
                                          Image(image: AssetImage(
                                              'assets/images/back.png'
                                          )),
                                          Spacer(),
                                          Text('خيارات متقدمة',style: TextStyle(fontFamily: "Cairo" , color: Colors.black,fontSize: 18.0),
                                          ),

                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      });
                });
          },
          child: Container(
            height: 45.0,
            width: 45.0,
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: const Image(
              image: AssetImage(
                'assets/images/menu.png',
              ),
            ),
          ),
        ),






      ],
    ),
    SizedBox(
      height: 35.0,
    ),
    Text('المواريث',
      style: TextStyle
        (fontFamily: "Cairo" , color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30.0),
    ),
    SizedBox(
      height: 50.0,
    ),
    Directionality(
      textDirection: TextDirection.rtl,
      child: Column(

        children: [
          Align(
            alignment: Alignment.topRight,
            child: Text('نوع المتوفي',
              style: TextStyle(
                fontFamily: "Cairo" , color: Colors.black,fontWeight: FontWeight.bold,fontSize: 23.0
            ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            children: [
              InkWell(
                onTap: (){
                  if(male==true){
                    setState((){
                      male=false;
                      female=false;
                    });
                  }else
                  {
                    setState((){
                      male=true;
                      female=false;
                    });
                  }
                },
                child: Container(
                  height: 106.0,
                  width: 152.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color:male ? fontColor:Colors.white,
                    border:Border.all(color:fontColor) ,
                  ),
                  child: Column(
children: [
  Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Image(image: AssetImage('assets/images/male.png'),color: fontColor,),
  ),
  Text('ذكر', style: TextStyle(
      fontFamily: "Cairo" , color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22.0
  ),)

],
                  ),
                ),
              ),
              SizedBox(
                width: 23.0,
              ),
              InkWell(
                onTap: (){
                  if(female==true){
                    setState((){
                      female=false;
                      male=false;
                    });
                  }else
                  {
                    setState((){
                      female=true;
                      male=false;
                    });
                  }
                },
                child: Container(
                  height: 106.0,
                  width: 152.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color:female ? fontColor:Colors.white,
                    border:Border.all(color:fontColor) ,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child:
                        Image(image: AssetImage('assets/images/fema.png'),
                        ),
                      ),
                      Text('انثي', style: TextStyle(
                          fontFamily: "Cairo" , color: Colors.black,fontWeight: FontWeight.bold,fontSize: 21.0
                      ),)

                    ],
                  ),
                ),
              ),

            ],
          ),
          SizedBox(
            height: 15.0,
          ),
          Align(
            alignment: Alignment.topRight,
            child: Text('حالة الاب',
              style: TextStyle(
                  fontFamily: "Cairo" , color: Colors.black,fontWeight: FontWeight.bold,fontSize: 23.0
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            children: [
              InkWell(
                onTap: (){
                  if(live==true){
                    setState((){
                      live=false;
                      die=false;
                    });
                  }else
                  {
                    setState((){
                      live=true;
                      die=false;
                    });
                  }
                },
                child: Container(
                  height: 106.0,
                  width: 152.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color:live ? fontColor:Colors.white,
                    border:Border.all(color:fontColor) ,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        child: Text('حي', style: TextStyle(
                            fontFamily: "Cairo" , color: Colors.black,fontWeight: FontWeight.bold,fontSize: 28.0
                        ),),
                      )

                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 23.0,
              ),
              InkWell(
                onTap: (){
                  if(die==true){
                    setState((){
                      die=false;
                      live=false;
                    });
                  }else
                  {
                    setState((){
                      die=true;
                      live=false;
                    });
                  }
                },
                child: Container(
                  height: 106.0,
                  width: 152.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color:die ? fontColor:Colors.white,
                    border:Border.all(color:fontColor) ,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        child: Text('ميت', style: TextStyle(
                            fontFamily: "Cairo" , color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25.0
                        ),),
                      )

                    ],
                  ),
                ),
              ),

            ],
          ),
          SizedBox(
            height: 190.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 59.0,
                  width: 151.0,
                  decoration: BoxDecoration(
                    color: fontColor,
                    borderRadius: BorderRadius.circular(15.0),

                  ),
                  child: MaterialButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder:(context)=>Mother(),
                    ));
                  },child:
                  Text('التالي',
                    style: TextStyle(fontFamily: "Cairo" , color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20.0),
                  ),
                  ),
                ),

                SizedBox(
                  width: 20.0,
                ),


                Container(
                  height: 59.0,
                  width: 151.0,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(15.0),
                    border:Border.all(color:fontColor) ,

                  ),
                  child: MaterialButton(onPressed: (){},child:
                  Text('الغاء',
                    style: TextStyle(fontFamily: "Cairo" , color: fontColor,fontWeight: FontWeight.bold,fontSize: 20.0),
                  ),
                  ),
                ),
              ],
            ),
          ),


        ],
      ),
    ),
  ],
),
    ),
  ),
),

        ],
      ),
    );
  }
}
