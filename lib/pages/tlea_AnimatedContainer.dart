import 'package:flutter/material.dart';

class TelaAnimatedcontainer extends StatefulWidget{
  const TelaAnimatedcontainer({super.key});

  @override 
  State<TelaAnimatedcontainer> createState() {
    return _TelaAnimatedContainerState();
  }
}

class _TelaAnimatedContainerState extends State<TelaAnimatedcontainer> {
  bool expandido = false; //controla o estado do container(grande ou pequeno)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedContainer'),
      ),
      body: SafeArea(
        child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'AnimatedContainer',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              const Text(
                'Clique no card para animar tamanho,cor e borda.',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              AnimatedContainer(//animação de container
              duration: const Duration(seconds: 1),
              width: expandido ? 300 : 130,
              height:  expandido ? 300 : 130,
              decoration: BoxDecoration(
                color: expandido ? Colors.blue : Colors.orange,
                borderRadius: BorderRadius.circular(
                  expandido ? 30 : 10,
                ),
              ),
              child: Center(
                child: Column( 
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      expandido ? Icons.check_circle : Icons.touch_app,
                      color: Colors.white,
                      size: 40,
                    ),
                    const SizedBox(height: 10),
                    if (expandido)
                    const Text(
                      'O card aumentou, mudou de cor arrendondou as bordas.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                      )
                    )
                  ],
                )
              )
              ),
            ],
          ),
        ),
      ),
      ),
    );
  }
}