import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  HomeView({Key? Key}) : super(key: Key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;

  int _isSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
    return index;
  }

  List ViewsList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contacts",
            style: Theme.of(context).appBarTheme.titleTextStyle),
        bottom: const PreferredSize(
          child: TextField(
            decoration: InputDecoration(
                hintText: "search contact", icon: Icon(Icons.search)),
          ),
          preferredSize: Size.fromHeight(30),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
              ),
              label: "favorite"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.timer,
              ),
              label: "timer"),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.contacts,
            ),
            label: "contacts",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.voicemail,
            ),
            label: "voicemail",
          ),
        ],
        selectedIconTheme:
            Theme.of(context).bottomNavigationBarTheme.selectedIconTheme,
        backgroundColor:
            Theme.of(context).bottomNavigationBarTheme.backgroundColor,
        currentIndex: _selectedIndex,
        onTap: _isSelected,
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return ListTile(
          title: Text(
            "Gadafi Jilmadaana",
            style: Theme.of(context).textTheme.bodyText1,
          ),
          subtitle: Text(
            "0247534220",
            style: Theme.of(context).textTheme.bodyText2,
          ),
          trailing: IconButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) => Column(
                    children: [
                      TextButton(onPressed: () {}, child: Text("Edit"))
                    ],
                  ),
                );
              },
              icon: Icon(Icons.more_horiz)),
        );
        itemCount:
        10;
      }),
    );
  }
}
