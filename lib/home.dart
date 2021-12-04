import 'package:effects_cook_book_app/data/home_contents.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with RestorationMixin {
  final RestorableInt _currentContentIndex = RestorableInt(0);

  @override
  String? get restorationId => 'home_current_content_index';

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_currentContentIndex, 'current_content_index');
  }

  @override
  Widget build(BuildContext context) {
    var contents = HomeContents.fromContentsType(ContentsType.values[_currentContentIndex.value]);

    return Scaffold(
      appBar: AppBar(
        title: contents.title,
      ),
      body: contents.content,
      drawer: Drawer(
        child: _buildDrawer(),
      ),
    );
  }

  Widget _buildDrawer() {
    const header = UserAccountsDrawerHeader(
      accountName: Text('とだやま'),
      accountEmail: Text('noreply@noreply.com'),
      currentAccountPicture: CircleAvatar(
        child: FlutterLogo(size: 42),
      ),
    );
    var items = <Widget>[header];

    for (var type in ContentsType.values) {
      var contents = HomeContents.fromContentsType(type);

      items.add(
          ListTile(
            title: contents.title,
            leading: contents.icon,
            onTap: () {
              setState(() {
                _currentContentIndex.value = type.index;
                Navigator.pop(context);
              });
            },
          )
      );
    }

    return ListView(
      children: items,
    );
  }
}
