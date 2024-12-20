import 'package:dana_clone/const/theme_constants.dart';
import 'package:dana_clone/module/transaction_history/controller/transaction_history_controller.dart';
import 'package:dana_clone/module/transaction_history_completed/view/transaction_history_completed_view.dart';
import 'package:dana_clone/module/transaction_history_in_progress/view/transaction_history_in_progress_view.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class TransactionHistoryView extends StatefulWidget {
  const TransactionHistoryView({Key? key}) : super(key: key);

  Widget build(context, TransactionHistoryController controller) {
    controller.view = this;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: primaryColor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: primaryColor,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(30),
            child: TabBar(
              indicatorColor: Colors.transparent,
              onTap: (value) {
                controller.updateIndex(value);
              },
              tabs: const [
                Tab(
                  text: "In Progress",
                ),
                Tab(
                  text: "Completed",
                ),
              ],
            ),
          ),
          title: const Text('History'),
        ),
        body: Container(
          color: Colors.white,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: primaryColor,
                ),
                width: MediaQuery.of(context).size.width,
                transform: Matrix4.translationValues(0.0, -1, 0),
                child: Row(
                  children: [
                    Expanded(
                      child: Icon(
                        MdiIcons.triangle,
                        size: 12,
                        color: controller.selectedIndex == 0
                            ? Colors.white
                            : Colors.transparent,
                      ),
                    ),
                    Expanded(
                      child: Icon(
                        MdiIcons.triangle,
                        size: 12,
                        color: controller.selectedIndex == 1
                            ? Colors.white
                            : Colors.transparent,
                      ),
                    ),
                  ],
                ),
              ),
              const Expanded(
                child: TabBarView(
                  children: [
                    TransactionHistoryInProgressView(),
                    TransactionHistoryCompletedView(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<TransactionHistoryView> createState() => TransactionHistoryController();
}
