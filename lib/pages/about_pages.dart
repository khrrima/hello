part of 'pages.dart';

class AboutPages extends StatelessWidget {
  const AboutPages({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Pages"),
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
              "ABOUT US!",
              style: mainBlackTextStyle.copyWith(fontSize: 50),
            ),

            SizedBox(
              height: 5,
            ),

            Text(
              "."
            ),

            SizedBox(
              height: 5,
            ),

            Text(
              "     Aplikasi ini dibuat atas dasar untuk memenuhi tugas mata kuliah Mobile Programming 2."
            ),
          ],
        ),
      ),
      
    );
  }
}