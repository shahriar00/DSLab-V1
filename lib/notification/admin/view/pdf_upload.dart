import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dslab/notification/admin/widgets/pdf_viewer.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PdfUploadPage extends StatefulWidget {
  const PdfUploadPage({super.key});

  @override
  State<PdfUploadPage> createState() => _PdfUploadPageState();
}

class _PdfUploadPageState extends State<PdfUploadPage> {
  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  List<Map<String, dynamic>> pdfData = [];

  // Future<String?>UploadFile(String filename , File file)async{

  //   final reference = FirebaseStorage.instance.ref().child("pdfs/$filename.pdf") ;
  //   final uploadTrack = reference.putFile(file);
  //   await uploadTrack.whenComplete((){});
  //   final downloadLink = await reference.getDownloadURL();
  //   return downloadLink;
  // }

  Future<String?> UploadFile(String filename, File file) async {
    final reference =
        FirebaseStorage.instance.ref().child("pdfs/$filename.pdf");
    final uploadTask = reference.putFile(file);
    final snapshot = await uploadTask.whenComplete(() {});

    // Get the download URL
    final downloadLink = await reference.getDownloadURL();

    // Get the timestamp when the file was uploaded
    final currentTime = Timestamp.now();

    // Upload the download URL and upload time to Firestore
    await firebaseFirestore.collection("pdfs").add({
      "name": filename,
      "url": downloadLink,
      "uploadTime": currentTime,
    });

    print("PDF uploaded successfully");

    return downloadLink;
  }

  void pickFile() async {
    final pickedFile = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
    );

    if (pickedFile != null) {
      String filename = pickedFile.files[0].name;
      File file = File(pickedFile.files[0].path!);
      final downloadLink = await UploadFile(filename, file);

      await firebaseFirestore.collection("pdfs").add({
        "name": filename,
        "url": downloadLink,
      });
      
      print("PDF uploaded successfully");
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text(
        "PDF Uploaded Successfully!",
        style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        selectionColor: Colors.blue,
      )));
    }
  }

  void getAllPDF() async {
    final results = await firebaseFirestore.collection("pdfs").get();

    pdfData = results.docs.map((e) => e.data()).toList();

    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getAllPDF();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF2E9481),
        title: const Text(
          "DSLab Notice",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: GridView.builder(
           shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: pdfData.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 0.8,
                crossAxisCount: 2),
            itemBuilder: (context, index) {
              final uploadTime = pdfData[index]['uploadTime'];
            final formattedUploadTime = uploadTime != null
                ? DateFormat('yyyy-MM-dd HH:mm:ss').format(uploadTime.toDate())
                : "Unknown"; // Handle case where uploadTime is null
              return Padding(
                padding: EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PdfViewerScreen(
                                  pdfurl: pdfData[index]['url'],
                                )));
                  },
                  child: Container(
                    
                    decoration: BoxDecoration(border: Border.all()),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        
                        Image.asset(
                          "images/pdf.png",
                          
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            pdfData[index]['name'],
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                  
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                              'Time: $formattedUploadTime'),
                        ), // Display upload time
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
      floatingActionButton: GestureDetector(
        onTap: (){ 
          pickFile();
        },
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            height: 100,
            width: 100,
            
            decoration: BoxDecoration(shape: BoxShape.circle,color: Color(0xFF2E9481),),
            //padding: const EdgeInsets.only(bottom: 40, right: 40),
            child: Center(child: const Icon(Icons.upload_file,size: 50,color: Colors.white,)),
          ),
        ),
      ),
    );
  }
}
