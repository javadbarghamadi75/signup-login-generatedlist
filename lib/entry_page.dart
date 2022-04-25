import 'package:flutter/material.dart';

class EntryPage extends StatelessWidget {
  final String _greetingW;
  final String _greetingT;

  EntryPage({
    Key? key,
    required String greetingWord,
    required String greetingText,
  })  : _greetingW = greetingWord,
        _greetingT = greetingText,
        super(key: key) {
    print('$_greetingW & $_greetingT');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 0),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset(
                    'assets/images/home_picture.jpeg',
                    filterQuality: FilterQuality.high,
                    fit: BoxFit.cover,
                    height: MediaQuery.of(context).size.width,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ListTile(
                  title: Text(
                    _greetingW,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 5,
                    ),
                  ),
                  subtitle: Text(
                    _greetingT,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 2,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(
                      MediaQuery.of(context).size.width,
                      0,
                    ),
                    // minimumSize: const Size.fromWidth(590),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  child: Text(
                    'login'.toUpperCase(),
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 2,
                    ),
                  ),
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    fixedSize: Size(
                      MediaQuery.of(context).size.width,
                      0,
                    ),
                    // minimumSize: const Size.fromWidth(590),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/signup');
                  },
                  child: Text(
                    'sign up'.toUpperCase(),
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 2,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
