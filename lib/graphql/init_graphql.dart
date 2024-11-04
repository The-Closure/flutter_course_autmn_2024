import 'package:graphql/client.dart';

GraphQLClient initGraph() {
  final _httpLink = HttpLink(
    'https://graphqlzero.almansi.me/api',
  );

  GraphQLClient client =
      GraphQLClient(link: _httpLink, cache: GraphQLCache(store: HiveStore()));

  return client;
}
