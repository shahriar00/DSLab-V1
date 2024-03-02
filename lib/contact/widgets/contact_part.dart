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
                hintTextdata: "Suggestion",
                controller: suggestion),
            const SizedBox(
              height: 10,
            ),
            SubmitButton(buttonheight: 55, buttonwidth: MediaQuery.of(context).size.width, buttoncolor: Color(0xFF204895), buttonText: "Submit"),
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
