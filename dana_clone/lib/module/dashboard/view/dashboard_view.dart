import 'package:carousel_slider/carousel_slider.dart';
import 'package:dana_clone/const/theme_constants.dart';
import 'package:dana_clone/module/send_money/view/send_money_view.dart';
import 'package:dana_clone/state_util.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../controller/dashboard_controller.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  Widget build(context, DashboardController controller) {
    controller.view = this;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Row(
          children: [
            const Icon(
              Icons.wallet,
              size: 24.0,
            ),
            const SizedBox(
              width: 4.0,
            ),
            const Text(
              "Rp",
              style: TextStyle(
                fontSize: 10.0,
              ),
            ),
            const SizedBox(
              width: 4.0,
            ),
            const Text(
              "100.000",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              width: 4.0,
            ),
            Icon(
              MdiIcons.chevronDown,
              size: 24.0,
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.email_outlined,
              size: 24.0,
            ),
          ),
        ],
      ),
      body: SizedBox(
        height: double.infinity,
        width: Get.width,
        child: Stack(
          children: [
            Container(
              height: 300,
              width: Get.width,
              decoration: BoxDecoration(
                color: primaryColor,
              ),
            ),
            Positioned(
              left: 20,
              right: 20,
              top: 100,
              bottom: 100,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.qr_code_scanner,
                                      size: 32.0,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      height: 6.0,
                                    ),
                                    Text(
                                      "Scan",
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Icon(
                                      MdiIcons.walletPlusOutline,
                                      size: 32.0,
                                      color: Colors.white,
                                    ),
                                    const SizedBox(
                                      height: 6.0,
                                    ),
                                    const Text(
                                      "Top up",
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Get.to(const SendMoneyView());
                                      },
                                      child: Icon(
                                        MdiIcons.sendCheckOutline,
                                        size: 32.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 6.0,
                                    ),
                                    const Text(
                                      "Send",
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Icon(
                                      MdiIcons.read,
                                      size: 32.0,
                                      color: Colors.white,
                                    ),
                                    const SizedBox(
                                      height: 6.0,
                                    ),
                                    const Text(
                                      "Request",
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 12.0,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: Get.width,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x19000000),
                            blurRadius: 24,
                            offset: Offset(0, 11),
                          ),
                        ],
                        borderRadius: const BorderRadius.all(
                          Radius.circular(8),
                        ),
                        border: Border.all(
                          width: 1.0,
                          color: Colors.grey[300]!,
                        ),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 24.0,
                          ),
                          Builder(
                            builder: (context) {
                              List menuItems = [
                                {
                                  "image":
                                      "https://a.m.dana.id/danaweb/help-center/1621347900-ico-mobilerecharge_3x.png",
                                  "label": "Pulsa &\nData",
                                },
                                {
                                  "image":
                                      "https://cdn-icons-png.flaticon.com/128/300/300218.png",
                                  "label": "Google\nPlay Store",
                                },
                                {
                                  "image":
                                      "https://cdn-icons-png.flaticon.com/512/8576/8576626.png",
                                  "label": "A+\nRewards",
                                },
                                {
                                  "image":
                                      "https://cdn-icons-png.flaticon.com/512/1068/1068778.png",
                                  "label": "Games",
                                },
                                {
                                  "image":
                                      "https://cdn-icons-png.flaticon.com/128/7380/7380470.png",
                                  "label": "BPJS",
                                },
                                {
                                  "image":
                                      "https://a.m.dana.id/danaweb/help-center/1621346051-ico-danadeals_3x.png",
                                  "label": "Dana\nDeals",
                                },
                                // {
                                //   "image":
                                //       "https://png.pngtree.com/png-clipart/20190630/original/pngtree-pln-file-document-icon-png-image_4165075.jpg",
                                //   "label": "Electricity",
                                // },
                                {
                                  "image":
                                      "https://developer.android.com/static/distribute/google-play/resources/icon-design-specifications/images/rounded-corners-uniformed.png",
                                  "label": "View\nAll",
                                },
                              ];
                              return GridView.builder(
                                padding: EdgeInsets.zero,
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  childAspectRatio: 1.0,
                                  crossAxisCount: 4,
                                  mainAxisSpacing: 6,
                                  crossAxisSpacing: 6,
                                ),
                                itemCount: menuItems.length,
                                shrinkWrap: true,
                                physics: const ScrollPhysics(),
                                itemBuilder: (BuildContext context, int index) {
                                  var item = menuItems[index];
                                  return InkWell(
                                    onTap: () {},
                                    child: Column(
                                      children: [
                                        Expanded(
                                          child: Container(
                                            padding: const EdgeInsets.all(2.0),
                                            child: Image.network(
                                              item['image'],
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 12.0,
                                        ),
                                        Text(
                                          item['label'],
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                            fontSize: 12.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    Container(
                      width: Get.width,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x19000000),
                            blurRadius: 24,
                            offset: Offset(0, 11),
                          ),
                        ],
                        borderRadius: const BorderRadius.all(
                          Radius.circular(8),
                        ),
                        border: Border.all(
                          width: 1.0,
                          color: Colors.grey[300]!,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Feed",
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Find out what your friends are up to!",
                                      style: TextStyle(
                                        fontSize: 12.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 32,
                                child: OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                    foregroundColor: primaryColor,
                                    side: BorderSide(
                                      color: primaryColor,
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: const Text(
                                    "EXPLORE",
                                    style: TextStyle(
                                      fontSize: 10,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            children: [
                              const CircleAvatar(
                                backgroundImage: NetworkImage(
                                  "https://i.ibb.co/PGv8ZzG/me.jpg",
                                ),
                              ),
                              const SizedBox(
                                width: 8.0,
                              ),
                              Expanded(
                                child: RichText(
                                  text: TextSpan(
                                    text: '',
                                    style: DefaultTextStyle.of(context)
                                        .style
                                        .copyWith(
                                          fontSize: 12,
                                        ),
                                    children: const <TextSpan>[
                                      TextSpan(
                                        text: 'Your Friend ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                        text:
                                            'just received Pulsa Voucher\nfrom ',
                                      ),
                                      TextSpan(
                                        text: 'Dana Surprize',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.orange,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      width: Get.width,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x19000000),
                            blurRadius: 24,
                            offset: Offset(0, 11),
                          ),
                        ],
                        borderRadius: const BorderRadius.all(
                          Radius.circular(8),
                        ),
                        border: Border.all(
                          width: 1.0,
                          color: Colors.grey[300]!,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "What's New",
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "The best news of the week!",
                                      style: TextStyle(
                                        fontSize: 12.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 20.0,
                              ),
                              SizedBox(
                                height: 32,
                                child: OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 12,
                                      vertical: 4,
                                    ),
                                    foregroundColor: primaryColor,
                                    side: BorderSide(
                                      color: primaryColor,
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Row(
                                    children: [
                                      Image.network(
                                        "https://cdn-icons-png.flaticon.com/128/2349/2349820.png",
                                        width: 20,
                                        height: 20,
                                        fit: BoxFit.cover,
                                      ),
                                      const SizedBox(
                                        width: 8.0,
                                      ),
                                      const Text(
                                        "VIEW PROMOS",
                                        style: TextStyle(
                                          fontSize: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Builder(builder: (context) {
                            List menuItems = [
                              {
                                "image":
                                    "https://static.vecteezy.com/system/resources/previews/028/766/365/original/dana-payment-icon-symbol-free-png.png",
                                "title": "#BukanDompetBiasa",
                                "subtitle": "Semua transaksi bisa di DANA",
                              },
                              {
                                "image":
                                    "https://logowik.com/content/uploads/images/ninja2506.jpg",
                                "title": "Bye Modus Penipuan",
                                "subtitle": "Cek tips aman DANA yuk!",
                              },
                              {
                                "image":
                                    "https://freelogopng.com/images/all_img/1685525042lazada-app-logo.png",
                                "title": "Serbu Diskon Lazada",
                                "subtitle": "Pake DANA diskon s/d RP40RB!",
                              },
                            ];
                            return ListView.builder(
                              padding: EdgeInsets.zero,
                              itemCount: 3,
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (BuildContext context, int index) {
                                var item = menuItems[index];
                                return ListTile(
                                  leading: CircleAvatar(
                                    backgroundImage: NetworkImage(
                                      item['image'],
                                    ),
                                  ),
                                  title: Text(item['title']),
                                  subtitle: Text(item['subtitle']),
                                );
                              },
                            );
                          }),
                          const SizedBox(
                            height: 12.0,
                          ),
                          SizedBox(
                            height: 32,
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                foregroundColor: primaryColor,
                                side: BorderSide(
                                  color: primaryColor,
                                ),
                              ),
                              onPressed: () {},
                              child: const Text(
                                "VIEW ALL NEWS",
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    Container(
                      width: Get.width,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x19000000),
                            blurRadius: 24,
                            offset: Offset(0, 11),
                          ),
                        ],
                        borderRadius: const BorderRadius.all(
                          Radius.circular(8),
                        ),
                        border: Border.all(
                          width: 1.0,
                          color: Colors.grey[300]!,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Nearby",
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Find DANA merchants in your area!",
                                      style: TextStyle(
                                        fontSize: 12.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 32,
                                child: OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                    foregroundColor: primaryColor,
                                    side: BorderSide(
                                      color: primaryColor,
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: const Text(
                                    "EXPLORE",
                                    style: TextStyle(
                                      fontSize: 10,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<DashboardView> createState() => DashboardController();
}
