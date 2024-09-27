import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:whatsapp_series/Screens/Home/homescreen.dart';
import 'package:whatsapp_series/Widgets/uihelper.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController nameController = TextEditingController();

  File? pickedimage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            UiHelper.CustomText(
                text: "Profile info",
                height: 20,
                color: const Color(0XFF00A884),
                fontweight: FontWeight.bold),
            const SizedBox(
              height: 30,
            ),
            UiHelper.CustomText(
                text: "Please provide your name and an optional", height: 14),
            UiHelper.CustomText(text: "profile photo", height: 14),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: (){
                _openBottom(context);
              },
              child:pickedimage==null? CircleAvatar(
                radius: 80,
                backgroundColor: const Color(0XFFD9D9D9),
                child: Image.asset(
                  "assets/images/photo-camera 1.png",
                  height: 50,
                  fit: BoxFit.cover,
                ),
              ):CircleAvatar(
                radius: 80,
                backgroundImage: FileImage(pickedimage!),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 300,
                  child: TextField(
                    keyboardType: TextInputType.name,
                    controller: nameController,
                    decoration: const InputDecoration(
                        hintText: "Type your name here",
                        hintStyle: TextStyle(color: Color(0XFF5E5E5E)),
                        border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0XFF05AA82))),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0XFF05AA82))),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0XFF05AA82)))),
                  ),
                ),
                const SizedBox(width: 10,),
                Image.asset("assets/images/happy-face 1.png")
              ],
            )
          ],
        ),
      ),
      floatingActionButton: UiHelper.CustomButton(callback: (){
        Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>HomeScreen()));
      }, buttonname: "Next"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  _openBottom(BuildContext context){
    return showModalBottomSheet(context: context, builder: (BuildContext context){
      return Container(
        height: 200,
        width: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(onPressed: (){
                _pickImage(ImageSource.camera);
              }, icon: Icon(Icons.camera_alt,size: 80,color: Colors.grey,),),
             IconButton(onPressed: (){
               _pickImage(ImageSource.gallery);
             }, icon:  Icon(Icons.image,size: 80,color: Colors.grey,))
          ],)
        ],),
      );
    });
  }

  _pickImage(ImageSource imagesource)async{
    try{
      final photo=await ImagePicker().pickImage(source: imagesource);
      if(photo==null)return;
      final tempimage=File(photo.path);
      setState(() {
        pickedimage=tempimage;
      });
    }
    catch(ex){
      return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(ex.toString()),backgroundColor: Color(0XFF00A884),));
    }
  }
}
