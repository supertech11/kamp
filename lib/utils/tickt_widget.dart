import 'package:flutter/material.dart';

class TicketWidget extends StatelessWidget {
  const TicketWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Sammy Johnson",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.green.withOpacity(0.2),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.green,
                          size: 14,
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          "4.5",
                          style: TextStyle(
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Image.asset(
                    "assets/images/car.png",
                    width: 15,
                    height: 15,
                  ),
                ),
                Text(
                  "Toyota Sienna",
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Image.asset(
                    "assets/images/seats.png",
                    width: 15,
                    height: 15,
                  ),
                ),
                Text(
                  "4 seats available",
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Image.asset(
                        "assets/images/time.png",
                        width: 15,
                        height: 15,
                      ),
                    ),
                    Text(
                      "9:30 a.m",
                    ),
                  ],
                ),
                Text(
                  "₦3,500",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.blue,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  "Route",
                  style: TextStyle(
                    // color: Colors.blue,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      "I will be going through aduwawa lucky way down to ugbowo on my way to lagos.",
                      style: TextStyle(
                        // fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
