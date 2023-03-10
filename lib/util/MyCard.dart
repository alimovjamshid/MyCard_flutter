import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final double balance;
  final int cardNumber;
  final int expiryMoth;
  final int experyYear;
  final color;

  const MyCard({
    Key? key,
    required this.balance,
    required this.color,
    required this.cardNumber,
    required this.experyYear,
    required this.expiryMoth
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        width: 300,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(16)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Balance',
                  style: TextStyle(
                      color: Colors.white
                  ),
                ),
                Image.asset('lib/icon/visa.png',height: 50,)
              ],
            ),
            SizedBox(height: 10,),
            Text(
              '\$$balance' ,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '**** ' + cardNumber.toString(),
                  style: TextStyle(
                      color: Colors.white
                  ),
                ),
                Text(
                  '$expiryMoth/$experyYear',
                  style: TextStyle(
                      color: Colors.white
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
