import 'dart:io';
import 'dart:ui';

import 'package:econaija/constanst.dart';
import 'package:econaija/screens/recyclewaste.dart';
import 'package:econaija/screens/remitwaste.dart';
import 'package:econaija/widgets/econaijacustombutton.dart';
import 'package:econaija/widgets/econaijatextformfield.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
  final _formKey= GlobalKey<FormState>();
class receiveshareditems extends StatefulWidget {

  const receiveshareditems({super.key});

  @override
  State<receiveshareditems> createState() => _receiveshareditemsState();
}

class _receiveshareditemsState extends State<receiveshareditems> {
  File ? _selectedImage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: BackButton(onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const Remitwaste()),
                    ),),
          actions: [
           ClipOval(
  child:  Image.asset (
    'assets/images/usericon.png',
    fit: BoxFit.cover,
  ),
), SizedBox(width: 5,),
          ],
        ),
         body: SingleChildScrollView(child: Column(
          children: <Widget>[
            Text('Receive Items',style: kHeaderDesigns,),
            Text('Find useful items from others in your \n community who are willing to share ', textAlign: TextAlign.center,
             style: TextStyle(fontSize: 16.0),),
            SizedBox(height: 30.0,),
            Text('Fill out the form below to request items you need.',style: kHeader2Designs,),
            SizedBox(height: 35,),
            Form(
              key: _formKey,
              child: Column(children: <Widget>[
                Eco9jaTextFormField(labelText: 'Item Requested', hintText: 'Maths Textbooks',),
                SizedBox(height: 10.0,),
                Eco9jaTextFormField(labelText: 'Reason for Request', hintText: 'High School General Math Textbooks'),
                SizedBox(height: 10.0,),
                Eco9jaTextFormField(labelText: 'Quantity', hintText: '6'),
                 SizedBox(height: 10.0,),
                Eco9jaTextFormField(labelText: 'Contact Information', hintText: '+234 000 0000 000')
              ],)),
              IconButton(onPressed: (){
                _pickImageFromGallery();
              }, icon: Icon(Icons.add_to_photos)),
            _selectedImage !=null ? Image.file(_selectedImage!): Text('Please select an image'),
            SizedBox(height: 100,),
            Eco9jaCustomButton(ButtonText: 'Request', onPressed:() => {
              if(_formKey.currentState!.validate()){
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Great'))
                ),
              }
            } ),
         
          ],
         )),
    );
  }

  Future _pickImageFromGallery()async{
    final returnedImage= await ImagePicker().pickImage(source: ImageSource.gallery);
    if(returnedImage== null)return;
    setState(() {
      _selectedImage = File(returnedImage!.path);
    });
  }
}
