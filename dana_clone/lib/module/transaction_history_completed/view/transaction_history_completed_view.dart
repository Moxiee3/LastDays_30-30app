import 'package:flutter/material.dart';
import '../controller/transaction_history_completed_controller.dart';

class TransactionHistoryCompletedView extends StatefulWidget {
  const TransactionHistoryCompletedView({Key? key}) : super(key: key);

  Widget build(context, TransactionHistoryCompletedController controller) {
    controller.view = this;

    return ListView.builder(
      itemCount: 3,
      physics: const ScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey[200],
              backgroundImage: const NetworkImage(
                "https://i.ibb.co/QrTHd59/woman.jpg",
              ),
            ),
            title: const Text("Jessica Doe"),
            subtitle: const Text("Programmer"),
          ),
        );
      },
    );
  }

  @override
  State<TransactionHistoryCompletedView> createState() =>
      TransactionHistoryCompletedController();
}
