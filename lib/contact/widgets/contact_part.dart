import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dslab/contact/widgets/contact_information.dart';
import 'package:dslab/contact/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ContactHere extends StatefulWidget {
  const ContactHere({super.key});

  @override
  State<ContactHere> createState() => _ContactHereState();
}

class _ContactHereState extends State<ContactHere> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController subject = TextEditingController();
  TextEditingController suggestion = TextEditingController();


  Future<void> _submitMessage() async {
    try {
      // Add message data to Firestore
      print("come in the function");
      await FirebaseFirestore.instance.collection('messages').add({
        'name': name.text,
        'email': email.text,
        'subject': subject.text,
        'suggestion': suggestion.text,
        'timestamp': Timestamp.now(),
      });

      // Clear text fields after submission
      name.clear();
      email.clear();
      subject.clear();
      suggestion.clear();

      // Show success message or perform other actions as needed
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Message submitted successfully'),
        duration: Duration(seconds: 2),
      ));
    } catch (error) {
      // Handle errors
      print('Error submitting message: $error');
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Failed to submit message. Please try again later.'),
        duration: Duration(seconds: 2),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      
      child: Container(
        
        decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(15)),
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Get in Touch",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            CustomButton(
                buttonheight: 50,
                buttonwidth: MediaQuery.of(context).size.width,
                buttoncolor: Colors.white,
                hintTextdata: "Name",
                controller: name),
                 const SizedBox(
              height: 10,
            ),
            CustomButton(
                buttonheight: 50,
                buttonwidth: MediaQuery.of(context).size.width,
                buttoncolor: Colors.white,
                hintTextdata: "Email",
                controller: email),
                 const SizedBox(
              height: 10,
            ),
            CustomButton(
                buttonheight: 50,
                buttonwidth: MediaQuery.of(context).size.width,
                buttoncolor: Colors.white,
                hintTextdata: "Subject",
                controller: subject),
                 const SizedBox(
              height: 10,
            ),
            CustomButton(
                buttonheight: 250,
                buttonwidth: MediaQuery.of(context).size.width,
                buttoncolor: Colors.white,
                hintTextdata: "Write Your Suggestion",
                controller: suggestion),
            const SizedBox(
              height: 10,
            ),

            ElevatedButton(
             
              
              onPressed: (){ 
                _submitMessage();
            }, child: Center(child: Text("Submit"))),
            // GestureDetector(
            //   onTap: (){ 
            //     _submitMessage;
            //     print("Press submit button");
            //   },
            //   child: SubmitButton(buttonheight: 50, buttonwidth: MediaQuery.of(context).size.width, buttoncolor: Color(0xFF204895), buttonText: "Submit")),
             const SizedBox(
              height: 15,
            ),

             const ContactInformation(),
          ],
        ),
      ),
    );
  }
}
