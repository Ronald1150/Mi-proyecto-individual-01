// ignore: file_names
// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart'
    show
        BuildContext,
        Center,
        Colors,
        Column,
        EdgeInsets,
        ElevatedButton,
        FontWeight,
        InputDecoration,
        MainAxisAlignment,
        MaterialApp,
        OutlineInputBorder,
        Padding,
        Scaffold,
        Size,
        SizedBox,
        State,
        StatefulWidget,
        StatelessWidget,
        Text,
        TextButton,
        TextField,
        TextStyle,
        ThemeData,
        Widget,
        runApp;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login y Registro',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AuthScreen(),
    );
  }
}

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool isLogin = true; // Estado para alternar entre login y registro

  // Método para cambiar entre pantalla de login y registro
  void toggleForm() {
    setState(() {
      isLogin = !isLogin;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                isLogin ? 'Iniciar Sesión' : 'Registrarse',
                style:
                    const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),

              // Campo de correo electrónico
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Correo electrónico',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),

              // Campo de contraseña
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Contraseña',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),

              // Campo de confirmación de contraseña en registro
              if (!isLogin)
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Confirmar Contraseña',
                    border: OutlineInputBorder(),
                  ),
                ),

              const SizedBox(height: 20),

              // Botón de Iniciar Sesión o Registrarse
              ElevatedButton(
                onPressed: () {
                  // Aquí puedes añadir la funcionalidad de login o registro
                },
                style: ElevatedButton.styleFrom(
                  minimumSize:
                      const Size(double.infinity, 50), // Ancho completo
                ),
                child: Text(isLogin ? 'Iniciar Sesión' : 'Registrarse'),
              ),
              const SizedBox(height: 10),

              // Enlace para cambiar entre login y registro
              TextButton(
                onPressed: toggleForm,
                child: Text(
                  isLogin
                      ? '¿No tienes una cuenta? Regístrate'
                      : '¿Ya tienes una cuenta? Inicia Sesión',
                  style: const TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
