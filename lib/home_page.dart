import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  // @override
  // State<HomePage> createState() => _SignupPageState();
// }

// class _SignupPageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    List<String> myList = List.generate(10, (index) => 'index');
    List<String> firstNames = [
      'Ali',
      'Javad',
      'Mohammad Hossein',
      'Reza',
      'Soheil',
      'Ashkan',
      'Qoli',
      'Hasan',
      'Jafar',
      'Amir',
    ];
    List<String> lastNames = [
      'Rasooli',
      'Mohammadi',
      'Torabi',
      'Barghamadi',
      'Zobeidi',
      'Moradi',
      'Ghorbani',
      'Hosseini',
      'Karimi',
      'Akherati',
    ];
    final birthdays = List<DateTime>.generate(
        20,
        (i) => DateTime.utc(
              DateTime.now().year,
              DateTime.now().month,
              DateTime.now().day,
            ).add(Duration(days: i * -270)));
    // birthdays.forEach(print);
    List<String> imagesList = [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkfF6nBhidhIzL330CYtg70I8tpDBGJ2YjBPnE9D9gY0iLmGu563WBIab4KBexSDv7kG8&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTU37FnbBg50aestSWYenXfXOSAK5UjVcHCJfgbl96rpocUMXtGqXaVFBxHbou9qWNzQoU&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUrTJPUo91_LIru0L4C7cldGaEMoBR3LNX3A&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3Fbmz98uGL5zx0dPHLVFmOaBRO46-YJo33kmAtW7zNHoj30XFGi2J0zKzqVWXTDlj8Bc&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDfSwap3iAYqS7YoldaB-ZT92aoKU9KymmtbNV3gjeJ5wI9Wed4AT8jANOQ3C6k3mI_XQ&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrumW3wYngoz_f6RzRjlv2qUOQH2efzsHUJerlO4k6dY0BgbSDXu3FTw4KzcSHF4Nv7lI&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrs-3w47KbuNFQtM75g8ma9rcsB1VNrj-hPKf4jbJQcH0sA8AyfD4W0btbeWzVVX1GEOk&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCOT4cbD49FfHH85ol33_pFhNKx59Svc1YKQ&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRt-YkG5DuyGAhJ0eDLCPbC5MBOs9m5cXX8yA&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_UElimqN0XrWx8vju9QG0Ad5aYcuKN-4jnQ&usqp=CAU',
    ];
    // print('myList.first : ${myList.first}');

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
                child: Row(
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                            child: Image.network(imagesList[index - 1])),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              '${firstNames[index - 1]} ${lastNames[index - 1]}'),
                          Text(birthdays[index - 1].toString().substring(
                              0, birthdays[index - 1].toString().indexOf(' '))),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
