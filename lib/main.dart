import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:me_myself_ai/pages/forgot_password.dart';
import 'package:me_myself_ai/pages/login.dart';
import 'package:me_myself_ai/pages/phone_verification.dart';
import 'package:me_myself_ai/pages/profile.dart';
import 'package:me_myself_ai/pages/profile_info.dart';
import 'package:me_myself_ai/pages/signup.dart';
import 'package:me_myself_ai/pages/splash1.dart';
import 'core/theme/app_theme.dart';
import 'features/ai_assistant/views/ai_assistant_screen.dart';
import 'features/calendar/views/calendar_screen.dart';
import 'features/dashboard/presentation/screens/dashboard_screen.dart';
import 'features/diary/views/diary_newentry_screen.dart';
import 'features/diary/views/diary_screen.dart';
import 'features/unified_inbox/views/unified_chat_screen.dart';
import 'features/unified_inbox/views/unified_inbox_screen.dart';
import 'features/unified_inbox/views/unified_newmsg_screen.dart';
import 'features/vault/views/vault_password_screen.dart';
import 'features/vault/views/vault_screen.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized(); // ✅ Required before async code
  await dotenv.load(fileName: ".env");       // ✅ Load your env file

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Me Myself I Ai',
      theme: AppTheme.lightTheme,

      initialRoute: '/splash1', // Set SplashScreen1 as initial route
      routes: {

        '/splash1': (context) => SplashScreen1(),
        '/login': (context) => LoginScreen(),
        '/register': (context) => RegisterScreen(),
        '/dashboard': (context) => const DashboardScreen(),
        '/profile': (context) => ProfilePage(),
        '/forgot_password': (context) => ForgotPasswordScreen() ,
        '/phone_verification': (context) => PhoneVerificationScreen(phoneNumber: '',) ,
        '/unified_inbox_screen': (context) => UnifiedInboxScreen(),
        // '/unified_chat_screen': (context) => UnifiedChatScreen(message: '',),
        '/unified_newmsg_screen': (context) => UnifiedNewMsgScreen(),
        '/diary_screen': (context) => DiaryScreen(),
        '/diary_newentry_screen': (context) => DiaryNewEntryScreen(),
        '/vault_screen': (context) => VaultScreen(),
        '/vault_password_screen': (context) => VaultPasswordScreen(),
        '/calendar_screen': (context) => CalendarScreen(),
        '/dashboard_screen': (context) => DashboardScreen(),
        // '/profile_info': (context) => ProfileInfoScreen(),
        '/ai_assistant_screen': (context) => AIAssistantScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}