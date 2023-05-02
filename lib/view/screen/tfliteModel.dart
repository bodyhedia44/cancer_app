import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hope/core/tf_helber/classifier.dart';
import 'package:hope/core/tf_helber/classifier_quan.dart';
import 'package:image_picker/image_picker.dart';
import 'package:logger/logger.dart';
import 'package:tflite_flutter/tflite_flutter.dart';
import 'package:image/image.dart' as img;
import 'package:tflite_flutter_helper/tflite_flutter_helper.dart';

class TfliteModel extends StatefulWidget {
  const TfliteModel({Key? key}) : super(key: key);

  @override
  _TfliteModelState createState() => _TfliteModelState();
}

class _TfliteModelState extends State<TfliteModel> {
  late File _image;
  // late List _results;
  bool imageSelect = false;
  late Classifier _classifier;

  var logger = Logger();

  Image? _imageWidget;

  img.Image? fox;

  Category? category;
  @override
  void initState() {
    super.initState();
    // loadModel();
     _classifier = ClassifierQuant();
  }

  // Future loadModel() async {
  //   print("object");
  //   await Tflite.close();
  // await Tflite.loadModel(
  //       model: "assets/model.tflite", labels: "assets/labels.txt" ,isAsset: true)
  //       .then((value) => print(value)).
  //       onError((error, stackTrace) => print(error));
  //   print("Models loading status:");
  // }

  // Future imageClassification(File image) async {
    // final List? recognitions = await Tflite.runModelOnImage(
    //   path: image.path,
    //   numResults: 6,
    //   threshold: 0.05,
    //   imageMean: 127.5,
    //   imageStd: 127.5,
    // );
    // setState(() {
    //   _results = recognitions!;
    //   _image = image;
    //   imageSelect = true;
    // });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add mammogram"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          (imageSelect)
              ? Container(
                  margin: const EdgeInsets.all(10),
                  child: Image.file(_image),
                )
              :  Center(
                  // margin: const EdgeInsets.all(10),
                  child: Opacity(
                    opacity: 0.8,
                    child:ElevatedButton(
                       style: ElevatedButton.styleFrom(
    primary: Colors.grey, // Background color
  ),
        onPressed: pickImage,
        child: Text("add image"),
      ),
                  ),
                ),


         (imageSelect)? SingleChildScrollView(
            child: Column(
              children: 
                 [
                  Center(
                    child: Card(
                          child: Container(
                            margin: const EdgeInsets.all(10),
                            child: Text(
                              // "${result['label']} - ${result['confidence'].toStringAsFixed(2)}",
                               category != null
                                  ? 
                                  // 'Confidence: ${category!.score.toStringAsFixed(3)}'
                                  category!.label
                                  : '',
                              style: const TextStyle(
                                  color: Colors.red, fontSize: 20),
                            ),
                          ),
                        ),
                  )
                 ]
            ),
          ):Container(),


          SizedBox(height: 20,),
         (imageSelect==true)? ElevatedButton(
                       style: ElevatedButton.styleFrom(
    primary: Colors.grey, // Background color
  ),
        onPressed: pickImage,
        child: Text("add image"),
      ):Container(),
        ],
      ),
    );
  }

  Future pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? pickedFile = await picker.pickImage(
      source: ImageSource.gallery,
    );
    // File image = File(pickedFile!.path);
    setState(() {
      _image = File(pickedFile!.path);
      _imageWidget = Image.file(_image);

      _predict();
    });
    // imageClassification(image);
  }

   void _predict() async {
    img.Image imageInput = img.decodeImage(_image.readAsBytesSync())!;
    var pred = _classifier.predict(imageInput);

    setState(() {
      category = pred;
      imageSelect=true;
    });
  }
}
