import 'package:flutter/material.dart';
import 'package:kampe/constants.dart';

class WalletWidget extends StatelessWidget {
  const WalletWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 15,
      ),
      padding: EdgeInsets.symmetric(horizontal: 20),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Color(0xff2492F7),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Wallet Balance",
                style: TextStyle(color: Color(0xffCCCCCC), fontSize: 16),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "₦ 7,000",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(kDriverWalletScreen);
            },
            child: Container(
              height: 30,
              width: 100,
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.white)),
              child: Center(
                child: Text(
                  "Withdraw",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
