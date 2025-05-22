import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    final titleStyle = TextStyle(
      color: Colors.black,
      fontFamily: 'WeiRuanYaHei',
      fontSize: 14,
      fontWeight: FontWeight.bold,
    );
    final textStyle = TextStyle(
      color: Color(0xFF9898A0),
      fontFamily: 'WeiRuanYaHei',
      fontSize: 12,
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            Get.back();
          },
        ),
        title:Text(
            '交易詳情',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'WeiRuanYaHei',
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        centerTitle: true,
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              color: Color(0xFFDA9237),
              height: 100,
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text('調增金額',style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'WeiRuanYaHei',
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),),
                  Text('HKD 10.00',style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'WeiRuanYaHei',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  )),
                ],
              ),
            ),
            Expanded(
              child: Center(
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 350,
                            height: 350,
                            margin: const EdgeInsets.only(top: 20),
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('交易信息',style: titleStyle,),
                                    ]
                                  ),
                                  Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('交易编号',style: textStyle,),
                                        Text('11785665586892',style: textStyle,)
                                      ]
                                  ),
                                  Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('交易类型',style: textStyle,),
                                        Text('調整',style: textStyle,)
                                      ]
                                  ),
                                  Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('交易狀態',style: textStyle,),
                                        Text('已完成',style: textStyle,)
                                      ]
                                  ),
                                  Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('交易創建時間',style: textStyle,),
                                        Text('25/04/2025 12：06：45',style: textStyle,)
                                      ]
                                  ),
                                  Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('交易更新時間',style: textStyle,),
                                        Text('25/04/2025 12：06：45',style: textStyle,)
                                      ]
                                  ),
                                  Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('交易説明',style: textStyle,),
                                        Text('記賬異常扣取',style: textStyle,)
                                      ]
                                  )
                                ]
                            ),
                          ),
                        ],
                      )
                  )
            )
          ],
        ),
      ),
      floatingActionButton :FloatingActionButton(
        // onPressed: _incrementCounter,
        onPressed: (){
          Get.toNamed('/list');
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
      );
  }
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            '交易詳情',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'WeiRuanYaHei',
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ) ,
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              color: Colors.orange,
              height: 100,
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text('調增金額',style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'WeiRuanYaHei',
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),),
                  Text('HKD 10.00',style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'WeiRuanYaHei',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  )),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Center(
                      child:Container(
                        key: ValueKey(index),
                        width: 300,
                        height: 100,
                        color: Colors.blue[200],
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [

                            ]
                        ),
                      )
                  );
                },
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}