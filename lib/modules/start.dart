import 'package:flutter/material.dart';
import 'package:graduation_project/modules/Chat.dart';
import 'package:graduation_project/modules/colors.dart';
import 'package:graduation_project/modules/connect.dart';
import 'package:graduation_project/modules/next.dart';


class Start extends StatefulWidget {
  const Start({Key? key}) : super(key: key);

  @override
  State<Start> createState() => _StartState();
}
class _StartState extends State<Start> {
  bool border=false;
  var money=TextEditingController();
  bool mon=false;
  bool felo=false;
  bool bebo=false;
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
  child:   Padding(
    padding: const EdgeInsets.all(20.0),
    child:   Column(
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
          height: 20.0,
        ),
        Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Text('مقدار التركة',style: TextStyle(
                    fontFamily: "Cairo" , color: Colors.black,fontWeight: FontWeight.bold,fontSize: 17.0
                ),),
              ),
              SizedBox(
                height: 5.0,
              ),
              Align(
                alignment:Alignment.topRight ,
                child: Container(
                  height: 80.0,
                  width: 325.0,
                  child: TextFormField(
                      controller: money,
                      decoration: InputDecoration(
                        hintText: 'من فضلك ادخل مقدار التركة',
                        enabledBorder: OutlineInputBorder(
                          borderSide:  BorderSide(
                            color: Colors.grey ,
                          ),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      )),



                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height:60.0,
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
              SizedBox(
                width: 20.0,
              ),
              Container(
                height: 59.0,
                width: 151.0,
                decoration: BoxDecoration(
                  color: fontColor,
                  borderRadius: BorderRadius.circular(15.0),

                ),
                child: MaterialButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder:(context)=>Example(),
                  ));
                },child:
                Text('التالي',
                  style: TextStyle(fontFamily: "Cairo" , color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20.0),
                ),
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
