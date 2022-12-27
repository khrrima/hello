part of 'pages.dart';

class HomePages extends StatelessWidget {
  const HomePages({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Pages"),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,

        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 14),
          children: [

            SizedBox(
              height: 40,
            ),

            Text(
              "HELLO. . .!",
              style: mainBlackTextStyle.copyWith(fontSize: 50),
            ),

            SizedBox(
              height: 5,
            ),

            Text(
              "Welcome Back Kharima.",
              style: subBlackTextStyle,
            ),

            SizedBox(
              height: 5,
            ),

            Text(
              "Have a nice day.",
              style: subBlackTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}