import 'package:flutter/material.dart';

List<String> XOlist = new List.filled(9, '');

class MakeGrid {
  int userIndex = 0;
  Widget createGridView({required Function() onTap}) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GridView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: 9,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              userIndex = index;
              onTap();
            },
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromRGBO(150, 151, 151, 1),
                ),
                color: XOlist[index] == ''
                    ? Colors.transparent
                    : Color.fromARGB(255, 43, 43, 43),
              ),
              child: Center(
                child: Text(
                  XOlist[index],
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    color: XOlist[index] == 'X' ? Colors.green : Colors.red,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
