import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  // @override
  // State<LoginPage> createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 80),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: const Icon(
                    Icons.arrow_back_rounded,
                    size: 38,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                const ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(
                    'Welcome!',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 5,
                    ),
                  ),
                  subtitle: Text(
                    'Sign in to continue',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 2,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                const TextField(
                  maxLines: 1,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1,
                  ),
                  decoration: InputDecoration(
                    labelText: 'Username',
                    hintText: 'You can use your Email instead !',
                    hintStyle: TextStyle(color: Colors.black38),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const TextField(
                  obscureText: true,
                  maxLines: 1,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1,
                  ),
                  decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Check your Capslock ;)',
                    hintStyle: TextStyle(color: Colors.black38),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                  onPressed: () {
                    // Navigator.pushNamed(context, '/home');
                    Navigator.of(context)
                      ..pop()
                      ..pop()
                      ..pushNamed('/home');
                  },
                  child: Text(
                    'login'.toUpperCase(),
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 2,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(
                      MediaQuery.of(context).size.width,
                      0,
                    ),
                  ),
                ),
                Center(
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Forgot Password?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        endIndent: 10,
                        color: Colors.black54,
                      ),
                    ),
                    Text(
                      'or',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 2,
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        indent: 10,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                const Center(
                  child: Text(
                    'Social Media Login',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      // color: Colors.black54,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.login),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.login),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.login),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    const Text(
                      'Don\'t have an account?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 2,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.popAndPushNamed(context, '/signup');
                      },
                      child: const Text(
                        'Sign Up!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          letterSpacing: 2,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
