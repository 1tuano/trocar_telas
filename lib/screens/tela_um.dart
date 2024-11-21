import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TelaUm extends StatelessWidget {
  const TelaUm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        title: const Text('Tela 1',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
        iconTheme:
        IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () => context.go('/'),
            child: const Text('Voltar pra Home')),
      ),
    );
    ;
  }
}
