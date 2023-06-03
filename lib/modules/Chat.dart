import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/cubit/bloc.dart';
import 'package:graduation_project/cubit/states.dart';
import 'package:graduation_project/modules/colors.dart';
import 'package:graduation_project/modules/connect.dart';

class Chat extends StatelessWidget {
  bool border = false;
  bool mon = false;
  bool felo = false;
  bool bebo = false;
  int counter = 0;
  int c = 0;
  int child = 0;
  int girl = 0;
  int pro = 0;
  int sis = 0;
  var messagecontroller = TextEditingController();
  var dead = TextEditingController();
  var female = TextEditingController();
  var grandpa = TextEditingController();
  var mother = TextEditingController();
  var scaffoldkey = GlobalKey<ScaffoldState>();
  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (BuildContext context, AppStates state) {
        if (state is AppInsertDataBase) {
          Navigator.pop(context);
        }
      },
      builder: (BuildContext context, AppStates state) {
        AppCubit cubit = AppCubit.get(context);
        return Scaffold(
          body: Stack(
            children: [
              Image(
                image: const AssetImage('assets/images/Vector.jpg'),
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
                              onTap: () {
                                Navigator.pop(context);
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
                                    'assets/images/back.png',
                                  ),
                                ),
                              ),
                            ),
                            const Spacer(),
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
                        const Center(
                          child: Text(
                            'شات بوت',
                            style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Directionality(
                          textDirection: TextDirection.rtl,
                          child: ListView.separated(
                            physics: BouncingScrollPhysics(),
                              shrinkWrap: true,

                              itemBuilder: (ctx, i) => Text(AppCubit.get(context).messages[i]),
                              separatorBuilder: (ctx, i) => SizedBox(
                                    height: 16,
                                  ),
                              itemCount: AppCubit.get(context).messages.length),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 20,
                right: 20,
                left: 20,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey.withOpacity(0.5),
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          AppCubit.get(context).addMessage(messagecontroller.text);
                        },
                        child: Container(
                          height: 45.0,
                          width: 45.0,
                          decoration: BoxDecoration(
                            color: fontColor,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: const Image(
                            image: AssetImage('assets/images/send.png'),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Directionality(
                          textDirection: TextDirection.rtl,
                          child: Align(
                            alignment: Alignment.topRight,
                            child: TextFormField(
                              controller: messagecontroller,
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'من فضلك اكتب سؤالك'),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
