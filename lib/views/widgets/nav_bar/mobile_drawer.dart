import 'package:flutter/material.dart';
import 'package:travel_guide/utils/utils.dart';

class MobileDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 30.0,
                  top: 40.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'LOGO',
                    ),
                    YBox(60),
                    ...List.generate(
                      5,
                      (index) => Row(
                        children: [
                          CircleAvatar(),
                          Text(
                            '$index',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Color(0xff000000).withOpacity(0.23),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            ...List.generate(
                              4,
                              (index) => Text(
                                '$index',
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            ...List.generate(
                              4,
                              (index) => Text(
                                '$index',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    YBox(40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ...List.generate(
                          4,
                          (index) => Text('$index'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
  }
}