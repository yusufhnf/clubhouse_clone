import 'package:clubhouse_clone/src/views/components/online_cell.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[50],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.orange[50],
        actions: [
          IconButton(
            icon: Icon(
              Icons.drafts_outlined,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.date_range_outlined,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.notifications_outlined,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
        leading: IconButton(
          icon: Icon(
            Icons.search,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
      ),
      body: SafeArea(
          child: Stack(
        children: [
          ListView(
            padding: EdgeInsets.all(16.0),
            children: List.generate(8, (index) {
              return OnlineCell();
            }),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 2,
                    child: IconButton(
                      icon: Icon(
                        Icons.apps,
                        color: Colors.black,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Expanded(
                      flex: 4,
                      child: ElevatedButton.icon(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              primary: Colors.green,
                              padding: EdgeInsets.symmetric(vertical: 10),
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          icon: Icon(Icons.add),
                          label: Text("Start a room"))),
                  Expanded(
                    flex: 2,
                    child: Transform.rotate(
                      angle: 270 * math.pi / 180,
                      child: IconButton(
                        icon: Icon(
                          Icons.send_outlined,
                          color: Colors.black,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
