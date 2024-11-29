import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {

  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;

  const CustomTextFormField({
    super.key, this.hintText, this.labelText, this.helperText, this.icon, this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      //initialValue: 'Introduce tu nombre',
      textCapitalization: TextCapitalization.words,
      onChanged: (value) {
        print('value: $value');
      },
      validator: (value){
        if(value!.length < 3){
          return 'Minimo 3 caracteres';
        }
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        //prefixIcon: Icon(Icons.verified_user_outlined),
        icon: Icon(icon),
        suffixIcon: Icon(suffixIcon),

      ),
    );
  }
}