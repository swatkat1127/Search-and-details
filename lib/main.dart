import 'package:flutter/material.dart';
import 'service/network.dart';
import 'screen/detailsPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text('Search and details'),
              backgroundColor: Colors.blueGrey,
            ),
            body: Center(child: ListSearch())));
  }
}

class ListSearch extends StatefulWidget {
  ListSearchState createState() => ListSearchState();
}

class ListSearchState extends State<ListSearch> {
  TextEditingController _textController = TextEditingController();
  List<dynamic> mainDataList = [];

  List<dynamic> newDataList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getMainDataList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              controller: _textController,
              decoration: InputDecoration(
                icon: Icon(Icons.search),
                hintText: 'Search Here...',
              ),
              onChanged: onItemChanged,
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(10.0),
              children: newDataList.map((d) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(d[
                        'ImageUrl']), // no matter how big it is, it won't overflow
                  ),
                  title: Text(d['Color']),
                  subtitle: Text(d['QRCode']),
                  onTap: () {
                    Navigator.push(
                        (context),
                        MaterialPageRoute(
                            builder: (context) => DetailsPage(
                                  ImageUrl: d['ImageUrl'],
                                  Option: d['Option'],
                                  MRP: d['MRP'],
                                  Color: d['Color'],
                                  Brand: d['Brand'],
                                  Gender: d['Gender'],
                                  Description: d['Description'],
                                  SubCategory: d['SubCategory'],
                                  Category: d['Category'],
                                )));
                  },
                );
              }).toList(),
            ),
          )
        ],
      ),
    );
  }

  onItemChanged(String text) {
    setState(() {
      newDataList = mainDataList
          .where((s) => s["QRCode"].toLowerCase().contains(text.toLowerCase()))
          .toList();
    });
  }

  void getMainDataList() async {
    NetworkHelper np = NetworkHelper(
        'https://debug.qart.fashion/api/product/GetProductsWithSizes?retailerCode=40984');
    var data;
    try {
      data = await np.getData();
    } catch (err) {
      data = {'Products': null};
    }

    setState(() {
      List<dynamic> results = data['Products'];
      mainDataList = results;
      newDataList = List.from(mainDataList);
    });
  }
}
