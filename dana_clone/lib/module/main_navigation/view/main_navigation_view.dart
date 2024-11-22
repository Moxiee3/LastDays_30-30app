import 'package:dana_clone/module/dashboard/view/dashboard_view.dart';
import 'package:dana_clone/module/main_navigation/controller/main_navigation_controller.dart';
import 'package:dana_clone/module/transaction_history/view/transaction_history_view.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MainNavigationView extends StatefulWidget {
  const MainNavigationView({Key? key}) : super(key: key);

  Widget build(context, MainNavigationController controller) {
    controller.view = this;

    return DefaultTabController(
      length: 5,
      initialIndex: controller.selectedIndex,
      child: Scaffold(
        body: IndexedStack(
          index: controller.selectedIndex,
          children: [
            const DashboardView(),
            const TransactionHistoryView(),
            Container(
              color: Colors.transparent,
            ),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.purple,
            ),
          ],
        ),
        floatingActionButton: Transform.translate(
          offset: const Offset(0, 12),
          child: Transform.scale(
            scale: 1.2,
            child: FloatingActionButton(
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.qr_code_2,
                    size: 32,
                  ),
                  Text(
                    "Pay",
                    style: TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                ],
              ),
              onPressed: () {},
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.selectedIndex,
          onTap: (newIndex) => controller.updateIndex(newIndex),
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                MdiIcons.wallet,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                MdiIcons.listBox,
              ),
              label: "History",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                MdiIcons.listBox,
              ),
              label: "",
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.wallet_rounded,
              ),
              label: "Wallet",
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.person_pin,
              ),
              label: "Me",
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<MainNavigationView> createState() => MainNavigationController();
}
