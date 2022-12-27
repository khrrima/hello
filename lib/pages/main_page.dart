part of 'pages.dart';

class MainPage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<MainPage> {
  int selectedPage = 0;

  final _pageOptions = [
    HomePages(),
    DatePages(),
    TimePages(),
    AboutPages(),
    ProfilePages(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryColor,
        body: _pageOptions[selectedPage],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home, size: 30), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.date_range_outlined, size: 30), label: 'Date'),
            BottomNavigationBarItem(icon: Icon(Icons.access_time, size: 30), label: 'Time'),
            BottomNavigationBarItem(icon: Icon(Icons.question_mark_outlined, size: 30), label: 'About'),
            BottomNavigationBarItem(icon: Icon(Icons.account_circle_rounded, size: 30), label: 'Profile'),
          ],
          selectedItemColor: Colors.black,
          elevation: 5.0,
          unselectedItemColor: primaryColor,
          currentIndex: selectedPage,
          backgroundColor: Colors.cyan,
          onTap: (index){
            setState(() {
              selectedPage = index;
            });
          },
        )
    );
  }
}