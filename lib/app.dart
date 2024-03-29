import 'package:flutter/material.dart';
import 'package:task_manager/presentation/screens/splash_screen.dart';
import 'package:task_manager/presentation/screens/update_profile_screen.dart';
import 'package:task_manager/presentation/utils/app_colors.dart';

class TaskManager extends StatefulWidget {
  const TaskManager({super.key});

  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>(); //------------------------------

  @override
  State<TaskManager> createState() => _TaskManagerState();
}

class _TaskManagerState extends State<TaskManager> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: TaskManager.navigatorKey, //----------------------------------
      //navigatorObservers: [],
      title: "Task Manager",
      //home: const SplashScreen(),
      initialRoute: '/',
      routes: {  // ---------------> hash routing
        '/':(context)=> const SplashScreen(),
        //'/signIn':(context)=> SignInScreen(),
        '/updateProfileScreen':(context)=> const UpdateProfileScreen(),
      },
      theme: ThemeData(
        fontFamily: 'Roboto',
        inputDecorationTheme: InputDecorationTheme(
          fillColor: Colors.amber[50], //--- change to white
          filled: true,
          contentPadding:
          const EdgeInsets.symmetric(horizontal: 24,vertical: 16),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            backgroundColor: AppColors.themeColor,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            //fixedSize:
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: AppColors.themeColor,
            textStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w600,
          ),
          //titleMedium: TextStyle(fontSize: 24, fontWeight: FontWeight.w600,),
        ),
        chipTheme: ChipThemeData(
          //shape: CircleBorder(), //---------------------------------------------
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50),),
          //color: Color(0xFF123456), //----------------------------------------
          //color: Colors.blue,
          backgroundColor: Colors.cyan,
          side: BorderSide.none,
        ),
      ),
    );
  }
}
