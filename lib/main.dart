import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.blueAccent[800],
          secondaryHeaderColor: Colors.blueGrey),
      home: MenuList(),
    ),
  );
}

class MenuList extends StatefulWidget {
  const MenuList({super.key});

  @override
  State<MenuList> createState() => _MenuListState();
}

class _MenuListState extends State<MenuList> {
  late String name, size;
  late double price;

  getName(name) {
    this.name = name;
    print(this.name);
  }

  getSize(size) {
    this.size = size;
    print(this.size);
  }

  getPrice(price) {
    this.price = double.parse(price);
    print(this.price);
  }

  submitData(){
    print("Submit");
  }

  reviewData(){
    print("Reviewing");
  }

  editData(){
    print("Updating");
  }

  deleteData(){
    print("Delete");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Printing Services'),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(hintText: 'type of services'),
              onChanged: (String name) {
                getName(name);
              },
            ),
            TextField(
              decoration: InputDecoration(hintText: 'size of file'),
              onChanged: (String size) {
                getSize(size);
              },
            ),
            TextField(
              decoration: InputDecoration(hintText: 'price of service'),
              onChanged: (String price) {
                getPrice(price);
              },
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                textDirection: TextDirection.ltr,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                      onPressed: () {
                        submitData();
                      },
                      child: Text('Submit',style: TextStyle(color: Colors.white),),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent),
                      onPressed: () {
                        reviewData();
                      },
                      child: Text('Review',style: TextStyle(color: Colors.white)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.orangeAccent),
                      onPressed: () {
                        editData();
                      },
                      child: Text('Edit',style: TextStyle(color: Colors.white)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                      onPressed: () {
                        deleteData();
                      },
                      child: Text('Delete',style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
