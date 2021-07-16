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
  bool _initialized = false;
  bool _error = false;

  void initializeFlutterFire() async {
    try {
      await Firebase.initializeApp();
      setState(() {
        _initialized = true;
      });
    } catch(e) {
      print(e);
      setState(() {
        _error = true;
      });
    }
  }

  @override
  void initState() {
    initializeFlutterFire();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if(_error) {
      return Material(child: Center(child: Text('Erro ao inicializar o Firebase', textDirection: TextDirection.ltr),),);
    }

    if (!_initialized) {
      return Center(child: CircularProgressIndicator());
    }

    return AppWidget();
  }
}