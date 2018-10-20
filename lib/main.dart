import 'package:flutter/material.dart';

void main() => runApp(new LivingFukuokaApp());

class LivingFukuokaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LIVING 福岡',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  Widget _featureTopic(String imageUrl, String title) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Image.network(imageUrl),
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(12.0),
          decoration: BoxDecoration(color: Color(0x7f000000)),
          child: Text(title, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, height: 1.5)),
        )
      ],
    );
  }
  Widget _leftUi(String title, String imageUrl, String description) {
    return Container(
      margin: EdgeInsets.all(8.0),
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
      children: [
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 8.0),
          child: Text(title, style: TextStyle(fontWeight: FontWeight.bold))
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 8.0),
          child: Divider(height: 4.0, color: Color(0xFFC7AC74)),
        ),
        Row(
          children:[
            Image.network(imageUrl, width: 96.0, fit: BoxFit.fitWidth),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 8.0),
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Text(description)
              ),
            )
          ]
        )
      ]
    )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text("おでかけ"),
              onTap: () {
              }
            ),
            ListTile(
              title: Text("イベントカレンダー"),
              onTap: () {
              }
            ),
            ListTile(
              title: Text("グルメ"),
              onTap: () {
              }
            ),
            ListTile(
              title: Text("くらし"),
              onTap: () {
              }
            ),
            ListTile(
              title: Text("まち"),
              onTap: () {
              }
            ),
            ListTile(
              title: Text("ワタシの本音"),
              onTap: () {
              }
            ),
            ListTile(
              title: Text("プレゼント"),
              onTap: () {
              }
            ),
            ListTile(
              title: Text("ツアー&カルチャー"),
              onTap: () {
              }
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Container(
            margin: EdgeInsets.all(8.0),
            child: Image.network('https://home.livingfk.com/common/css/img/living_logo.png?20171225')
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Color(0x89000000)),
        elevation: 2.0,
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 280.0,
            child: PageView(
              children: [
                _featureTopic('https://home.livingfk.com/uploads/sprite/main_image/image/227/69c6b1b331.jpg', "ソムリエに聞く「みそ」「しょうゆ」の魅力や意外なアレンジを紹介・プレントも！"),
                _featureTopic('https://home.livingfk.com/uploads/sprite/main_image/image/228/2dc5d28037.jpg', "甘～い安納芋がたっぷりと入った「安納芋のクロワッサンロール」"),
              ],
            )
          ),
          _leftUi("プレゼント", "https://home.livingfk.com/uploads/pictures/21223/content_0649b8ec9f.jpg", "麺 食 喜多方ラーメン ３食セットを5人に ほか"),
          _leftUi("イベントカレンダー", "https://home.livingfk.com/uploads/pictures/21225/content_09919441e8.jpg", "今週末はどこに出かけよう♪おでかけ前にイベントカレンダーをチェック！"),
          _leftUi("リビングツアー&カルチャー", "https://home.livingfk.com/uploads/pictures/21224/content_bdc2a6c138.jpg", "[日帰り]大人気散策スポットと大邸宅へ　麻生大浦荘と九大の森"),
        ],
      ),
    );
  }
}
