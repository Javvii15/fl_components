import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forms: Inputs'),
      ),
      body: SingleChildScrollView(
         padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
         child: Column(
          children: [
            TextFormField(
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
                hintText: 'Nombre y apellidos',
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
            )
          ]
         ),
      ),
    );
  }
}