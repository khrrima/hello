part of 'pages.dart';

class ProfilePages extends StatelessWidget {
  const ProfilePages({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Pages"),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,

        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 14),
          children: [

            SizedBox(
              height: 15,
            ),

            Image.asset("assets/images/pp.png", height: 300, width: 300,),

            SizedBox(
              height: 5,
            ),

            Text(
              "kharimaaas@gmail.com",
              style: subBlackTextStyle,
              textAlign: TextAlign.center,
            ),

            SizedBox(
              height: 5,
            ),

            Text(
              "Kharima Anjar Sari",
              style: mainBlackTextStyle,
              textAlign: TextAlign.center,
            ),

            SizedBox(
              height: 5,
            ),

            Text(
              "20552011092",
              style: subBlackTextStyle,
              textAlign: TextAlign.center,
            ),

            SizedBox(
              height: 5,
            ),

            Text(
              "TIF RP 20B",
              style: subBlackTextStyle,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      
    );
  }
}