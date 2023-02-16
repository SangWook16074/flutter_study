import 'package:flutter/material.dart';

class TextFieldPage extends StatelessWidget {
  const TextFieldPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildCustomTextField('사용자 이름, 이메일 주소 또는 휴대폰 번호'),
              SizedBox(
                height: 15,
              ),
              _buildCustomTextField('비밀번호'),
            ]),
      ),
    );
  }

  Widget _buildCustomTextField(String label) {
    final focusColor = Colors.black;
    final unfocusColor = Colors.grey;
    return TextField(
      cursorColor: focusColor,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.account_circle_rounded),
          focusColor: focusColor,
          fillColor: Colors.white,
          filled: true,
          labelStyle: TextStyle(color: focusColor),
          focusedBorder: OutlineInputBorder(),
          enabledBorder:
              OutlineInputBorder(borderSide: BorderSide(color: unfocusColor)),
          border: InputBorder.none,
          labelText: label),
    );
  }
}
