import 'package:flutter/material.dart';

class OnlineCell extends StatelessWidget {
  const OnlineCell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.0),
      width: double.infinity,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(color: Colors.grey)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "COMEDY ".toUpperCase(),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 2),
              ),
              Icon(
                Icons.home,
                color: Colors.green,
                size: 14,
              ),
            ],
          ),
          Text(
            "Komedi tengah malam bersama Coki Pardede",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 8.0,
          ),
          Row(
            children: [
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 15, left: 25),
                    child: Icon(
                      Icons.account_circle_rounded,
                      size: 60,
                      color: Colors.blue,
                    ),
                  ),
                  Icon(
                    Icons.account_circle_rounded,
                    size: 60,
                  ),
                ],
              ),
              SizedBox(
                width: 16.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Richard Sutrisno 💬",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Michael Handoyo 💬",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Michelle Pratiwi 💬",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  Row(
                    children: [
                      Text(
                        "285 ",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontWeight: FontWeight.w400, color: Colors.grey),
                      ),
                      Icon(
                        Icons.person,
                        color: Colors.grey,
                        size: 14,
                      ),
                      Text(
                        " / 6 ",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontWeight: FontWeight.w400, color: Colors.grey),
                      ),
                      Icon(
                        Icons.chat_bubble,
                        color: Colors.grey,
                        size: 14,
                      ),
                    ],
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
