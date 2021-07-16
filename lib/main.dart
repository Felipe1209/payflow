import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:payflow/core/app_widget.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(AppFirebase());
}

class AppFirebase extends StatefulWidget {
  @override
  _AppFirebaseState createState() => _AppFirebaseState();
}

class _AppFirebaseState extends State<AppFirebase> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Material(child: Center(child: Text('Erro na inicialização do Firebase', textDirection: TextDirection.ltr)));
        }

        if (snapshot.connectionState == ConnectionState.done) {
          return AppWidget();
        }

        return Material(child: Center(child: CircularProgressIndicator(),));
      },
    );
  }
}