import 'package:flutter/material.dart';
import 'package:graduation_project/modules/Chat.dart';
import 'package:graduation_project/modules/colors.dart';
import 'package:graduation_project/modules/connect.dart';

class Example extends StatelessWidget {
  bool border=false;
  bool mon=false;
  bool felo=false;
  bool bebo=false;
  var father=TextEditingController();
  var female=TextEditingController();
  var grandma=TextEditingController();
  var boy=TextEditingController();
  var girl=TextEditingController();

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
          height: 10.0,
        ),
        Text('حل المسئلة',
          style: TextStyle(fontFamily: "Cairo" , color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30.0),),
        SizedBox(
          height: 15.0,
        ),
        Container(
          width:342.0,
          height:119.0,
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(40.0),
            border:Border.all(color:fontColor) ,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 20.0,
              ),
              Text('مقدار التركة', style: TextStyle(fontFamily: "Cairo" , color: fontColor,fontWeight: FontWeight.bold,fontSize: 20.0),),
              SizedBox(
                height: 18.0,
              ),
              Text('10000', style: TextStyle(fontFamily: "Cairo" , color: fontColor,fontWeight: FontWeight.bold,fontSize: 17.0),),
            ],
          ),

        ),
        SizedBox(
          height: 15.0,
        ),
        Text('نسبة النصيب', style: TextStyle(fontFamily: "Cairo" , color: fontColor,fontWeight: FontWeight.bold,fontSize: 17.0),),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height:48.0,
                    width: 342.0,
                    decoration: BoxDecoration(
                      border:Border.all(color:fontColor) ,
                        borderRadius: BorderRadius.circular(15.0),
                    ),
                    child:Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
Center(
  child:   Text('الاب',style: TextStyle(

    fontWeight: FontWeight.bold,

    color: fontColor,

    fontSize: 16.0,

  ),),
),
                          Spacer(),
                          Center(
                            child: Text('1/6',style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                            ),),
                          ),

                        ],
                      ),
                    ),
                      

                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    height:48.0,
                    width: 342.0,
                    decoration: BoxDecoration(
                      border:Border.all(color:fontColor) ,
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child:Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Center(
                            child:   Text('زوجة',style: TextStyle(

                              fontWeight: FontWeight.bold,

                              color: fontColor,

                              fontSize: 16.0,

                            ),),
                          ),
                          Spacer(),
                          Center(
                            child: Text('1/8',style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                            ),),
                          ),

                        ],
                      ),
                    ),


                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    height:48.0,
                    width: 342.0,
                    decoration: BoxDecoration(
                      border:Border.all(color:fontColor) ,
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child:Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Center(
                            child:   Text('ام الام',style: TextStyle(

                              fontWeight: FontWeight.bold,

                              color: fontColor,

                              fontSize: 16.0,

                            ),),
                          ),
                          Spacer(),
                          Center(
                            child: Text('1/6',style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                            ),),
                          ),

                        ],
                      ),
                    ),


                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    height:48.0,
                    width: 342.0,
                    decoration: BoxDecoration(
                      border:Border.all(color:fontColor) ,
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child:Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Center(
                            child:   Text('بنت',style: TextStyle(

                              fontWeight: FontWeight.bold,

                              color: fontColor,

                              fontSize: 16.0,

                            ),),
                          ),
                          Spacer(),
                          Center(
                            child: Text('13/120',style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                            ),),
                          ),

                        ],
                      ),
                    ),


                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    height:48.0,
                    width: 342.0,
                    decoration: BoxDecoration(
                      border:Border.all(color:fontColor) ,
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child:Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Center(
                            child:   Text('ولد',style: TextStyle(

                              fontWeight: FontWeight.bold,

                              color: fontColor,

                              fontSize: 16.0,

                            ),),
                          ),
                          Spacer(),
                          Center(
                            child: Text('13/30',style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                            ),),
                          ),

                        ],
                      ),
                    ),


                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Text('قيمة النصيب', style: TextStyle(fontFamily: "Cairo" , color: fontColor,fontWeight: FontWeight.bold,fontSize: 17.0),),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    width: 341.0,
                    height: 78.0,
                    decoration: BoxDecoration(
                      color: fontColor,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child:Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Text('الزوجة',style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),),
                        ),
                        SizedBox(
                          width: 150,
                        ),
                        Column(
                          children: [
                            Text('نصيب الفرد',style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),),
                            SizedBox(
                              height: 7.0,
                            ),
                            Text('1250.00',style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),),
                          ],
                        ),
                      ],
                    ),

                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    width: 341.0,
                    height: 78.0,
                    decoration: BoxDecoration(
                      color: fontColor,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child:Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Text('الاب',style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),),
                        ),
                        SizedBox(
                          width: 170,
                        ),
                        Column(
                          children: [
                            Text('نصيب الفرد',style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),),
                            SizedBox(
                              height: 7.0,
                            ),
                            Text('1250.00',style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),),
                          ],
                        ),
                      ],
                    ),

                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    width: 341.0,
                    height: 78.0,
                    decoration: BoxDecoration(
                      color: fontColor,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child:Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Text('ام الام',style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),),
                        ),
                        SizedBox(
                          width: 155,
                        ),
                        Column(
                          children: [
                            Text('نصيب الفرد',style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),),
                            SizedBox(
                              height: 7.0,
                            ),
                            Text('1250.00',style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),),
                          ],
                        ),
                      ],
                    ),

                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    width: 341.0,
                    height: 78.0,
                    decoration: BoxDecoration(
                      color: fontColor,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child:Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Text('البنت',style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),),
                        ),
                        SizedBox(
                          width: 165,
                        ),
                        Column(
                          children: [
                            Text('نصيب الفرد',style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),),
                            SizedBox(
                              height: 7.0,
                            ),
                            Text('1250.00',style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),),
                          ],
                        ),
                      ],
                    ),

                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    width: 341.0,
                    height: 78.0,
                    decoration: BoxDecoration(
                      color: fontColor,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child:Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Text('الولد',style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),),
                        ),
                        SizedBox(
                          width: 165,
                        ),
                        Column(
                          children: [
                            Text('نصيب الفرد',style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),),
                            SizedBox(
                              height: 7.0,
                            ),
                            Text('1250.00',style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),),
                          ],
                        ),
                      ],
                    ),

                  ),
                  SizedBox(
                    height: 22.0,
                  ),
                  Container(
                    height: 50.0,
                    width: 335.0,
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      border:Border.all(color:fontColor) ,

                    ),
                    child: MaterialButton(onPressed: (){},child:
                    Text('Export Pdf',
                      style: TextStyle(fontFamily: "Cairo" , color: fontColor,fontWeight: FontWeight.bold,fontSize: 16.0),
                    ),
                    ),
                  ),



                ],
              ),
            ),
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
