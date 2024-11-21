import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => context.go('/tela1'),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              child: const Text('Tela 1', style: TextStyle(color: Colors.white),),
            ),
            const  SizedBox(height: 16,),
            ElevatedButton(
              onPressed: () => context.go('/tela2'),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              child: const Text('Tela 2', style: TextStyle(color: Colors.white),),
            ),
            const  SizedBox(height: 16,),
            ElevatedButton(
              onPressed: () => context.go('/tela3'),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
              child: const Text('Tela 3', style: TextStyle(color: Colors.white),),
            ),

          ],
        )
      ),
    );
  }
}
