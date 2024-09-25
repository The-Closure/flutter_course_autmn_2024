import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:intro_to_restapi/model/cat_model.dart';
import 'package:intro_to_restapi/service/cat_service.dart';

class CatPageWithModel extends StatefulWidget {
  const CatPageWithModel({super.key});

  @override
  State<CatPageWithModel> createState() => _CatPageWithModelState();
}

class _CatPageWithModelState extends State<CatPageWithModel> {
  TextEditingController name = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder(
          future: getDataOfCat(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                        leading: Image.network(snapshot.data![index].image),
                        title: Text(
                          snapshot.data![index].name,
                          style: const TextStyle(
                            fontSize: 32,
                          ),
                        ),
                      ),
                    );
                  });
            } else {
              return const CircularProgressIndicator();
            }
          },
        ),
      ),
      bottomNavigationBar: TextField(
        controller: name,
      ),
      floatingActionButton: InkWell(
          onTap: () async {
            await createNewCat(name: name.text);
            setState(() {});
          },
          child: FlutterLogo()),
    );
  }
}

createNewCat(
    {required String name,
    String origin = "Syria",
    String image =
        "https://www.google.com/logos/doodles/2024/celebrating-popcorn-6753651837110076-s.png"}) async {
  CatModel cat = CatModel(name: name, origin: origin, image: image);
  Dio dio = Dio();
  Response response = await dio.post(
      "https://667802bc0bd45250561d31f4.mockapi.io/cat",
      data: cat.toMap());
}
