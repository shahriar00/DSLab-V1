import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


const LatLng currentPosition = LatLng(23.8769, 90.3202);
class GoogleMapScreen extends StatefulWidget {
  const GoogleMapScreen({super.key});

  @override
  State<GoogleMapScreen> createState() => _GoogleMapScreenState();
}

class _GoogleMapScreenState extends State<GoogleMapScreen> {
   late GoogleMapController mapcontroller;
  Map<String,Marker> _markers = {};
  @override
  Widget build(BuildContext context) {
    return  Scaffold( 
 
      body: GoogleMap( 
        initialCameraPosition: CameraPosition(target: currentPosition,zoom: 14),
        onMapCreated: (controller){
            mapcontroller = controller;
            addMarker('test',currentPosition);
        },
        markers: _markers.values.toSet(),
        
      
      ),
    );
  }

  addMarker(String id, LatLng location){ 

    var marker = Marker(markerId:  MarkerId(id),position: location,
    infoWindow: const InfoWindow( 
      title: "Daffodil International University",
      snippet: "Data Science Lab,DSC"
    ));
    _markers[id] = marker;
    
    setState(() {
      
    });

  }
}