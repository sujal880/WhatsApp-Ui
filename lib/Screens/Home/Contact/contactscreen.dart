import 'package:flutter/material.dart';
import 'package:whatsapp_series/Widgets/uihelper.dart';

class ContactScreen extends StatelessWidget{
  var contactContent=[
    {
      "img":"https://media.istockphoto.com/id/1399565382/photo/young-happy-mixed-race-businessman-standing-with-his-arms-crossed-working-alone-in-an-office.jpg?s=612x612&w=0&k=20&c=buXwOYjA_tjt2O3-kcSKqkTp2lxKWJJ_Ttx2PhYe3VM=",
      "name":"Micheal",
      "status":"Busy"
    },
    {
      "img":"https://watermark.lovepik.com/photo/20211203/large/lovepik-asian-man-picture_501490860.jpg",
      "name":"Franklin",
      "status":"Cool"
    },
    {
      "img":"https://i.pinimg.com/736x/fb/0c/d8/fb0cd89bce0a2568cd12c1af2be34646.jpg",
      "name":"Trevor",
      "status":"Cool"
    },
    {
      "img":"https://media.istockphoto.com/id/1399565382/photo/young-happy-mixed-race-businessman-standing-with-his-arms-crossed-working-alone-in-an-office.jpg?s=612x612&w=0&k=20&c=buXwOYjA_tjt2O3-kcSKqkTp2lxKWJJ_Ttx2PhYe3VM=",
      "name":"Micheal",
      "status":"Busy"
    },
    {
      "img":"https://watermark.lovepik.com/photo/20211203/large/lovepik-asian-man-picture_501490860.jpg",
      "name":"Franklin",
      "status":"Cool"
    },
    {
      "img":"https://i.pinimg.com/736x/fb/0c/d8/fb0cd89bce0a2568cd12c1af2be34646.jpg",
      "name":"Trevor",
      "status":"Cool"
    },
    {
      "img":"https://media.istockphoto.com/id/1399565382/photo/young-happy-mixed-race-businessman-standing-with-his-arms-crossed-working-alone-in-an-office.jpg?s=612x612&w=0&k=20&c=buXwOYjA_tjt2O3-kcSKqkTp2lxKWJJ_Ttx2PhYe3VM=",
      "name":"Micheal",
      "status":"Busy"
    },
    {
      "img":"https://watermark.lovepik.com/photo/20211203/large/lovepik-asian-man-picture_501490860.jpg",
      "name":"Franklin",
      "status":"Cool"
    },
    {
      "img":"https://i.pinimg.com/736x/fb/0c/d8/fb0cd89bce0a2568cd12c1af2be34646.jpg",
      "name":"Trevor",
      "status":"Cool"
    },
    {
      "img":"https://media.istockphoto.com/id/1399565382/photo/young-happy-mixed-race-businessman-standing-with-his-arms-crossed-working-alone-in-an-office.jpg?s=612x612&w=0&k=20&c=buXwOYjA_tjt2O3-kcSKqkTp2lxKWJJ_Ttx2PhYe3VM=",
      "name":"Micheal",
      "status":"Busy"
    },
    {
      "img":"https://watermark.lovepik.com/photo/20211203/large/lovepik-asian-man-picture_501490860.jpg",
      "name":"Franklin",
      "status":"Cool"
    },
    {
      "img":"https://i.pinimg.com/736x/fb/0c/d8/fb0cd89bce0a2568cd12c1af2be34646.jpg",
      "name":"Trevor",
      "status":"Cool"
    },
    {
      "img":"https://media.istockphoto.com/id/1399565382/photo/young-happy-mixed-race-businessman-standing-with-his-arms-crossed-working-alone-in-an-office.jpg?s=612x612&w=0&k=20&c=buXwOYjA_tjt2O3-kcSKqkTp2lxKWJJ_Ttx2PhYe3VM=",
      "name":"Micheal",
      "status":"Busy"
    },
    {
      "img":"https://watermark.lovepik.com/photo/20211203/large/lovepik-asian-man-picture_501490860.jpg",
      "name":"Franklin",
      "status":"Cool"
    },
    {
      "img":"https://i.pinimg.com/736x/fb/0c/d8/fb0cd89bce0a2568cd12c1af2be34646.jpg",
      "name":"Trevor",
      "status":"Cool"
    },
    {
      "img":"https://media.istockphoto.com/id/1399565382/photo/young-happy-mixed-race-businessman-standing-with-his-arms-crossed-working-alone-in-an-office.jpg?s=612x612&w=0&k=20&c=buXwOYjA_tjt2O3-kcSKqkTp2lxKWJJ_Ttx2PhYe3VM=",
      "name":"Micheal",
      "status":"Busy"
    },
    {
      "img":"https://watermark.lovepik.com/photo/20211203/large/lovepik-asian-man-picture_501490860.jpg",
      "name":"Franklin",
      "status":"Cool"
    },
    {
      "img":"https://i.pinimg.com/736x/fb/0c/d8/fb0cd89bce0a2568cd12c1af2be34646.jpg",
      "name":"Trevor",
      "status":"Cool"
    }
  ];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: UiHelper.CustomText(text: "Select Contact", height: 16,color: Colors.white),
       actions: [
         IconButton(onPressed: (){}, icon: Icon(Icons.search)),
         IconButton(onPressed: (){}, icon: Icon(Icons.more_vert_sharp))
       ],
     ),
     body: ListView.builder(itemBuilder: (context,index){
       return ListTile(
         leading: CircleAvatar(
           backgroundImage: NetworkImage(contactContent[index]["img"].toString()),
         ),
         title: UiHelper.CustomText(text: contactContent[index]["name"].toString(), height: 16,fontweight: FontWeight.bold,color: Color(0XFF000000)),
         subtitle: UiHelper.CustomText(text: contactContent[index]["status"].toString(), height: 14),
       );
     },itemCount: contactContent.length,),
   );
  }

}