import 'package:flutter/material.dart';
import '../controller/request_money_controller.dart';

class RequestMoneyView extends StatefulWidget {
  const RequestMoneyView({Key? key}) : super(key: key);

  Widget build(context, RequestMoneyController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("RequestMoney"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }

  @override
  State<RequestMoneyView> createState() => RequestMoneyController();
}
