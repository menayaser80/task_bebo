import 'package:flutter/material.dart';
import 'package:graduation_project/modules/Chat.dart';
import 'package:graduation_project/modules/colors.dart';

class Connect extends StatelessWidget {
  bool border=false;
  bool mon=false;
  bool felo=false;
  bool bebo=false;
  int counter=0;
  int c=0;
  int child=0;
  int girl=0;
  int pro=0;
  int sis=0;
  var dead=TextEditingController();
  var female=TextEditingController();
  var grandpa=TextEditingController();
  var mother=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
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
                    Center(
                      child: Text('تواصل معنا',style: TextStyle(fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Container(
                      height: 206.0,
                      width: 342.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35.0),
                        color: Colors.grey[200],
                        border:Border.all(color:fontColor) ,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Text('شبكات التواصل',style: TextStyle(
                              color: fontColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 21.0
                            ),),
                            SizedBox(
                              height: 60.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15.0),
                              child: Row(
                                children: [
                                  InkWell(
                                      onTap: (){
                                      },
                                      child: Image(image: AssetImage('assets/images/face.png'),)),
                                  SizedBox(
                                    width: 55,
                                  ),
                                  InkWell(
                                      onTap: (){},
                                      child: Image(image: AssetImage('assets/images/google.png'),)),
                                  SizedBox(
                                    width: 55,
                                  ),
                                  InkWell(
                                      onTap: (){},
                                      child: Image(image: AssetImage('assets/images/twitter.png'),)),
                                ],
                              ),
                            ),
                          ],
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
