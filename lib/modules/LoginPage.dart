import 'package:flutter/material.dart';
import 'package:graduation_project/modules/ForgotPasswordPage.dart';
import 'package:graduation_project/modules/ResetPasswordPage.dart';
import 'package:graduation_project/modules/SignUpPage.dart';
import 'package:graduation_project/modules/start.dart';

import 'colors.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  var login=TextEditingController();
  var password=TextEditingController();


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
        mainAxisAlignment: MainAxisAlignment.start,
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





        ],
      ),
  Image(
    // assets/images/male.png
                    image: AssetImage("assets/images/secondphoto.png"),
                  ),
      SizedBox(
        height: 30.0,
      ),
  Text(
                    'تسجيل دخول',
                    style: TextStyle(
                      fontSize: 35.0,
                    color: Colors.black ,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
      SizedBox(
        height: 20.0,
      ),
      Align(
        alignment:Alignment.topRight ,
        child: Container(
          height: 80.0,
          width: 325.0,
          child: TextFormField(
              controller: login,
              decoration: InputDecoration(
                hintText: 'اسم المستخدم',
                suffixIcon: Icon(
                  Icons.person,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide:  BorderSide(
                    color: Colors.grey ,
                  ),
                  borderRadius: BorderRadius.circular(15.0),
                ),
              )),



        ),
      ),
      SizedBox(
        height: 12.0,
      ),
      Align(
        alignment:Alignment.topRight ,
        child: Container(
          height: 80.0,
          width: 325.0,
          child: TextFormField(
              controller: password,
              decoration: InputDecoration(
                hintText: 'كلمة المرور',
                suffixIcon: Icon(
                  Icons.lock,
                ),
                prefixIcon: Icon(
                  Icons.remove_red_eye,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide:  BorderSide(
                    color: Colors.grey ,
                  ),
                  borderRadius: BorderRadius.circular(15.0),
                ),
              )),



        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(
              builder:(context)=>ForgotPasswordPage(),
            ));
          }, child: Text(' نسيت كلمة المرور؟',style: TextStyle(
            color: Colors.black,
            fontSize: 14.0
          ),)),
        ],
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
              child: MaterialButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                  builder:(context)=>Start(),
                ));

              },child:
              Text('الدخول كزائر',
                style: TextStyle(fontFamily: "Cairo" , color: fontColor,fontWeight: FontWeight.bold,fontSize: 18.0),
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
                  builder:(context)=>ResetPasswordPage(),
                ));
              },child:
              Text('تسجيل الدخول',
                style: TextStyle(fontFamily: "Cairo" , color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18.0),
              ),
              ),
            ),


          ],
        ),
      ),
      SizedBox(
        height: 10.0,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(
              builder:(context)=>SignUpPage(),
            ));
            }, child: Text('انشاء حساب',style:  TextStyle(
            fontSize: 18.0,
            color: fontColor,
          ),)),
          Text('ليس لديك حساب؟',style: TextStyle(
            fontSize: 14.0,
            color: Colors.black,
          ),),
        ],
      ),
      SizedBox(
        height: 5.0,
      ),
      Center(
        child: Text('او تسجيل الدخول عبر',
          style: TextStyle(fontFamily: "Cairo" , color: fontColor,fontWeight: FontWeight.bold,fontSize: 22.0),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35.0),
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
          ),

        ],
      ),
    );
  }
}
