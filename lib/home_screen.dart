import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // creates a group
    final form = fb.group({
      'name': ['', Validators.required],
      'email': ['', Validators.required, Validators.email],
      'password': Validators.required,
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi AppBar'),
      ),
      body: Center(
        child: ReactiveForm(
          formGroup: form,
          child: Column(
            children: <Widget> [
              ReactiveTextField(
                formControlName: 'name', 
                //suffixIcon: Icon(Icons.check_circle_outline_rounded)  
              ),
         
              TextFormField(
                decoration: const InputDecoration(
                  label: Text('Correo'),
                  suffixIcon: Icon(Icons.cancel_outlined)
                ),
              ),
        
              ReactiveTextField(
                formControlName: 'name', 
                obscureText: true,
              ),

              const SizedBox(height: 20,),

              FilledButton(
                onPressed: () {}, 
                child: const Text('Save')
              )
            ],
          ),
        )
      ),
    );
  }
}