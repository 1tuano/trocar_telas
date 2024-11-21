import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TelaTres extends StatelessWidget {
  const TelaTres({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        iconTheme:
            IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
        title: const Text(
          'Tela 3',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => context.go('/'),
              child: const Text('Voltar pra Home'),
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () => context.go('/tela1'),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              child: const Text('Ir para tela 1', style: TextStyle(color: Colors.white),),
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () => context.go('/tela2'),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              child: const Text('Ir para tela 2', style: TextStyle(color: Colors.white),),
            ),
          ],
        ),
      ),
    );
  }
}
