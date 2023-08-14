import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  const Info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Info'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            children: [
              Text(
                'Project Name :  ',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
              ),
              Text(
                '"Home Services"',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'Description :  ',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
          ),
          Text(
            '                           '
            ' this app provide'
            ' some tools of home services'
            ' which you can buy it '
            'and contain from three screens the first is the main screen'
            ' which contain the  slider , horizontal and vertical list view. ',
            style: TextStyle(
                fontWeight: FontWeight.w300, fontSize: 18, height: 1.5),
          ),
          Text(
            'the second screen is the category screen which provide product to buy it'
            ' and this screen made by list view and the product of'
                ' it come from firebase fire store.'
            '',
            style: TextStyle(
                fontWeight: FontWeight.w300, fontSize: 18, height: 1.5),
          ),
          Text(
            'the third screen contain information '
                'about user and he could logout or navigate '
                'to see the info about app and the name of developer.',
            style: TextStyle(
                fontWeight: FontWeight.w300, fontSize: 18, height: 1.5),
          ),
        //  test
        ]),
      ),
    );
  }
}
