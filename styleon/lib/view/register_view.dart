import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:styleon/view/login_view.dart';

class RegisterView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        color: Color(0xff444444),
        child: Stack(
          children: [
            Positioned.fill(
              child: Opacity(
                opacity: 0.25,
                child: Image.network(
                  'https://image.12storeez.com/images/720xP_90_out/uploads/images/LookBook/15-3-22/623052bee50ba-623046bf325a8-0.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 50, right: 25),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back_ios,
                  size: 34,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 180, left: 25, right: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Style',
                            style: TextStyle(
                              fontSize: 44,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Roboto',
                              letterSpacing: 5,
                            ),
                          ),
                          Text(
                            'ON',
                            style: TextStyle(
                              fontSize: 44,
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                              fontFamily: 'Roboto',
                              letterSpacing: 5,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 27),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Кіру',
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Roboto',
                              letterSpacing: 5,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 100),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          hintStyle: TextStyle(color: Colors.white),
                          labelText: 'Атыңыз',
                          prefixIcon: Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                          prefixStyle: TextStyle(color: Colors.white),
                          labelStyle: TextStyle(color: Colors.white),
                        ),
                        style: TextStyle(
                          color: Colors.white,
                          decorationColor: Colors.white,
                        ),
                      ),
                      SizedBox(height: 40),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          hintStyle: TextStyle(color: Colors.white),
                          labelText: 'E-mail',
                          prefixIcon: Icon(
                            Icons.mail,
                            color: Colors.white,
                          ),
                          prefixStyle: TextStyle(color: Colors.white),
                          labelStyle: TextStyle(color: Colors.white),
                        ),
                        style: TextStyle(
                          color: Colors.white,
                          decorationColor: Colors.white,
                        ),
                      ),
                      SizedBox(height: 40),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          hintStyle: TextStyle(color: Colors.white),
                          labelText: 'Құпия сөз',
                          prefixIcon: Icon(
                            Icons.password,
                            color: Colors.white,
                          ),
                          prefixStyle: TextStyle(color: Colors.white),
                          labelStyle: TextStyle(color: Colors.white),
                        ),
                        style: TextStyle(
                          color: Colors.white,
                          decorationColor: Colors.white,
                        ),
                      ),
                      SizedBox(height: 25),
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 60),
                          child: Container(
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(
                              child: Text(
                                'Тіркелу',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Roboto',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Тіркелгенсіз ба? ',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Roboto',
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Get.to(LoginView());
                            },
                            child: Text(
                              'Кіру',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Roboto',
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
          ],
        ),
      ),
    );
  }
}
