import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:open_iconic_flutter/open_iconic_flutter.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp/widgets/call.dart';
import 'package:whatsapp/widgets/camera.dart';
import 'package:whatsapp/widgets/chats.dart';
import 'package:whatsapp/widgets/status.dart';
import 'package:whatsapp/widgets/status_list.dart';
import 'constant.dart';
import 'models/theme_model.dart';

void main() => runApp(ChangeNotifierProvider<ThemeModel>(
    builder: (BuildContext context) => ThemeModel(), child: MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: Provider.of<ThemeModel>(context).currentTheme,
      home: MyHomePage(title: 'WhatsApp'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  CameraController _cameraController;

  void popMenuSelected(String choice) {}

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 4);
    _tabController.index = 1;
    initCamera();
  }

  @override
  void dispose() {
    _cameraController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var _tabWidth = MediaQuery.of(context).size.width / 5;
    _tabController.addListener(() {
      setState(() {});
    });
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          elevation: 0,
          actions: <Widget>[
            Center(
                child: Container(
              width: 100.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Provider.of<ThemeModel>(context).toggleTheme();
                      print("Toggle button handle click");
                    },
                    child: Icon(
                      OpenIconicIcons.sun,
                      size: 20.0,
                      color: Theme.of(context).textTheme.subhead.color,
                    ),
                  ),
                  Icon(
                    Icons.search,
                    size: 20.0,
                  ),
                  Container(
                    height: 30.0,
                    width: 30.0,
                    child: CircleAvatar(
                      radius: 30.0,
                      backgroundImage: AssetImage("images/damola.jpeg"),
                    ),
                  )
                ],
              ),
            )),
            PopupMenuButton<String>(
              onSelected: popMenuSelected,
              itemBuilder: (context) {
                return contextMenu
                    .map((item) => PopupMenuItem<String>(
                          value: item.toString(),
                          child: Text(item),
                        ))
                    .toList();
              },
            )
          ],
          bottom: TabBar(
            controller: _tabController,
            isScrollable: true,
            tabs: <Widget>[
              Container(
                width: 10.0,
                alignment: Alignment.centerLeft,
                child: Tab(
                  icon: Icon(Icons.camera_alt),
                ),
              ),
              Container(
                width: _tabWidth,
                child: Tab(
                  text: "CHATS",
                ),
              ),
              Container(
                width: _tabWidth,
                child: Tab(
                  text: "STATUS",
                ),
              ),
              Container(
                width: _tabWidth,
                child: Tab(
                  text: "CALLS",
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          physics: BouncingScrollPhysics(),
          children: <Widget>[
            Camera(
              cameraController: _cameraController,
            ),
            Chats(),
            //Text("Chats"),
            StatusList(),
            // Status(),
            //Text("Status"),
            Call()
          ],
        ),
        floatingActionButton: changeIcon(_tabController
            .index) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }

  initCamera() async {
    final cameras = await availableCameras();
    final firstCamera = cameras.first;

    _cameraController = CameraController(firstCamera, ResolutionPreset.medium);
    _cameraController.initialize().then((_) {
      if (!mounted) {
        return;
      }
      ;
      setState(() {});
    });
  }

  FloatingActionButton changeIcon(int index) {
    if (index == 0)
      return FloatingActionButton(
        tooltip: 'Increment',
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(
          Icons.camera,
          color: Colors.white,
        ),
      );
    if (index == 1)
      return FloatingActionButton(
        tooltip: 'Increment',
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(
          Icons.message,
          color: Colors.white,
        ),
      );
    ;
    if (index == 2)
      return FloatingActionButton(
        tooltip: 'Increment',
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(
          Icons.remove_red_eye,
          color: Colors.white,
        ),
      );
    ;
    if (index == 3)
      return FloatingActionButton(
        tooltip: 'Increment',
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(
          Icons.missed_video_call,
          color: Colors.white,
        ),
      );
    ;
  }
}
