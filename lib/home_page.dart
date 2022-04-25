import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  // @override
  // State<HomePage> createState() => _SignupPageState();
// }

// class _SignupPageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    List<int> myList = List.generate(150, (index) => index);
    print('myList.first : ${myList.first}');

    return Scaffold(
      body: Center(
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 80),
          itemCount: myList.length + 1,
          itemBuilder: (context, index) {
            if (index == 0) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Home',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 5,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              );
            } else {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: ListTile(
                  title: Text('${myList[index - 1]}'),
                  subtitle:
                      Text('This is item number : ${myList[index - 1] + 1}'),
                  // contentPadding: const EdgeInsets.symmetric(horizontal: 5),
                  tileColor: Colors.grey[100],
                  shape: const ContinuousRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                  ),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
