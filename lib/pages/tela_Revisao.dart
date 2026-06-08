import 'package:flutter/material.dart';
import 'package:kip/pages/tela_detalhes.dart';

class TelaRevisao extends StatefulWidget{ // a tela pode mudar de estado
  const TelaRevisao({super.key});

  @override  
  State<TelaRevisao> createState() => _TelaRevisaoState();
  //_TelaRevisaoState é onde fica os dados que podem mudar
}

class _TelaRevisaoState extends State<TelaRevisao> {
  String mensagem = 'Clique em alguma opção'; //vai ser utilizado no setState

  @override 
  Widget build(BuildContext context) {// é o metodo que monta a interface
    return Scaffold(// é o corpo da aplicacao

      appBar: AppBar(//é a header da nossa aplicacao/cabeçalho
        title: const Text('bacalhau'),
      ),

      body: SafeArea(//Proteger o conteudo de area notch(bordas, camera)
      child: Padding(// cria espaço
        padding: const EdgeInsets.all(20),
        child: Column(//organiza os widgets na vertical
        mainAxisAlignment: MainAxisAlignment.center,
        children: [// é usado pq a coluna pode receber varios widgets.
        const Icon(
          Icons.phone_android,
          size: 80, 
          color: Colors.blue
        ),

        const SizedBox(height: 20,),

        const Text(
          'Revisão de Flutter',
          style: TextStyle( 
            fontSize: 26,
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),

        ),

        Text(
          mensagem,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),

        const SizedBox(height: 20),
        Row(
          //componentes em linha
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  mensagem = 'Você clicou no botão azul';
                });
              },
              child: const Text('Azul'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                foregroundColor: Colors.black,
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 14,
                ),
                elevation: 4, 
              ),
              onPressed: () {
                setState(() {
                  mensagem = 'Voce clicou no botao Destaque';
                });
              },
              child: const Text ('destaque'),
            )
          ],
        ),
        const SizedBox(height: 10),

        const Text(
          'Vamos revisar widgets, layout, estilo, botoes, estado e navegação.',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 20,),

        ElevatedButton.icon( 
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const TelaDetalhes(),
              ),
            );
          },
          icon: const Icon(Icons.arrow_forward),
          label: const Text('Ir para detalhes'),
        ), 
        
        Container(
          width: 320,
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration( 
            color: Colors.blue.shade50,
            borderRadius: BorderRadius.circular(16),
          ),
          child: const Text("ola"),
        ),
        
        ],
        ),
        
        ),
      ),

      floatingActionButton: FloatingActionButton(// botao flutuante
        onPressed: () {// ação executada
          setState(() {// atiaçoza a variavel 
            mensagem = 'VASCO!';
          });
        },
        child: const Icon(Icons.add),//add icone "mais"
      ),
    );
  }
}