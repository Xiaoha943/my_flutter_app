import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/list_controller.dart';

class ListView extends GetView<ListController> {
  const ListView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView'),
        centerTitle: true,
      ),
      body: NewWidget(),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Container(
        child: SingleChildScrollView(
          child:DataTable(
            columns: [
              DataColumn(label: Text('姓名')),
              DataColumn(label: Text('年龄')),
              DataColumn(label: Text('性别')),
              DataColumn(label: Text('简介')),
            ],
            rows: [
              DataRow(
                cells: [
                  DataCell(Text('韩静文')),
                  DataCell(Text('24')),
                  DataCell(Text('女')),
                  DataCell(Text('前端开发')),
                ]
              )
            ],
          )
        ),
    );
  }
}


