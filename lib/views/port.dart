import 'package:flutter/material.dart';
import 'package:myportfolio/models/images.dart';
import 'package:myportfolio/models/viewmodels/imageapi.dart';
import 'package:provider/provider.dart';

import 'fullscreen.dart';

class PortView extends StatefulWidget {
  @override
  _PortViewState createState() => _PortViewState();
}

class _PortViewState extends State<PortView> {
  @override
  Widget build(BuildContext context) {
      final image = Provider.of<Images>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Interior Design',
          style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
          ),),
        centerTitle: true,
        backgroundColor: Colors.blue[800],
      ),
      backgroundColor: Colors.blue[800],
     body: FutureBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            if (snapshot.data != null) {
              List<Resources> resources = snapshot.data;
              return GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 0.74,
                shrinkWrap: false,
                children: resources.map((i) {
                  return GestureDetector(
                    onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => FullScreen(i)));
                    },
                    child: Card(
                      elevation: 2,
                      shadowColor: Colors.black,
                      child: new ClipRRect(
                        borderRadius: BorderRadius.circular(4.0),
                        child: Hero(
                          tag: i.secureUrl,
                          child: Image.network(
                            i.secureUrl,
                            width: MediaQuery.of(context).size.width,
                            //height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  );
                }).toList(),
              );
            }
            else {
            return Center(child: CircularProgressIndicator());
            }
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
        future: image.getPhotos(),
      ),
    );
  }
}