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
  Widget _topicsListModule(String imageUrl, String category, String subCategory, String title) {
    return Container(
      padding: EdgeInsets.all(4.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(imageUrl, width: double.infinity, height: 96.0, fit: BoxFit.fitWidth),
          Container(
            margin: EdgeInsets.only(top: 8.0),
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    decoration: BoxDecoration(border: Border.all(color: Color(0x2A000000))),
                    padding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 6.0),
                    child: Text(category, style: TextStyle(color: Color(0xFFB60149)), textScaleFactor: 0.66,)
                ),
                Container(
                  margin:EdgeInsets.only(left: 8.0),
                  child: Text(subCategory, style: TextStyle(color: Color(0x77000000)), textScaleFactor: 0.66,),
                ),
              ]
            )
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(title, maxLines: 2, style: TextStyle(height: 1.5), textScaleFactor: 0.8,)
          )
        ],
      )
    );
  }
  Widget _col1(String imageUrl, String category, String subCategory, String title) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(imageUrl, width: 80.0, height: 80.0, fit: BoxFit.cover,),
          Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              decoration: BoxDecoration(border: Border.all(color: Color(0x2A000000))),
                              padding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 6.0),
                              child: Text(category, style: TextStyle(color: Color(0xFFB60149)), textScaleFactor: 0.66,)
                          ),
                          Container(
                            margin:EdgeInsets.only(left: 8.0),
                            child: Text(subCategory, style: TextStyle(color: Color(0x77000000)), textScaleFactor: 0.66,),
                          ),
                        ]
                    )
                ),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                    child: Text(title, maxLines: 2, style: TextStyle(height: 1.5), textScaleFactor: 0.8,)
                )
              ],
            )
          )
        ],
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
          Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 8.0),
              child: Text("ピックアップ", style: TextStyle(fontWeight: FontWeight.bold))
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Divider(height: 4.0, color: Color(0xFFC7AC74)),
          ),
          Container(
            margin: EdgeInsets.all(4.0),
            child: Row(
              children: [
                Expanded(
                  child: _topicsListModule("https://home.livingfk.com/uploads/sprite/item/image/2491/large_abdced5ee3.jpg", "グルメ", "特集（グルメ）", "今年も福岡のパンやスイーツを中心としたお店の特別メニューがズラリ！「ピンクリボングルメ」")
                ),
                Expanded(
                  child: _topicsListModule("https://home.livingfk.com/uploads/sprite/item/image/2711/large_98ea15b98b.jpg", "くらし", "レシピ", "さつまいも消費レシピです！ 「塩バターおいもチップス」")
                )
              ]
            )
          ),
          Divider(),
          _col1("https://home.livingfk.com/uploads/sprite/item/image/2718/thumb_c7203999d1.jpg", "おでかけ", "特集（おでかけ）", "福岡のハロウィンイベント2018＆ハロウィングッズを紹介！"),
          Divider(),
          _col1("https://home.livingfk.com/uploads/sprite/item/image/2703/thumb_a2d7c7486c.jpg", "くらし", "チャチャっと簡単♪ステキにおうちDIY", "使わなくなった「木製ハンガー」を簡単リメイク！ 「クローゼットにアクセサリー収納」"),
          Divider(),
          _col1("https://home.livingfk.com/uploads/sprite/item/image/2704/thumb_c2505d4980.jpg", "くらし", "ココロとカラダのミネラル", "口唇炎・口唇ヘルペス"),
        ],
      ),
    );
  }
}
