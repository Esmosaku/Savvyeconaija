import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:econaija/constanst.dart';
import 'package:econaija/screens/dashboard.dart';
import 'package:econaija/screens/remitwaste.dart';
import 'package:econaija/widgets/econaijacustombutton.dart';
import 'package:econaija/widgets/econaijatextformfield.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
  final _formKey= GlobalKey<FormState>();
class recycleWaste extends StatefulWidget {
  const recycleWaste({super.key});

  @override
  State<recycleWaste> createState() => _recycleWasteState();
}

class _recycleWasteState extends State<recycleWaste> {
  File? _selectedImage;
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
             Text('Recycle Waste',style: kHeaderDesigns,),
            Text('Transform non-biodegradable waste into \n renewable resources again',textAlign: TextAlign.center,
             style: TextStyle(fontSize: 16.0),),
            SizedBox(height: 30.0,),
            Text('Fill in the following details', style: kHeader2Designs,),
                SizedBox(height: 35.0,),
             Form(
              key: _formKey,
              child: Column(children: <Widget>[
               Eco9jaTextFormField(labelText: 'Waste Type', hintText: 'Plastics'),
                SizedBox(height: 10.0,),
               Eco9jaTextFormField(labelText: 'Volume', hintText: '50 pieces'),
                SizedBox(height: 10.0,),
               Eco9jaTextFormField(labelText: 'Location', hintText: 'Ikeja,Lagos'),
                SizedBox(height: 10.0,),
               Eco9jaTextFormField(labelText: 'How Long Overdue?', hintText: '3 weeks')
              ],)),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: DottedBorder(
                  strokeWidth: 2,
                  color: Colors.green,
                  borderType: BorderType.RRect,
                  radius: Radius.circular(12),
                  padding: EdgeInsets.all(6),
                  
                  child: ClipRRect(
                     borderRadius: BorderRadius.all(Radius.circular(12)),
                    child: Container(
                      width: 220.0,
                      height: 150.0,
                      child: _selectedImage !=null ? FittedBox(child: Image.file(_selectedImage!), fit: BoxFit.fill,) : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(child:Text('Upload an Image'), onPressed: () =>    _pickImageFromGallery(),),
                          IconButton(onPressed: (){
                            _pickImageFromGallery();
                          }, icon: Icon(Icons.add_to_photos)),
                           
                        ],
                      ),
                      
                      
                    ),
                  ),
                ),
              ),
              SizedBox(height: 100.0,),
              Eco9jaCustomButton(ButtonText: 'Submit', onPressed:  () => {
              if(_formKey.currentState!.validate()){
                Alert(
                        context: context,
                        content: Column(children: <Widget>[
                          Image.asset('assets/images/Checkmark.png'),
                          Text('Submitted Successfully',
                              style: TextStyle(color: Colors.green)),
                          Text(
                            'We received your information. Expect to\nhear from us shortly',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ]),
                        buttons: [
                          DialogButton(
                            color: Colors.green,
                            child: Text(
                              "Close",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (_) => Dashboard()));
                              Navigator.pop(context);
                            },
                            width: 120,
                          ),
                        ]).show(),
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Great'))
                ),
              }
            }),
             

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