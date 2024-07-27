import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myformKey = GlobalKey<FormState>();
    final Map<String, String> formValues = {
      'first_name': '',
      'last_name': '',
      'email': '',
      'password': '',
      'role': ''
    };
    return Scaffold(
        appBar: AppBar(
          title: const Text('InputScreen'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Form(
              key: myformKey,
              child: Column(
                children: [
                  CustomInputWidget(
                    labelText: 'Nombre',
                    //helperText: 'Minimo de 3 letras',
                    hintText: 'Nombre de usuario',
                    formProperty: 'first_name',
                    formValues: formValues,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CustomInputWidget(
                    labelText: 'Apellido',
                    //helperText: 'Minimo de 3 letras',
                    hintText: 'Apellido del usuario',
                    formProperty: 'last_name',
                    formValues: formValues,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CustomInputWidget(
                    labelText: 'Correo',
                    //helperText: 'Minimo de 3 letras',
                    hintText: 'Email',
                    keyboardType: TextInputType.emailAddress,
                    formProperty: 'email',
                    formValues: formValues,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CustomInputWidget(
                    labelText: 'Contraseña',
                    //helperText: 'Minimo de 3 letras',
                    hintText: 'Contraseña',
                    keyboardType: TextInputType.emailAddress,
                    formProperty: 'password',
                    formValues: formValues,
                    obscureText: true,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  DropdownButtonFormField<String>(
                    items: [
                      DropdownMenuItem(
                        value: 'Admin',
                        child: Text('Admin'),
                      ),
                      DropdownMenuItem(
                        value: 'Superuser',
                        child: Text('Superuser'),
                      ),
                      DropdownMenuItem(
                        value: 'Developer',
                        child: Text('Developer'),
                      ),
                      DropdownMenuItem(
                        value: 'Jr. developer',
                        child: Text('Jr. developer'),
                      ),
                    ],
                    onChanged: (value) {
                      print(value);
                      formValues['role'] = value ?? 'Admin';
                    },
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        FocusScope.of(context).requestFocus(FocusNode());
                        if (!myformKey.currentState!.validate()) {
                          print('Formulario no valido');
                        }
                        print(formValues);
                      },
                      child: SizedBox(
                        child: Center(child: Text('Guardar')),
                        width: double.infinity,
                      ))
                ],
              ),
            ),
          ),
        ));
  }
}
