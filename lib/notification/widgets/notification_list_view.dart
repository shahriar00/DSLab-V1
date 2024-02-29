import 'package:flutter/material.dart';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dslab/notification/admin/widgets/pdf_viewer.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:intl/intl.dart';

class NotificationListView extends StatefulWidget {
  const NotificationListView({super.key});

  @override
  State<NotificationListView> createState() => _NotificationListViewState();
}

class _NotificationListViewState extends State<NotificationListView> {
  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  List<Map<String, dynamic>> pdfData = [];

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
    return SingleChildScrollView(
      child: ListView.builder(
        shrinkWrap: true,
         physics: NeverScrollableScrollPhysics(),
          itemCount: pdfData.length,
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
                child: Material(
                  borderRadius: BorderRadius.circular(15),
                  elevation: 5,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "images/pdf.png",
                        height: 100,
                        width: 150,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                           const SizedBox(
                              height: 15,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Flexible(
                                child: Text(
                                  pdfData[index]['name'],
                                  style: const TextStyle(
                                      fontSize: 18, fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                                    
                           const SizedBox(
                              height: 20,
                            ),
                                    
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                'Time: $formattedUploadTime',
                                style: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                            ),
                             // Display upload time
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
