import 'package:flutter/material.dart';

class Profil extends StatelessWidget {
  const Profil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Profil Mahasiswa'),
        backgroundColor: Colors.indigo.shade300,
      ),
      backgroundColor: Colors.blue.shade50, 
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.all(16),
            width: 400,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Color.fromARGB(255, 84, 148, 211),
                  Color.fromARGB(255, 107, 104, 174),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'DETAIL MAHASISWA',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 15),
                const CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.white, 
                  backgroundImage: AssetImage('assets/images/foto_gilar.jpeg'),
                ),
                const SizedBox(height: 15),
                const Text(
                  'Gilar Aska Pratama',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                const SizedBox(height: 5),
                const Text(
                  'NIM: 25670116',
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Program Studi: S1 Informatika - UPGRIS',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
                const SizedBox(height: 25),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.indigo,
                  ),
                  onPressed: () {
                    Navigator.pop(context); 
                  },
                  child: const Text('Kembali ke Menu Utama'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}