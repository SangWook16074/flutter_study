import 'package:flutter/material.dart';

class TextFieldPage extends StatelessWidget {
  const TextFieldPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomTextField(
                    label: '아이디', icon: Icon(Icons.account_circle_rounded)),
                SizedBox(
                  height: 15,
                ),
                CustomTextField(
                  label: '비밀번호',
                  icon: Icon(Icons.lock),
                  isPrivate: true,
                )
              ]),
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key? key,
      required this.label,
      required this.icon,
      this.isPrivate = false})
      : super(key: key);

  final String label;
  final Icon icon;
  final bool isPrivate;

  @override
  Widget build(BuildContext context) {
    final focusColor = Colors.black;
    final unfocusColor = Colors.grey;
    return TextField(
      cursorColor: focusColor,
      obscureText: isPrivate,
      keyboardType: (isPrivate) ? TextInputType.number : TextInputType.text,
      decoration: InputDecoration(
          iconColor: focusColor,
          prefixIcon: icon,
          prefixIconColor: focusColor,
          suffixIcon: Icon(Icons.close),
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
