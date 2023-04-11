import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/material/scaffold.dart' as chuchu;

class MenuItems {
  static MenuIteme pompage = MenuIteme(
    'calcule',
    Image.asset('lib/images/download-removebg-preview (3).png'),
  );
  static MenuIteme Batiment = MenuIteme(
    'calcule',
    Image.asset('lib/images/images-removebg-preview (2).png'),
  );
  static MenuIteme Industriel = MenuIteme(
    'calcule',
    Image.asset(
        'lib/images/WhatsApp_Image_2023-02-11_at_19.06.33-removebg-preview.png'),
  );
  static MenuIteme profile = MenuIteme(
    'calcule',
    Image.asset('lib/images/images-removebg-preview.png'),
  );
  static MenuIteme parametre = MenuIteme(
    'calcule',
    Image.asset('lib/images/images-removebg-preview (1).png'),
  );

  static var all = [
    MenuIteme(
      'pompage',
      Image.asset('lib/images/download-removebg-preview (3).png'),
    ),
    MenuIteme(
      'Batiment offgrid',
      Image.asset('lib/images/images-removebg-preview (2).png'),
    ),
    MenuIteme(
      'Batiment Ongrid',
      Image.asset(
          'lib/images/WhatsApp_Image_2023-02-11_at_19.06.33-removebg-preview.png'),
    ),
    MenuIteme(
      'profile',
      Image.asset('lib/images/images-removebg-preview.png'),
    ),
    MenuIteme(
      'parametre',
      Image.asset(
        'lib/images/images-removebg-preview (1).png',
        color: Color.fromARGB(255, 25, 83, 163),
      ),
    )
  ];
}

class Menupage extends StatelessWidget {
  final MenuIteme currentItem;
  final ValueChanged<MenuIteme> OnSelectedItem;
  const Menupage(
      {Key? key, required this.currentItem, required this.OnSelectedItem})
      : super(key: key);
  Widget buildMeniItem(MenuIteme item) => ListTileTheme(
      selectedColor: Colors.white,
      child: ListTile(
        selectedTileColor: Colors.black26,
        selected: currentItem == item,
        minLeadingWidth: 20,
        leading: item.icon,
        title: Text(item.title),
        onTap: () => OnSelectedItem(item),
      ));
  @override
  Widget build(BuildContext context) => Theme(
      data: ThemeData.dark(),
      child: chuchu.Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.indigo,
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 60,
                ),
                CircleAvatar(
                    radius: 60,
                    backgroundColor: Color.fromARGB(255, 243, 237, 237),
                    child: SizedBox(
                      width: 300,
                      height: 300,
                      child: ClipOval(
                        child: Image.asset(
                          'lib/images/logo_d3_solaire-1-removebg-preview.png',
                        ),
                      ),
                    )),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'D3solaire',
                  style: TextStyle(color: Colors.white),
                ),
                const Divider(
                  color: Colors.white54,
                ),
                Spacer(),
                ...MenuItems.all.map(buildMeniItem).toList(),
                Spacer(flex: 2)
              ],
            ),
          )));
}

class MenuIteme {
  final String title;
  final Image icon;
  const MenuIteme(this.title, this.icon);
}
