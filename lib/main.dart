import 'package:flutter/material.dart';
import 'package:student_card/profil.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50, 
      appBar: AppBar(
        title: const Text('Aplikasi Kartu Mahasiswa - UTS'),
        backgroundColor: Colors.indigo.shade300,
      ),
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
                  'STUDENT CARD',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 15),
                const Icon(Icons.person, size: 50, color: Color.fromARGB(255, 38, 35, 39)),
                const SizedBox(height: 10),
                const Text(
                  'Gilar Aska Pratama',
                  style: TextStyle(fontSize: 18, color: Color.fromARGB(255, 38, 35, 39), fontWeight: FontWeight.bold),
                ),
                const Text(
                  '25670116',
                  style: TextStyle(fontSize: 14, color: Color.fromARGB(255, 38, 35, 39)),
                ),
                const SizedBox(height: 20),
                
                // Tombol 1 -> Hal 2 (Profil)
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Profil()),
                    );
                  },
                  child: const Text('1. Buka Halaman Profil (Hal 2)'),
                ),
                const SizedBox(height: 10),

                // Tombol 2 -> Hal 3 (Akademik)
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const AcademicScreen()),
                    );
                  },
                  child: const Text('2. Info Akademik (Hal 3)'),
                ),
                const SizedBox(height: 10),

                // Tombol 3 -> Hal 4 (Kontak)
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ContactScreen()),
                    );
                  },
                  child: const Text('3. Informasi Kontak (Hal 4)'),
                ),
                const SizedBox(height: 10),

                // Tombol 4 -> Hal 5 (Tentang)
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const AboutScreen()),
                    );
                  },
                  child: const Text('4. Tentang Aplikasi (Hal 5)'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Halaman 3: Akademik
class AcademicScreen extends StatelessWidget {
  const AcademicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Halaman Akademik')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Program Studi: S1 Informatika', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            const Text('Fakultas Teknik dan Informatika - UPGRIS', style: TextStyle(fontSize: 16)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Kembali'),
            ),
          ],
        ),
      ),
    );
  }
}

// Halaman 4: Kontak
class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Halaman Kontak')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.email, size: 60, color: Colors.blue),
            const SizedBox(height: 10),
            const Text('Email: gilar@student.upgris.ac.id', style: TextStyle(fontSize: 16)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Kembali'),
            ),
          ],
        ),
      ),
    );
  }
}

// Halaman 5: Tentang
class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tentang Aplikasi')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Aplikasi Student Card ini dibuat untuk memenuhi tugas UTS Mobile Programming.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Kembali'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}