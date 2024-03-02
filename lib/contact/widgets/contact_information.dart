import 'package:flutter/material.dart';

class ContactInformation extends StatelessWidget {
  const ContactInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(left: 15),
      decoration: BoxDecoration(
          color: Color(0xFF735EF1), borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text(
              "Contact Information",
              style: TextStyle(
                  fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),

          SizedBox(height: 20,),

          Row(
            children: [
              Icon(Icons.location_on_outlined,color: Colors.red,),
              SizedBox(width: 5,),
              Text("Daffodil Smart City,Ashulia,Dhaka",style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.normal, color: Colors.white),),
            ],
          ),
SizedBox(height: 10,),
          Row(
            children: [
              Icon(Icons.phone,color: Colors.white,),
              SizedBox(width: 5,),
              Text("+880-167338289",style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.normal, color: Colors.white),),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Icon(Icons.email,color: Colors.white,),
              SizedBox(width: 5,),
              Text("arman.swe@diu.edu.bd",style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.normal, color: Colors.white),),
            ],
          ),
SizedBox(height: 10,),
          Row(
            children: [
              Icon(
  Icons.web,
  size: 24, // Adjust the size as needed
  color: Colors.blue, // Specify the color of the icon
),

              SizedBox(width: 5,),
              Text("https://daffodilvarsity.edu.bd/",style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.normal, color: Colors.white),),
            ],
          ),

          SizedBox(height: 10,),
        ],
      ),
    );
  }
}
