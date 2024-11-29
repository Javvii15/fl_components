import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forms: Inputs'),
      ),
      body: const SingleChildScrollView(
         padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
         child: Column(
          children: [
            CustomTextFormField(
              hintText: 'Nombre',
              labelText: 'Nombre',
              helperText: 'Solo letras',
              icon: Icons.verified_outlined,
              suffixIcon: Icons.person_2_rounded,
            ),
            SizedBox(height: 30),
            CustomTextFormField(
              hintText: 'Apellidos',
              labelText: 'Apellidos del usuario',
              icon: Icons.person_4_outlined,
            ),
            SizedBox(height: 30),
            CustomTextFormField(
              hintText: 'E-Mail',
              labelText: 'E-Mail del usuario',
              icon: Icons.email_rounded,
              keyboardType: TextInputType.emailAddress,
            ),
          ]
         ),
      ),
    );
  }
}
  
