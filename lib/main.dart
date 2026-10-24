
import 'package:flutter/material.dart';

void main() => runApp(const BreakshireApp());

class BreakshireApp extends StatelessWidget {
  const BreakshireApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Breakshire',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF087F5B),
        ),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final services = [
      ('Ojek motor', Icons.motorcycle),
      ('Pesan makanan', Icons.restaurant),
      ('Kurir paket', Icons.local_shipping),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'breakshire',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Container(
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Selamat datang di Breakshire!'),
                SizedBox(height: 10),
                Text(
                  'Mau ke mana hari ini?',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text('Satu aplikasi untuk kebutuhan harianmu.'),
              ],
            ),
          ),
          const SizedBox(height: 24),
          const Text(
            'Pilih layanan',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          ...services.map(
            (service) => Card(
              child: ListTile(
                leading: CircleAvatar(
                  child: Icon(service.$2),
                ),
                title: Text(service.$1),
                subtitle: const Text('Layanan demo'),
                trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        '${service.$1} dipilih. '
                        'Fitur pemesanan akan dikembangkan berikutnya.',
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Card(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'VERSI DEMO\n'
                'Belum terhubung ke pengemudi, peta, '
                'server, atau pembayaran sungguhan.',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
