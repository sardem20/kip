import 'package:flutter/material.dart';
import 'package:kip/pages/tela_Revisao.dart';

class TelaLogin extends StatefulWidget {
  const TelaLogin({super.key});

  @override
  State<TelaLogin> createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  final TextEditingController emailController =
      TextEditingController(); //pega o texto do email
  final TextEditingController senhaController =
      TextEditingController(); //pega o texto da senha

  String mensagemErro = ''; //String usada para definir erros

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.lock,
                size: 80,
                color: Colors.blue,
              ),
              const SizedBox(height: 20),
              const Text(
                'Tela de Login',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),
              TextField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    hintText: 'Digite seu email',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email),
                  )),
              TextField(
                controller: senhaController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: 'Senha',
                  hintText: 'Digite sua senha',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
              const SizedBox(height: 15),
              Text(
                mensagemErro,
                style: const TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () {
                  String email =
                      emailController.text; //Usuario colocou email corretamente
                  String senha =
                      senhaController.text; //Usuario colocou senha correta

                  if (!email.contains('@')) {
                    //se o email não conter o @, vai dar erro
                    setState(() {
                      mensagemErro = 'Digite um email valido';
                    });
                  } else {
                    final RGexEmail = RegExp(r'.com');
                    String email = "teste@email.com";

                    if (RGexEmail.hasMatch(email)) {
                      print("E-mail válido!");
                    } else if (senha.isEmpty) {
                      // se a senha estiver vazia,da erro
                      setState(() {
                        mensagemErro = 'Digite sua senha';
                      });
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const TelaRevisao(),
                        ),
                      );
                    }
                  }
                },
                icon: const Icon(Icons.login),
                label: const Text('Entrar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
