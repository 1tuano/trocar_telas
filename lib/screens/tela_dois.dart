import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TelaDois extends StatelessWidget {
  const TelaDois({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        backgroundColor: Colors.green,
        iconTheme:
        IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
        title: const Text('Tela Dois', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () => context.go('/'),
                child: const Text('Voltar pra Home')),
           const  SizedBox(height: 16,),
            ElevatedButton(onPressed: () => context.go('/tela1'),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                child: const Text('ir para tela 1', style: TextStyle(color: Colors.white),)),
            const  SizedBox(height: 16,),
            ElevatedButton(onPressed: () => context.go('/tela3'),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                child: const Text('ir para tela 3', style: TextStyle(color: Colors.white),)),
          ],
        ),
      ),
    );
  }
}
