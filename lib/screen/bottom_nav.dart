import 'package:flutter/material.dart';
import 'package:flutter_ui/screen/home_screen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  final _bucket = PageStorageBucket();
  Widget currentScreen = HomeScreen();
  int indexScreen = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: _bucket,
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        color: const Color(0xff261863),
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
          ),
          padding: const EdgeInsets.all(10),
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MaterialButton(
                onPressed: () {
                  setState(
                    () {
                      indexScreen = 0;
                    },
                  );
                },
                child: Column(
                  children: const [
                    Image(
                      image: AssetImage("images/home.png"),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Home",
                      style: TextStyle(
                        color: Color(0xffD975BB),
                      ),
                    ),
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    indexScreen = 1;
                  });
                },
                child: Column(
                  children: const [
                    Image(
                      image: AssetImage("images/wallet.png"),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Wallet",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 38,
              ),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    indexScreen = 2;
                  });
                },
                child: Column(
                  children: const [
                    Image(
                      image: AssetImage("images/market.png"),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Market",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {
                  setState(
                    () {
                      indexScreen = 3;
                    },
                  );
                },
                child: Column(
                  children: const [
                    Image(
                      image: AssetImage("images/setting.png"),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Setting",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Container(
          height: 120,
          width: 120,
          decoration: BoxDecoration(
            color: const Color(0xff55389B),
            borderRadius: BorderRadius.circular(38),
          ),
          child: const Icon(
            Icons.swap_horiz_outlined,
            size: 40,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
