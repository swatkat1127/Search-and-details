import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class DetailsPage extends StatelessWidget{

  List<dynamic> gridList = [
    {
    "ImageUrl":"https://debug.qart.fashion/ProductDashboard/ProductCatalogue/CustomAppGetThumbnailImageWithCheck/24671-0035.png",
    "Option": "24671-0035",
    "Color": "Neutrals",
    "MRP": 40,
  },
    {
      "ImageUrl":"https://debug.qart.fashion/ProductDashboard/ProductCatalogue/CustomAppGetThumbnailImageWithCheck/24671-0035.png",
      "Option": "24671-0035",
      "Color": "Neutrals",
      "MRP": 40,
    },
    {
      "ImageUrl":"https://debug.qart.fashion/ProductDashboard/ProductCatalogue/CustomAppGetThumbnailImageWithCheck/24671-0035.png",
      "Option": "24671-0035",
      "Color": "Neutrals",
      "MRP": 40,
    },
    {
      "ImageUrl":"https://debug.qart.fashion/ProductDashboard/ProductCatalogue/CustomAppGetThumbnailImageWithCheck/24671-0035.png",
      "Option": "24671-0035",
      "Color": "Neutrals",
      "MRP": 40,
    },
    {
      "ImageUrl":"https://debug.qart.fashion/ProductDashboard/ProductCatalogue/CustomAppGetThumbnailImageWithCheck/24671-0035.png",
      "Option": "24671-0035",
      "Color": "Neutrals",
      "MRP": 40,
    },
    {
      "ImageUrl":"https://debug.qart.fashion/ProductDashboard/ProductCatalogue/CustomAppGetThumbnailImageWithCheck/24671-0035.png",
      "Option": "24671-0035",
      "Color": "Neutrals",
      "MRP": 40,
    },

 ];

  final String ImageUrl;
  final String Option;
  final num MRP;
  final String Color;
  final String Brand;
  final String Gender;
  final String Description;
  DetailsPage({
    required this.ImageUrl, required this.Option , required this.MRP , required this.Color, required this.Brand, required this.Gender,
    required this.Description,
});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10.00),
              height: 350,
              child: GridView.builder(
              itemCount: gridList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 0,
                    mainAxisSpacing: 3,
                    childAspectRatio: (2/ 1),
                  ),
              // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, crossAxisSpacing: 4.0, mainAxisSpacing: 4.0),
                itemBuilder: (BuildContext context, int index) {
                  return GridTile(
                    ImageUrl: gridList[index]['ImageUrl'] ,
                    Option: gridList[index]['Option'],
                    Color: gridList[index]['Color'],
                    MRP: gridList[index]['MRP'],
                  );
                }
                ),
        ),

              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 0, horizontal: 20.0),
                child: ListTile(
                  title: Text(
                    'Brand',
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 15.00,
                    ),
                  ),
                  subtitle: Text(
                    Brand,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.00,
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 0.00, horizontal: 20.0),
                child: ListTile(
                  title: Text(
                    'Gender',
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 15.00,
                    ),
                  ),
                  subtitle: Text(
                    Gender,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.00,
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 0.00, horizontal: 20.0),
                child: ListTile(
                  title: Text(
                    'Description',
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 15.00,
                    ),
                  ),
                  subtitle: Text(
                    Description,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.00,
                    ),

                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 05.00, horizontal: 20.0),
                child: ListTile(
                  title: Text(
                    'Description',
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 15.00,
                    ),
                  ),
                  subtitle: Text(
                    Description,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.00,
                    ),

                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 0.00, horizontal: 20.0),
                child: ListTile(
                  title: Text(
                    'Description',
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 15.00,
                    ),
                  ),
                  subtitle: Text(
                    Description,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.00,
                    ),

                  ),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}

class GridTile extends StatelessWidget {
  final String ImageUrl;
  final String Option;
  final num MRP;
  final String Color;
  GridTile(
      {required this.ImageUrl,
        required this.Option,
        required this.MRP,
        required this.Color});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(right: 05, left: 05),
      child: Stack(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(08),
            child: CachedNetworkImage(
              imageUrl: ImageUrl,
              width: MediaQuery.of(context).size.width,
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.deepOrangeAccent,
                borderRadius: BorderRadius.circular(6)),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 20,),
                Text(
                  Option,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                    Color,
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.white,
                      letterSpacing: 2.5,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.normal,
                    )),
                Text(
                    '$MRP',
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.white,
                      letterSpacing: 2.5,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.normal,
                    )),

              ],
            ),
          ),
        ],
      ),
    );
  }
}

