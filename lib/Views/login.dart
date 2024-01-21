import 'package:flutter/material.dart';
import 'package:easy_container/easy_container.dart';
import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';

class Loginpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int maxCount = 5;
    final pageController = PageController(initialPage: 0);
    final List<Widget> bottomBarPages = [
      const Page1(),
      const Page2(),
    ];

    /// Controller to handle bottom nav bar and also handles initial page
    final controller = NotchBottomBarController(index: 0);
    return Scaffold(
      bottomNavigationBar: (bottomBarPages.length <= maxCount)
          ? AnimatedNotchBottomBar(
              bottomBarItems: const [
                BottomBarItem(
                  inActiveItem: Icon(
                    Icons.home_filled,
                    color: Colors.blueGrey,
                  ),
                  activeItem: Icon(
                    Icons.home_filled,
                    color: Colors.blueAccent,
                  ),
                  itemLabel: 'Page 1',
                ),
                BottomBarItem(
                  inActiveItem: Icon(
                    Icons.star,
                    color: Colors.blueGrey,
                  ),
                  activeItem: Icon(
                    Icons.star,
                    color: Colors.blueAccent,
                  ),
                  itemLabel: 'Page 2',
                ),
              ],
              notchBottomBarController: controller,
              onTap: (index) {
                /// perform action on tab change and to update pages you can update pages without pages
                // log('current selected index $index');
                pageController.jumpToPage(index);
              },
              kIconSize: 20,
              kBottomRadius: 20,
            )
          : null,
      backgroundColor: const Color(0xFF1D2B2E),
      body: PageView(
        controller: pageController,
        children: List.generate(
            bottomBarPages.length, (index) => bottomBarPages[index]),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(25),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome back!',
                      style: TextStyle(
                        color: Color(0xFF6E6B6B),
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      'Check your Health Today',
                      style: TextStyle(
                        color: Color(0xFF6E6B6B),
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
                EasyContainer(
                  width: 60,
                  height: 70,
                  borderRadius: 26,
                  color: Color(0xFF1D2B2E),
                  child: Icon(
                    Icons.notifications,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Mazen Adel Salah',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'your appointments',
                  style: TextStyle(
                    color: Color(0xFFA6A0A0),
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 100,
            ),
            Expanded(
              child: EasyContainer(
                borderRadius: 38,
                color: Colors.white,
                child: Text('data'),
              ),
            )
          ]),
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.greenAccent,
      child: Text('hay'),
    );
  }
}
