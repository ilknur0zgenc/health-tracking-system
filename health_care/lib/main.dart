import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:health_care/screens/home_screen.dart';
import 'package:health_care/widgets/theme.dart';
import 'package:provider/provider.dart';
import 'models/mood_model.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MoodModel()),
      ],
      child: const MyApp(),
    ),
  );
=======
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'screens/dashboard_screen.dart';
import 'screens/water_screen.dart';
import 'screens/medication_screen.dart';
import 'screens/appointment_screen.dart';
import 'screens/mood_screen.dart';
import 'screens/chatbot_screen.dart';
import 'screens/settings_screen.dart';

void main() {
  runApp(const MyApp());
>>>>>>> b661dad4c3cacbe2977412d8e17856d24baa1132
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
<<<<<<< HEAD
      title: 'Duygu Durumu',
      debugShowCheckedModeBanner: false,
      theme: appTheme, // <<< GÜNCELLENDİ: Oluşturduğumuz temayı kullan
      home: const HomeScreen(),
    );
  }
}
=======
      debugShowCheckedModeBanner: false,
      title: "Health Tracking App",
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const MainNavigation(),
    );
  }
}

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    DashboardScreen(),
    MoodScreen(),
    ChatbotScreen(),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },

        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.grey,

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: "Ana Sayfa",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.emoji_emotions),
            label: "Duygular",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble),
            label: "Chatbot",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Ayarlar",
          ),
        ],
      ),
    );
  }
}
>>>>>>> b661dad4c3cacbe2977412d8e17856d24baa1132
