import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
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
        hintText: 'Nombre',
        labelText: 'Nombre',
        helperText: 'Solo letras',
        //prefixIcon: Icon(Icons.verified_user_outlined),
        icon: Icon(Icons.assignment_ind_outlined),
        suffixIcon: Icon(Icons.person_2_outlined),
        /*border: OutlineInputBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            topRight: Radius.circular(10)
          )
        )
        */
      ),
    );
  }
}