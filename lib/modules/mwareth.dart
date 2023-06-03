import 'package:flutter/material.dart';
import 'package:graduation_project/modules/Chat.dart';
import 'package:graduation_project/modules/colors.dart';
import 'package:graduation_project/modules/connect.dart';
import 'package:graduation_project/modules/solution.dart';

class Mwareeth extends StatefulWidget {
  @override
  State<Mwareeth> createState() => _MwareethState();
}

class _MwareethState extends State<Mwareeth> {
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
                    SizedBox(
                      height: 35.0,
                    ),
                    Text('المواريث',
                      style: TextStyle(fontFamily: "Cairo" , color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30.0),),
                    SizedBox(
                      height: 20.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('كم عدد الابناء الذكور',
                          style: TextStyle(fontFamily: "Cairo" , color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20.0),
                        ),
                        Container(
                          height:70.0,
                          width:double.infinity ,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.grey[100],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    InkWell(
                                      onTap: (){
                                        setState(() {
                                          counter++;
                                        });
                                      },
                                      child: Image(image:
                                      AssetImage('assets/images/plus.png'),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 14.0,
                                    ),
                                    InkWell(
                                        onTap: (){
                                          if(counter<=0){
                                          }else{
                                            setState(() {
                                              counter--;
                                            });
                                          }

                                        },
                                        child: Image(image: AssetImage('assets/images/minus.png'))),
                                  ],
                                ),
                                SizedBox(
                                  width: 250.0,
                                ),
                                Text('$counter',style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.black,
                                ),),


                              ],

                            ),
                          ),

                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Text('كم عدد الابناء البنات',
                          style: TextStyle(fontFamily: "Cairo" , color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20.0),
                        ),
                        Container(
                          height:70.0,
                          width:double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.grey[100],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    InkWell(
                                        onTap: (){
                                          setState(() {
                                            c++;
                                          });
                                        },
                                        child: Image(image: AssetImage('assets/images/plus.png'))),
                                    SizedBox(
                                      height: 14.0,
                                    ),
                                    InkWell(
                                        onTap: (){
                                          if(c<=0){
                                          }else{
                                            setState(() {
                                              c--;
                                            });
                                          }
                                        },
                                        child: Image(image: AssetImage('assets/images/minus.png'))),
                                  ],
                                ),
                                SizedBox(
                                  width: 250.0,
                                ),
                                Text('$c',style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.black,
                                ),),


                              ],

                            ),
                          ),

                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Text('كم عدد ابناء الابناء',
                          style: TextStyle(fontFamily: "Cairo" , color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20.0),
                        ),
                        Container(
                          height:70.0,
                          width:double.infinity ,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.grey[100],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    InkWell(
                                        onTap: (){
                                          setState(() {
                                            child++;
                                          });
                                        },
                                        child: Image(image: AssetImage('assets/images/plus.png'))),
                                    SizedBox(
                                      height: 14.0,
                                    ),
                                    InkWell(
                                        onTap: (){
                                          if(child<=0){
                                          }else{
                                            setState(() {
                                              child--;
                                            });
                                          }
                                        },
                                        child: Image(image: AssetImage('assets/images/minus.png'))),
                                  ],
                                ),
                                SizedBox(
                                  width: 250.0,
                                ),
                                Text('$child',style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.black,
                                ),),


                              ],

                            ),
                          ),

                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Text('كم عدد بنات الابناء',
                          style: TextStyle(fontFamily: "Cairo" , color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20.0),
                        ),
                        Container(
                          height:70.0,
                          width:double.infinity ,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.grey[100],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    InkWell(
                                        onTap: (){
                                          setState(() {
                                            girl++;
                                          });
                                        },
                                        child: Image(image: AssetImage('assets/images/plus.png'))),
                                    SizedBox(
                                      height: 14.0,
                                    ),
                                    InkWell(
                                        onTap: (){
                                          if(girl<=0){
                                          }else{
                                            setState(() {
                                              girl--;
                                            });
                                          }
                                        },
                                        child: Image(image: AssetImage('assets/images/minus.png'))),
                                  ],
                                ),
                                SizedBox(
                                  width: 250.0,
                                ),
                                Text('$girl',style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.black,
                                ),),


                              ],

                            ),
                          ),

                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Text('كم عدد الاخوة الاشقاء',
                          style: TextStyle(fontFamily: "Cairo" , color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20.0),
                        ),
                        Container(
                          height:70.0,
                          width:double.infinity ,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.grey[100],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    InkWell(
                                        onTap: (){
                                          setState(() {
                                            pro++;
                                          });
                                        },
                                        child: Image(image: AssetImage('assets/images/plus.png'))),
                                    SizedBox(
                                      height: 14.0,
                                    ),
                                    InkWell(
                                        onTap: (){
                                          if(pro<=0){
                                          }else{
                                            setState(() {
                                              pro--;
                                            });
                                          }
                                        },
                                        child: Image(image: AssetImage('assets/images/minus.png'))),
                                  ],
                                ),
                                SizedBox(
                                  width: 250.0,
                                ),
                                Text('$pro',style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.black,
                                ),),


                              ],

                            ),
                          ),

                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Text('كم عدد الاخوات الاشقاء',
                          style: TextStyle(fontFamily: "Cairo" , color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20.0),
                        ),
                        Container(
                          height:70.0,
                          width:double.infinity ,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.grey[100],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    InkWell(
                                        onTap: (){
                                          setState(() {
                                            sis++;
                                          });
                                        },
                                        child: Image(image: AssetImage('assets/images/plus.png'))),
                                    SizedBox(
                                      height: 14.0,
                                    ),
                                    InkWell(
                                        onTap: (){
                                          if(sis<=0){
                                          }else{
                                            setState(() {
                                              sis--;
                                            });
                                          }
                                        },
                                        child: Image(image: AssetImage('assets/images/minus.png'))),
                                  ],
                                ),
                                SizedBox(
                                  width: 250.0,
                                ),
                                Text('$sis',style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.black,
                                ),),


                              ],

                            ),
                          ),

                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        Row(
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
                              width: 30.0,
                            ),
                            Container(
                              height: 59.0,
                              width: 151.0,
                              decoration: BoxDecoration(
                                color: fontColor,
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: MaterialButton(onPressed: (){
                                showDialog(
                                    barrierDismissible: false,
                                    context: context,
                                    builder: (context) {
                                      return StatefulBuilder(
                                          builder:(context,nsetState){
                                            return
                                              AlertDialog(
                                                backgroundColor: Colors.white,
                                                actionsAlignment: MainAxisAlignment.center,
                                                title:Row(
                                                  mainAxisAlignment: MainAxisAlignment.end,
                                                  children: [
                                                    Text('اضافة اسماء الورثة',
                                                      style: TextStyle(fontFamily: "Cairo" , color: Colors.black,fontWeight: FontWeight.bold,fontSize: 23.0),
                                                    ),
                                                  ],
                                                ),

                                                content: Container(
                                                  height: 540.0,
                                                  width: 342.0,
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(50.0),
                                                  ),
                                                  child: Padding(
                                                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                                                    child: Directionality(
                                                      textDirection: TextDirection.rtl,
                                                      child: SingleChildScrollView(
                                                        child: Column(
                                                          children: [
                                                            Row(
                                                              crossAxisAlignment: CrossAxisAlignment.end,
                                                              children: [
                                                                Text('المتوفي',
                                                                  style: TextStyle(fontFamily: "Cairo" , color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20.0),
                                                                ),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height:15.0,
                                                            ),
                                                            TextFormField(
                                                                controller: dead,

                                                              keyboardType: TextInputType.emailAddress,
                                                              decoration: InputDecoration(
                                                                  enabledBorder: OutlineInputBorder(

                                                                    borderRadius: BorderRadius.circular(20),
                                                                  ),
                                                                hintText: 'من فضلك ادخل اسم المتوفي',
                                                              ), onChanged: (value)
                                                                {
                                                                  print(value);
                                                                }
                                                            ),
                                                            SizedBox(
                                                              height: 20.0,
                                                            ),
                                                            Row(crossAxisAlignment: CrossAxisAlignment.end,
                                                              children: [
                                                                Text('الزوجة الاولي',
                                                                  style: TextStyle(fontFamily: "Cairo" , color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20.0),
                                                                ),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height:10.0,
                                                            ),
                                                            TextFormField(
                                                                controller: female,

                                                                keyboardType: TextInputType.emailAddress,
                                                                decoration: InputDecoration(
                                                                  enabledBorder: OutlineInputBorder(

                                                                    borderRadius: BorderRadius.circular(20),
                                                                  ),
                                                                  hintText: 'من فضلك ادخل اسم الزوجة',
                                                                ), onChanged: (value)
                                                            {
                                                              print(value);
                                                            }
                                                            ),
                                                            SizedBox(
                                                              height: 20.0,
                                                            ),
                                                            Row(crossAxisAlignment: CrossAxisAlignment.end,
                                                              children: [
                                                                Text('الام',
                                                                  style: TextStyle(fontFamily: "Cairo" , color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20.0),
                                                                ),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height:10.0,
                                                            ),
                                                            TextFormField(
                                                                controller: mother,

                                                                keyboardType: TextInputType.emailAddress,
                                                                decoration: InputDecoration(
                                                                  enabledBorder: OutlineInputBorder(

                                                                    borderRadius: BorderRadius.circular(20),
                                                                  ),
                                                                  hintText: 'من فضلك ادخل اسم الام',
                                                                ), onChanged: (value)
                                                            {
                                                              print(value);
                                                            }
                                                            ),
                                                            SizedBox(
                                                              height: 20.0,
                                                            ),
                                                            Row(crossAxisAlignment: CrossAxisAlignment.end,
                                                              children: [
                                                                Text('الجد',
                                                                  style: TextStyle(fontFamily: "Cairo" , color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20.0),
                                                                ),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height:10.0,
                                                            ),
                                                            TextFormField(
                                                                controller: grandpa,

                                                                keyboardType: TextInputType.emailAddress,
                                                                decoration: InputDecoration(
                                                                  enabledBorder: OutlineInputBorder(

                                                                    borderRadius: BorderRadius.circular(20),
                                                                  ),
                                                                  hintText: 'من فضلك ادخل اسم الجد',
                                                                ), onChanged: (value)
                                                            {
                                                              print(value);
                                                            }
                                                            ),
                                                            SizedBox(
                                                              height: 15.0,
                                                            ),
                                                            Row(
                                                              crossAxisAlignment: CrossAxisAlignment.end,
                                                              children: [
                                                                Container(
                                                                  height: 59.0,
                                                                  width: 117.0,
                                                                  decoration: BoxDecoration(
                                                                    color: fontColor,
                                                                    borderRadius: BorderRadius.circular(15.0),

                                                                  ),
                                                                  child: MaterialButton(onPressed: (){
                                                                        Navigator.push(context, MaterialPageRoute(
                  builder:(context)=>Example(),
                ));
                                                                  },child:
                                                                  Text('اضافة',
                                                                    style: TextStyle(fontFamily: "Cairo" , color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20.0),
                                                                  ),
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  width: 20.0,
                                                                ),
                                                                Container(
                                                                  height: 59.0,
                                                                  width: 117.0,
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
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              );
                                          }
                                      );

                                    });
                              },child:  Text('التالي',
                                style: TextStyle(fontFamily: "Cairo" , color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20.0),
                              ),
                              ),
                            ),
                          ],
                        ),
                      ],
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
