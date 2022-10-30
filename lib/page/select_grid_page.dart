import 'package:dektoonapp/login.dart';
import 'package:drag_select_grid_view/drag_select_grid_view.dart';
import 'package:dektoonapp/widget/selectable_item_widget.dart';
import 'package:dektoonapp/fav.dart';
import 'package:flutter/material.dart';

class SelectGridPage extends StatefulWidget {
  @override
  _SelectGridPageState createState() => _SelectGridPageState();
}

class _SelectGridPageState extends State<SelectGridPage> {
  final controller = DragSelectGridViewController();
  final urlImages = [
    'https://cdn-icons-png.flaticon.com/512/4987/4987504.png',
    'https://cdn-icons-png.flaticon.com/512/1575/1575684.png',
    'https://cdn-icons-png.flaticon.com/128/2882/2882376.png',
    'https://cdn-icons-png.flaticon.com/512/2513/2513157.png',
    'https://cdn-icons-png.flaticon.com/512/2267/2267557.png',
    'https://images.unsplash.com/photo-1615369794017-f65e6f0c0393?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
    'https://images.unsplash.com/photo-1566160995964-4d7bd54dbaf4?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=932&q=80',
    'https://images.unsplash.com/photo-1594300393549-e0514fefa0f7?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1561731216-c3a4d99437d5?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80',
  ];

  @override
  void initState() {
    super.initState();
    controller.addListener(rebuild);
  }

  @override
  void dispose() {
    controller.removeListener(rebuild);
    super.dispose();
  }

  void rebuild() => setState(() {});

  @override
  Widget build(BuildContext context) {
    final sized = MediaQuery.of(context).size;
    final isSelected = controller.value.isSelecting;
    final text =
        isSelected ? '${controller.value.amount} Images Selected' : MyFav.title;

    return Scaffold(
      appBar: AppBar(
        title: Text(text),
        leading: isSelected ? CloseButton() : Container(),
        actions: [
          if (isSelected)
            IconButton(
              icon: Icon(Icons.done),
              onPressed: () {
                final urlSelectedImages = controller.value.selectedIndexes
                    .map<String>((index) => urlImages[index])
                    .toList();

                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => MyLogin(),
                ));
              },
            ),
        ],
      ),
      body: DragSelectGridView(
        gridController: controller,
        padding: EdgeInsets.all(20),
        itemCount: urlImages.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 20,
          mainAxisSpacing: 50,
        ),
        itemBuilder: (context, index, isSelected) => Container(
          child: Column(children: [
            Container(
              decoration: BoxDecoration(
                color: isSelected?Color.fromARGB(255, 255, 0, 0):Color.fromARGB(255, 255, 255, 255),
                image: DecorationImage(
                  image: NetworkImage(
                    urlImages[index],
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              height: 70,
              width: 70,
            ),
            Text('test'),
          ]),
        ),
      ),
    );
  }
}
