import 'package:flutter/material.dart';
import 'package:lyfe/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int navDestination = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme().light(),
      darkTheme: AppTheme().dark(),
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("lyfe"),
            actions: [
              InkWell(
                customBorder: const CircleBorder(),
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.red,
                      width: 3,
                    ),
                    shape: BoxShape.circle,
                  ),
                  padding: const EdgeInsets.all(2),
                  child: const CircleAvatar(
                    foregroundImage: NetworkImage(
                        "https://firebasestorage.googleapis.com/v0/b/rin-backend.appspot.com/o/profilePictures%2FHN9fBFdUFxfMblnkAkkmW3X3Tnf1?alt=media&token=a0218c8f-a511-4d4e-9bb9-8a99cf91becb"),
                  ),
                ),
              ),
              Container(
                color: Colors.transparent,
                width: 12,
              ),
            ],
            bottom: const TabBar(
              labelColor: Colors.white,
              indicatorColor: Colors.white,
              indicatorWeight: 4,
              indicatorSize: TabBarIndicatorSize.label,
              tabs: [
                Tab(text: "Friends"),
                Tab(text: "Discover"),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Scrollbar(
                child: ListView.builder(
                  itemBuilder: ((context, index) => SizedBox(
                        height: 200,
                        child: Text("$index"),
                      )),
                  itemCount: 5,
                ),
              ),
              Scrollbar(
                child: ListView.builder(
                  itemBuilder: ((context, index) => SizedBox(
                        height: 200,
                        child: Text("$index"),
                      )),
                  itemCount: 5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
