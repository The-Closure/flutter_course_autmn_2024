import 'package:flutter/material.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CardAndGridViewPage(),
    );
  }
}

class ColumnListPage extends StatelessWidget {
  const ColumnListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.all(10),
                width: 300,
                height: 300,
                color: Colors.red,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              width: 300,
              height: 300,
              color: Colors.red,
            ),
            Container(
              margin: const EdgeInsets.all(10),
              width: 300,
              height: 300,
              color: Colors.red,
            ),
            Container(
              margin: const EdgeInsets.all(10),
              width: 300,
              height: 300,
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}

class ListViewPage extends StatelessWidget {
  const ListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: const BouncingScrollPhysics(),
        itemExtent: 300,
        padding: const EdgeInsets.all(20),
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            width: 300,
            color: Colors.blue,
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            width: 300,
            color: Colors.blue,
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            width: 300,
            color: Colors.blue,
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            width: 300,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}

List<String> titles = [
  'title1',
  'title2',
  'title3',
  'title4',
  'title5',
  'title6',
  'title7',
  'title8',
];

class ListViewWithBuilderPage extends StatelessWidget {
  const ListViewWithBuilderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        reverse: true,
        itemCount: titles.length,
        itemBuilder: (context, index) {
          print(index);
          return Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.all(10),
            width: 300,
            height: 300,
            color: Colors.green,
            child: Text(
              titles[index],
              style: const TextStyle(
                fontSize: 100,
              ),
            ),
          );
        },
      ),
    );
  }
}

class ListViewWithSperatedPage extends StatelessWidget {
  const ListViewWithSperatedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 400,
            child: ListView.separated(
              shrinkWrap: false,
              itemBuilder: (context, index) {
                print('item index $index');
                return ListTile(
                  title: Text(
                    titles[index],
                  ),
                );
              },
              separatorBuilder: (context, index) {
                print('separator index $index');
                return const Divider(
                  color: Colors.green,
                  thickness: 3,
                  height: 30,
                  indent: 20,
                  endIndent: 30,
                );
              },
              itemCount: titles.length,
            ),
          ),
          const Text('hello')
        ],
      ),
    );
  }
}

class CardAndGridViewPage extends StatelessWidget {
  const CardAndGridViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 500,
          height: 600,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            elevation: 10,
            shadowColor: Colors.pink,
            color: Colors.white,
            surfaceTintColor: Colors.purple,
            child: Column(
              children: [
                // Image.network(
                //   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjVOo-ksBIm1hGci8Ucko9C-CO7OFxJqF_3g&s',
                //   height: 350,
                //   width: 500,
                //   fit: BoxFit.fitWidth,
                // ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        fit: BoxFit.fitWidth,
                        image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjVOo-ksBIm1hGci8Ucko9C-CO7OFxJqF_3g&s',
                        ),
                      )),
                  height: 350,
                  width: 500,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20, top: 26),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Burger',
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'Et velit in laboris labore cillum officia fugiat veniam in ad nostrud excepteur.',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 100,
                        height: 45,
                        decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Text(
                          'Order',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 100,
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Colors.pink,
                          ),
                        ),
                        child: const Text(
                          'More',
                          style: TextStyle(
                            color: Colors.pink,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
