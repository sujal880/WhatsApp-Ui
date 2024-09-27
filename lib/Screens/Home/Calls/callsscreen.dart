import 'package:flutter/material.dart';
import 'package:whatsapp_series/Widgets/uihelper.dart';

class CallsScreen extends StatelessWidget {
  var callContent = [
    {
      "name": "Micheal",
      "img":
          "https://img.freepik.com/free-photo/portrait-white-man-isolated_53876-40306.jpg",
      "calltime": "15 min ago"
    },
    {
      "name": "Franklin",
      "img":
          "https://static.vecteezy.com/system/resources/thumbnails/047/462/757/small/positive-man-on-clean-background-photo.jpg",
      "calltime": "1 hr ago"
    },
    {
      "name": "Trevor",
      "img":
          "https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?cs=srgb&dl=pexels-simon-robben-55958-614810.jpg&fm=jpg",
      "calltime": "1 day ago"
    },
    {
      "name": "Micheal",
      "img":
          "https://img.freepik.com/free-photo/portrait-white-man-isolated_53876-40306.jpg",
      "calltime": "15 min ago"
    },
    {
      "name": "Franklin",
      "img":
          "https://static.vecteezy.com/system/resources/thumbnails/047/462/757/small/positive-man-on-clean-background-photo.jpg",
      "calltime": "1 hr ago"
    },
    {
      "name": "Trevor",
      "img":
          "https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?cs=srgb&dl=pexels-simon-robben-55958-614810.jpg&fm=jpg",
      "calltime": "1 day ago"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              UiHelper.CustomText(text: "Recent", height: 18),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundImage:
                        NetworkImage(callContent[index]["img"].toString()),
                  ),
                  title: UiHelper.CustomText(
                      text: callContent[index]["name"].toString(),
                      height: 18,
                      fontweight: FontWeight.bold,
                      color: Colors.black),
                  subtitle: UiHelper.CustomText(
                      text: callContent[index]["calltime"].toString(),
                      height: 16),
                  trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.call,
                        color: Color(0XFF00A884),
                      )),
                );
              },
              itemCount: callContent.length,
            ),
          )
        ],
      ),
    );
  }
}
