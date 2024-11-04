import 'package:getx_and_graphql/graphql/gql.dart';
import 'package:getx_and_graphql/graphql/init_graphql.dart';
import 'package:graphql/client.dart';

Future<dynamic> getUserData() async {
  var http = initGraph();

  var response = await http.query(
    QueryOptions(
      document: gql(
        scheme,
      ),
    ),
  );
  return response;
}
