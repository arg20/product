import 'package:flutter/material.dart';

class SortFilterBar extends StatelessWidget {
  final int itemCount;
  SortFilterBar({required this.itemCount});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(bottom: 8),
      margin: EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text(itemCount.toString() + " items",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                )),
          ),
          SizedBox(width: 55),
          OutlinedButton(
            onPressed: () {},
            child: Row(
              children: [
                Text(
                  'Sort',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ), // <-- Text
                SizedBox(
                  width: 3,
                ),
                Icon(
                  // <-- Icon
                  Icons.sort,
                  size: 20.0,
                  color: Colors.black,
                ),
              ],
            ),
          ),
          SizedBox(width: 5),
          OutlinedButton(
            onPressed: () {},
            child: Row(
              children: [
                Text(
                  'Filter',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ), // <-- Text
                SizedBox(
                  width: 3,
                ),
                Icon(
                  // <-- Icon
                  Icons.sort,
                  size: 20.0,
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
