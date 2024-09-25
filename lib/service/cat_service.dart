import 'package:dio/dio.dart';
import 'package:intro_to_restapi/model/cat_model.dart';

Future<List<CatModel>> getDataOfCat() async {
  Dio request = Dio();

  Response response = await request.get(
    "https://667802bc0bd45250561d31f4.mockapi.io/cat",
  );
  List<CatModel> cats = [];

  for (var i = 0; i < response.data.length; i++) {
    CatModel cat = CatModel.fromMap(
      response.data[i],
    );
    cats.add(cat);
  }
  return cats;
}
