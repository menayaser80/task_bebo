import 'package:flutter/material.dart';
import 'package:graduation_project/modules/EnterCodePage.dart';

class ForgotPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Icon(
                    Icons.arrow_back_ios_new_sharp,
                    size: 30,
                    color: Colors.blue,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'نسيت كلمه المرور',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

                  Image(
                    image: AssetImage("assets/images/thirdphoto.png"),
                  ),

              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                'لا تقلق ! يحدث ذلك. الرجاء ادخال رقم الهاتف الذي سنرسله اليه الرمز في رقم الهاتف هذا.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),




              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'رقم الهاتف',
                     prefixIcon: Icon(Icons.phone),

                  ),
                ),
              ),
                ElevatedButton(
              onPressed: () {
                Navigator.push( context, MaterialPageRoute(builder: (context) =>EnterCodePage()),
                );
              },
              child: const Text('استمر'),
            ),
            ],
          ),
        
      ),
    );
  }
}
