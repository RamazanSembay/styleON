import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:styleon/view/auth_view.dart';


class WelcomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 50),
        child: InkWell(
          onTap: () {
            print('Continue');
            Get.to(AuthView());
          },
          child: Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Center(
              child: Text(
                'Жалғастыру',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Roboto',
                ),
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Container(
        color: Color(0xff444444),
        child: Stack(
          children: [
            Positioned.fill(
              child: Opacity(
                opacity: 0.5,
                child: Image.network(
                  'https://image.12storeez.com/images/750xP_90_out/uploads/images/CATALOG/trousers/113275/62827d1026dfc-13-05-20223052.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 180, left: 43, right: 43),
              child: Column(
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
                        'Жаздың әр сәті',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Roboto',
                          letterSpacing: 5,
                        ),
                      ),
                      SizedBox(height: 13),
                      Text(
                        'Дайындау оңай',
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
