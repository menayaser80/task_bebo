// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back_ios_new_sharp),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            SizedBox(height: 20.0),
            Text(
              'انشاء حساب',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
           
            TextField(
              decoration: InputDecoration(
              prefixIcon: Icon(Icons.person),
                hintText: 'اسم المستخدم',
              ),
            ),

            SizedBox(height: 20.0),

            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.phone),
                hintText: 'رقم الهاتف',
              ),
            ),

            SizedBox(height: 20.0),
            
            TextField(
              obscureText: true,
              decoration: InputDecoration(
              prefixIcon: Icon(Icons.lock),
                hintText: 'كلمة المرور',
              ),
            ),

            SizedBox(height: 20.0),

            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'تأكيد كلمة المرور',
                prefixIcon: Icon(Icons.lock),

              ),
            ),
            SizedBox(height: 20.0),
            Row(
              children: [
                Checkbox(
                  value: false,
                  onChanged: (_) {},
                ),
                Text('أوافق على الشروط والأحكام'),
              ],
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {},
              child: Text('انشاء حساب'),

            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push( context, MaterialPageRoute(builder: (context) =>SignUpPage()),
                );
              },
              child: const Text(' لديك حساب ؟  تسجيل حساب'),
            ),
          ],
        ),
      ),
    );
  }
}
