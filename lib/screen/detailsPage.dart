import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  List<dynamic> gridList = [
    {
      "ImageUrl":
          "https://debug.qart.fashion/ProductDashboard/ProductCatalogue/CustomAppGetThumbnailImageWithCheck/A0192-0004.png",
      "Option": "A0192-0004",
      "Color": "Neutrals",
      "MRP": 400,
    },
    {
      "ImageUrl":
          "https://debug.qart.fashion/ProductDashboard/ProductCatalogue/CustomAppGetThumbnailImageWithCheck/24671-0035.png",
      "Option": "24671-0035",
      "Color": "Neutrals",
      "MRP": 40,
    },
    {
      "ImageUrl":
          "https://debug.qart.fashion/ProductDashboard/ProductCatalogue/CustomAppGetThumbnailImageWithCheck/87373-0031.png",
      "Option": "87373-0031",
      "Color": "Neutrals",
      "MRP": 100,
    },
    {
      "ImageUrl":
          "https://debug.qart.fashion/ProductDashboard/ProductCatalogue/CustomAppGetThumbnailImageWithCheck/A0192-0007.png",
      "Option": "A0192-0007",
      "Color": "Neutrals",
      "MRP": 80,
    },
    {
      "ImageUrl":
          "https://debug.qart.fashion/ProductDashboard/ProductCatalogue/CustomAppGetThumbnailImageWithCheck/A2678-0000.png",
      "Option": "A2678-0000",
      "Color": "Reds",
      "MRP": 350,
    },
    {
      "ImageUrl":
          "https://debug.qart.fashion/ProductDashboard/ProductCatalogue/CustomAppGetThumbnailImageWithCheck/24675-0035.png",
      "Option": "24675-0035",
      "Color": "Dark Indigo",
      "MRP": 540,
    },
  ];

  final String ImageUrl;
  final String Option;
  final num MRP;
  final String Color;
  final String Brand;
  final String Gender;
  final String Description;
  final String Category;
  final String SubCategory;
  DetailsPage({
    required this.ImageUrl,
    required this.Option,
    required this.MRP,
    required this.Color,
    required this.Brand,
    required this.Gender,
    required this.Description,
    required this.SubCategory,
    required this.Category,
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
                        childAspectRatio: (2 / 1),
                      ),
                      // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, crossAxisSpacing: 4.0, mainAxisSpacing: 4.0),
                      itemBuilder: (BuildContext context, int index) {
                        return GridTile(
                          ImageUrl: gridList[index]['ImageUrl'],
                          Option: gridList[index]['Option'],
                          Color: gridList[index]['Color'],
                          MRP: gridList[index]['MRP'],
                        );
                      }),
                ),
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 1, horizontal: 20.0),
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
                  margin:
                      EdgeInsets.symmetric(vertical: 1.00, horizontal: 20.0),
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
                  margin:
                      EdgeInsets.symmetric(vertical: 1.00, horizontal: 20.0),
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
                  margin:
                      EdgeInsets.symmetric(vertical: 1.00, horizontal: 20.0),
                  child: ListTile(
                    title: Text(
                      'Category',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 15.00,
                      ),
                    ),
                    subtitle: Text(
                      Category,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.00,
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin:
                      EdgeInsets.symmetric(vertical: 1.00, horizontal: 20.0),
                  child: ListTile(
                    title: Text(
                      'SubCategory',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 15.00,
                      ),
                    ),
                    subtitle: Text(
                      SubCategory,
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
        ));
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
          Container(
            decoration: BoxDecoration(
                color: Colors.pink[500],
                borderRadius: BorderRadius.circular(6)),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Text(
                  Option,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(Color,
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.white,
                      letterSpacing: 2.5,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.normal,
                    )),
                Text('$MRP',
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
