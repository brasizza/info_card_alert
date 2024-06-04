import 'package:flutter/material.dart';
import 'package:info_messages/src/core/info_alert.dart';
import 'package:info_messages/src/core/info_message.dart';
import 'package:info_messages/src/widgets/info_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Card Alert',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Alert card page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  InfoMessage? message;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Wrap(
              runSpacing: 10,
              spacing: 10,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      message = InfoAlert.i.infoMessage(message: ('Valor inconsistente'));
                    });
                  },
                  child: const Text("Info"),
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        message = InfoAlert.i.warningMessage(message: 'Voce já tentou essa operação');
                      });
                    },
                    child: const Text("Warning")),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      message = InfoAlert.i.errorMessage(message: 'Falha ao conectar ao servidor');
                    });
                  },
                  child: const Text("Error"),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      message = InfoAlert.i.successMessage(message: 'Enviado com sucesso!');
                    });
                  },
                  child: const Text("Success"),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      message = InfoAlert.i.customMessage(
                        backgroundColor: Colors.purple,
                        message: Text(
                          "Mensagem customizada",
                          style: TextStyle(color: Colors.white),
                        ),
                        icon: Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                      );
                    });
                  },
                  child: const Text("Custom"),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      message = null;
                    });
                  },
                  child: const Text("Limpar"),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: InfoCard(infoMessage: message),
            ),
          ],
        ),
      ),
    );
  }
}
