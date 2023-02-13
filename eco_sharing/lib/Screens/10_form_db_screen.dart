import 'package:eco_sharing/Widgets/custom_input_field.dart';
import 'package:flutter/material.dart';

class FormDBScreen extends StatelessWidget {
  const FormDBScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    final Map<String, String> datosForm = {
      'nombre': '',
      'apellidos': '',
      'email': '',
      'contraseña': '',
      'rol': ''
    };

    return Scaffold(
        appBar: AppBar(
          title: const Text('Formulario y BD'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  CustomInputField(
                      labelText: 'Nombre',
                      hintText: 'Nombre del usuario',
                      formProperty: 'nombre',
                      formValues: datosForm),
                  const SizedBox(height: 30),
                  CustomInputField(
                      labelText: 'Apellidos',
                      hintText: 'Apellidos del usuario',
                      formProperty: 'apellidos',
                      formValues: datosForm),
                  const SizedBox(height: 30),
                  CustomInputField(
                      labelText: 'Correo',
                      hintText: 'Correo del usuario',
                      keyboardType: TextInputType.emailAddress,
                      formProperty: 'email',
                      formValues: datosForm),
                  const SizedBox(height: 30),
                  CustomInputField(
                      labelText: 'Contraseña',
                      hintText: 'Contraseña del usuario',
                      obscureText: true,
                      formProperty: 'contraseña',
                      formValues: datosForm),
                  const SizedBox(height: 30),
                  DropdownButtonFormField<String>(
                      value: 'Admin',
                      items: const [
                        DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                        DropdownMenuItem(
                            value: 'Superuser', child: Text('Superuser')),
                        DropdownMenuItem(
                            value: 'Developer', child: Text('Developer')),
                        DropdownMenuItem(
                            value: 'Jr. Developer',
                            child: Text('Jr. Developer')),
                      ],
                      onChanged: (value) {
                        datosForm['rol'] = value ?? 'Admin';
                      }),
                  ElevatedButton(
                    child: const SizedBox(
                        width: double.infinity,
                        child: Center(child: Text('Guardar'))),
                    onPressed: () {
                      FocusScope.of(context).requestFocus(FocusNode());

                      if (!formKey.currentState!.validate()) {
                        print('Formulario no válido');
                        return;
                      }

                      //* imprimir valores del formulario
                      print(datosForm);
                    },
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
