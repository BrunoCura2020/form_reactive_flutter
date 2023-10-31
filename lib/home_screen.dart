import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi AppBar'),
      ),
      body: Center(
        child: Form(
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  label: Text('Name'),
                ),
              ),
        
              TextFormField(
                decoration: const InputDecoration(
                  label: Text('Correo'),
                ),
              ),
        
              TextFormField(
                decoration: const InputDecoration(
                  label: Text('Password'),
                ),
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