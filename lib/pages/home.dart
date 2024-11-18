import 'package:flutter/material.dart';
import 'package:flutter_application_9/localization/locales.dart';
import 'package:flutter_localization/flutter_localization.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late FlutterLocalization _flutterLocalization;
  late String _currentLocale;

  @override
  void initState() {
    _flutterLocalization = FlutterLocalization.instance;
    _currentLocale = _flutterLocalization.currentLocale!.languageCode;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: false,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Text(
          LocaleData.title.getString(context),
        ),
        actions: [
          DropdownButton<String>(
            value: _currentLocale,
            items: const [
              DropdownMenuItem(
                value: 'en',
                child: Text('English'),
              ),
              DropdownMenuItem(
                value: 'de',
                child: Text('German'),
              ),
              DropdownMenuItem(
                value: 'zh',
                child: Text('Chinese'),
              ),
            ],
            onChanged: (value) {
              _selectLocale(value);
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              context.formatString(
                LocaleData.body,
                ['Mostafa'],
              ),
              style: const TextStyle(
                color: Colors.red,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _selectLocale(String? value) {
    if (value == null) return;

    _flutterLocalization.translate(value);
    setState(() {
      _currentLocale = value;
    });
  }
}
