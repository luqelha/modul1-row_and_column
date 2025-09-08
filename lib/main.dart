import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row and Column',
      home: const MyHomePage(title: 'Row and Column'),
    );
  }
}

class KotakBiruJempol extends StatelessWidget {
  final Color color;
  final IconData icon;
  final double size;

  const KotakBiruJempol({
    super.key,
    required this.color,
    required this.icon,
    this.size = 100,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(color: Colors.black, width: 2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Icon(icon, color: Colors.white, size: size * 0.4),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Baris pertama
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: const [
                    KotakBiruJempol(
                      color: Colors.red,
                      icon: Icons.favorite,
                      size: 100,
                    ),
                    SizedBox(height: 8),
                    Text("Like"),
                  ],
                ),
                const SizedBox(width: 40), // jarak antar kolom
                Column(
                  children: const [
                    KotakBiruJempol(
                      color: Colors.red,
                      icon: Icons.favorite,
                      size: 100,
                    ),
                    SizedBox(height: 8),
                    Text("Like"),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            // Baris kedua
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: const [
                    KotakBiruJempol(
                      color: Colors.red,
                      icon: Icons.favorite,
                      size: 100,
                    ),
                    SizedBox(height: 8),
                    Text("Like"),
                  ],
                ),
                const SizedBox(width: 40), // jarak antar kolom
                Column(
                  children: const [
                    KotakBiruJempol(
                      color: Colors.red,
                      icon: Icons.favorite,
                      size: 100,
                    ),
                    SizedBox(height: 8),
                    Text("Like"),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
