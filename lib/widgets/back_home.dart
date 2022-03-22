import 'package:flutter/material.dart';
import 'package:tugas_navigation_flutter/pages/home_page.dart';

class BackToHome extends StatelessWidget {
  const BackToHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      width: double.infinity,
      alignment: Alignment.topCenter,
      child: TextButton(
        child: Text(
          "BACK TO HOME",
          style: TextStyle(fontSize: 13),
        ),
        onPressed: () {
          Navigator.pop(context, MaterialPageRoute(builder: (context) {
            return HomePage();
          }));
        },
      ),
    );
  }
}
