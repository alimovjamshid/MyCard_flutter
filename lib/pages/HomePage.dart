import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:untitled7/util/MyButton.dart';
import 'package:untitled7/util/MyCard.dart';
import 'package:untitled7/util/MyListTile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        children: [
          //app bar
          Padding(
            padding: EdgeInsets.all(ScreenUtil().setSp(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      'My',
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      ' Cards',
                      style: TextStyle(fontSize: 28),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      color: Colors.grey[400], shape: BoxShape.circle),
                  child: Icon(Icons.add),
                )
              ],
            ),
          ),

          //card
          Container(
            height: ScreenUtil().setHeight(200),
            child: PageView(
              scrollDirection: Axis.horizontal,
              controller: _controller,
              children: [
                MyCard(
                  balance: 5250.20,
                  color: Colors.deepPurple[400],
                  cardNumber: 4564,
                  experyYear: 25,
                  expiryMoth: 11,
                ),
                MyCard(
                  balance: 520.25,
                  color: Colors.red[400],
                  cardNumber: 1167,
                  experyYear: 26,
                  expiryMoth: 10,
                ),
                MyCard(
                  balance: 8200.20,
                  color: Colors.blue[400],
                  cardNumber: 8765,
                  experyYear: 24,
                  expiryMoth: 12,
                )
              ],
            ),
          ),

          SizedBox(
            height: ScreenUtil().setHeight(7.5),
          ),

          SmoothPageIndicator(
            controller: _controller,
            count: 3,
            effect: ExpandingDotsEffect(),
          ),

          SizedBox(
            height: ScreenUtil().setHeight(15),
          ),

          //3 buttons -> send + pay + bills

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                //send button
                MyButton(
                    buttonText: 'Send',
                    iconImagePath: 'lib/icon/send-money.png'),

                //pay button
                MyButton(
                    buttonText: 'Pay',
                    iconImagePath: 'lib/icon/credit-card.png'),

                //bills button
                MyButton(buttonText: 'Bill', iconImagePath: 'lib/icon/bill.png')
              ],
            ),
          ),

          SizedBox(
            height: ScreenUtil().setHeight(10),
          ),
          //column stats + transactions
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                MyListTile(
                    iconImagePath: 'lib/icon/statistics.png',
                    tileName: 'Statistics',
                    tileSubTitle: 'Payment and Income'),
                MyListTile(
                    iconImagePath: 'lib/icon/transaction.png',
                    tileName: 'Transaxtion',
                    tileSubTitle: 'Transaxtion History'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
