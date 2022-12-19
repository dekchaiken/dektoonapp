import 'package:dektoonapp/login.dart';
import 'package:dektoonapp/profile.dart';
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
    'https://cdn-icons-png.flaticon.com/512/3220/3220883.png',
    'https://cdn-icons-png.flaticon.com/512/4114/4114756.png',
    'https://cdn-icons-png.flaticon.com/512/7116/7116641.png',
    'https://cdn-icons-png.flaticon.com/512/4114/4114763.png',
  ];
  final nameFav = ['Drama', 'Fantasy,'];

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
    return Scaffold(
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
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                color: isSelected
                    ? Color.fromARGB(255, 255, 0, 0)
                    : Color.fromARGB(255, 255, 255, 255),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ProfileUI()),
          );
        },
        child: Icon(Icons.favorite),
        backgroundColor: Colors.red,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
