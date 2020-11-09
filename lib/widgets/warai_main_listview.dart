import 'package:flutter/material.dart';
import 'package:flutter_app_demo2/widgets/warai_page_listview_row.dart';

class WaraiListView extends StatefulWidget {
  @override
  _WaraiListViewState createState() => _WaraiListViewState();
}

class _WaraiListViewState extends State<WaraiListView> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: Column(
            children: <Widget>[
              Expanded(
                  child: ListView.separated(
                      padding: const EdgeInsets.all(8),
                      itemCount: 5,
                      separatorBuilder: (BuildContext context, int index) => Divider( height: 3, color: Colors.grey),

                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          decoration: BoxDecoration( //                    <-- BoxDecoration
                            border: Border(bottom: BorderSide()),
                          ),
                          margin: EdgeInsets.all(2),
                          child: _buildRow(),
                        );
                      }
                  )
              )
            ]
        )
    );
  }

  Widget _buildRow() {
    return Column(
      children: [
      WaraiListRow(),
      ],
    );
  }
}