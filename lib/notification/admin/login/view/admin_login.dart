import 'package:dslab/notification/admin/login/widgets/login_button.dart';
import 'package:dslab/notification/admin/view/pdf_upload.dart';
import 'package:flutter/material.dart';

class AdminLoginPage extends StatefulWidget {
  @override
  _AdminLoginPageState createState() => _AdminLoginPageState();
}

class _AdminLoginPageState extends State<AdminLoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // Define valid email and password
  final String validEmail = 'admin@gmail.com';
  final String validPassword = '123456';

  void _login() {
    String email = _emailController.text.trim();
    String password = _passwordController.text.trim();

    // Check if email and password are valid
    if (email == validEmail && password == validPassword) {
      // Navigate to  dashboard or perform any action here
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const PdfUploadPage()),
      );
    } else {
      // Show error message for invalid login
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Invalid Credentials'),
            content: Text('Please enter valid email and password.'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }}

     @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Login'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
              ),
            ),
           const SizedBox(height: 20.0),
            TextField(
              controller: _passwordController,
              decoration:const InputDecoration(
                labelText: 'Password',
              ),
              obscureText: true,
            ),
           const SizedBox(height: 20.0),

            GestureDetector(
              onTap: (){ 
                _login();
              },
              child:const LoginButton())
           
          ],
        ),
      ),
    );
  }
}
  

  