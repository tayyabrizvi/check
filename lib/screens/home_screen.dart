import 'package:digital_wallet_app/widgets/my_buttons.dart';
import 'package:digital_wallet_app/widgets/my_cards.dart';
import 'package:digital_wallet_app/widgets/my_list.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final pageController= PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1d2630),
      body: SingleChildScrollView( 
        child: SafeArea(child: 
        Column( 
          children: [ 
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row( 
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [ 
                 Row( 
                  children: [ 
                     Text("My",
                  style: TextStyle( 
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),),

                   Text("Wallet",
                  style: TextStyle( 
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[400]
                  ),)
                  ],
                 ),
                 Container( 
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration( 
                    color: Colors.grey[400],
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.notifications),
                 )
                  
                ],
              ),
            ),
            SizedBox(height: 10),
            Container( 
              height: 200,
              child: PageView( 
                controller: pageController,
                scrollDirection: Axis.horizontal,
                children: [
                  MyCard(balance: 5485.54,
                   cardNumber: 5465445646,
                    expiredMonth: 10,
                     expiredYear: 24,
                      cardType: 'images/visa.png'
                      ),

                       MyCard(balance: 548454,
                   cardNumber: 5465348,
                    expiredMonth: 10,
                     expiredYear: 26,
                      cardType: 'images/mastercard.png'
                      ),
                      MyCard(balance: 341,
                   cardNumber: 544448,
                    expiredMonth: 10,
                     expiredYear: 24,
                      cardType: 'images/mastercard.png'
                      ),
                      
                       MyCard(balance: 523.54,
                   cardNumber: 54445646,
                    expiredMonth: 05,
                     expiredYear: 24,
                      cardType: 'images/visa.png'
                      ),
                ],
              ),

            ),
            SizedBox(height: 15),
            SmoothPageIndicator(controller: pageController,
             count: 4,
             effect: ExpandingDotsEffect( 
              activeDotColor: Colors.grey.shade800,
              dotWidth: 14,
              dotHeight: 14
             ),
             ),
             SizedBox(height: 40),

             Padding(padding: EdgeInsets.symmetric(horizontal: 10),
             child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [ 
                MyButton(iconPath: "images/sendmoney.png",
                 textButton: 'send'),
                  MyButton(iconPath: "images/bill.png",
                 textButton: 'Receive'),
                  MyButton(iconPath: "images/card.png",
                 textButton: 'Pay'),
                  MyButton(iconPath: "images/bill.png",
                 textButton: 'Bills'),

              ],
             ),
             ),
             SizedBox(height: 50),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 25),
               child: Column(
                children: [
                  MyList(iconPath: 'images/statistics.png',
                  title: 'Statistics',
                  subtitle: "Payment & Income",
                  ),
                   MyList(iconPath: 'images/transaction.png',
                  title: 'Transactions',
                  subtitle: "Payment & Income",
                  ),
                   MyList(iconPath: 'images/bill.png',
                  title: 'Bills History',
                  subtitle: "Payment & Income",
                  ),
                   MyList(iconPath: 'images/card.png',
                  title: 'Payment History',
                  subtitle: "Payment & Income",
                  )
                ],
               ),
             )
          ],
        )
        ),
      ),
    );
  }
}