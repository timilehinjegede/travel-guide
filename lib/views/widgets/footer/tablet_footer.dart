import 'package:flutter/material.dart';
import 'package:travel_guide/utils/colors.dart';
import 'package:travel_guide/utils/utils.dart';

class TabletFooter extends StatelessWidget {
  TabletFooter({Key key}) : super(key: key);

  final TextStyle _footerItemsTextStyle = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: TravelGuideColors.whiteColor,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      color: TravelGuideColors.blueColor,
      height: 300,
      padding: EdgeInsets.all(
        50.0,
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'LOGO',
                ),
                Spacer(),
                SizedBox(
                  width: 400,
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle: TextStyle(
                        color: TravelGuideColors.lightBlueColor,
                        fontSize: 14,
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.0),
                        borderSide: BorderSide(
                          color: TravelGuideColors.pinkColor,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.0),
                        borderSide: BorderSide(
                          color: TravelGuideColors.pinkColor,
                        ),
                      ),
                      suffixIcon: Image(
                        image: AssetImage(
                          TravelGuideStrings.send,
                        ),
                      ),
                    ),
                  ),
                ),
                YBox(10),
                Text(
                  'Stay in touch with us for the freshest products!',
                  style: TextStyle(
                    fontSize: 12,
                    color: TravelGuideColors.lightBlueColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ...List.generate(
                          4,
                          (index) => Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 5.0,
                            ),
                            child: Text(
                              TravelGuideStrings.mobileDrawerTextList
                                  .sublist(0, 4)[index],
                              style: _footerItemsTextStyle,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ...List.generate(
                          4,
                          (index) => Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 5.0,
                            ),
                            child: Text(
                              TravelGuideStrings.footerItemsList
                                  .sublist(0, 4)[index],
                              style: _footerItemsTextStyle,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ...List.generate(
                          4,
                          (index) => Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 5.0,
                            ),
                            child: Text(
                              TravelGuideStrings.footerItemsList
                                  .sublist(4)[index],
                              style: _footerItemsTextStyle,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ...List.generate(
                      4,
                      (index) => Image(
                        image: AssetImage(
                          TravelGuideStrings.logosList[index],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
