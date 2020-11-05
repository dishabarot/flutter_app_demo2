import 'package:flutter/material.dart';

class WaraiTabs extends StatefulWidget {
  @override
  _TopTabs createState() => _TopTabs();
}

class _TopTabs extends State<WaraiTabs> {
  @override
  Widget build(BuildContext context) {
     const color1 = const Color(0xff171717);
    // return Container(
    //   child: DefaultTabController(
    //         length: 3,
    //         child: TabBar(
    //           unselectedLabelColor: color1,
    //               indicatorColor: Colors.orange,
    //               indicator: BoxDecoration(
    //                 color: Colors.orange,
    //               ),
    //               tabs: [
    //                 Tab(Row(
    //                   children: [
    //                     TopTab(),
    //                   ],
    //                 )),
    //                 Tab(hot_tab()),
    //                 Tab(new_tab()),
    //               ],
    //             ),
    //         ),
    //       );


    final top_selected = true;
    final hot_selected = false;
    final new_selected = false;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: top_selected ? Colors.orange : color1,
              borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(10.0),
                bottomLeft: const Radius.circular(10.0),
              )
          ),

          child: Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20.0,top: 12.0,bottom: 12.0),
            child: Center(
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/ic_top.png',
                    color: Colors.white,
                    height: 20,
                    width: 20,
                  ),
                  Text(
                    "Top",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: color1,
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20.0,top: 12.0,bottom: 12.0),
            child: Center(
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/ic_hot.png',
                    color: Colors.white,
                    height: 20,
                    width: 20,
                  ),
                  Text(
                    "Hot",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: color1,
              borderRadius: BorderRadius.only(
                topRight: const Radius.circular(10.0),
                bottomRight: const Radius.circular(10.0),
              )),
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20.0,top: 12.0,bottom: 12.0),
            child: Center(
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/ic_new.png',
                    color: Colors.white,
                    height: 20,
                    width: 20,
                  ),
                  Text(
                    "New",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
class TopTab extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

  }

}
