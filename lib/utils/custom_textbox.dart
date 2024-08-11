import 'package:flutter/material.dart';

class CustomTextBox extends StatelessWidget {
  final String hinttxt;
  final TextInputType inputType;
  final Icon? icon;
  final TextEditingController? controller;
  final String? validat;
  CustomTextBox(
      {super.key,
      required this.hinttxt,
      required this.inputType,
      this.icon,
      this.controller,
      this.validat});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextFormField(
        controller: controller,
        textAlign: TextAlign.left,
        keyboardType: inputType,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return validat ?? null;
          }
          return null;
        },
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: Colors.grey.shade300,
            ),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey.shade300,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey.shade300,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          labelText: hinttxt,
        ),

        // decoration: InputDecoration(
        //   prefixIcon: icon,
        //   contentPadding: const EdgeInsets.all(10),
        //   hintText: hinttxt,
        //   filled: true,
        //   fillColor: Colors.white,
        //   hintStyle: const TextStyle(
        //       color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 18),
        //   border: OutlineInputBorder(
        //     borderSide: const BorderSide(color: Colors.grey),
        //     borderRadius: BorderRadius.circular(15),
        //   ),
        // ),
      ),
    );
  }
}
