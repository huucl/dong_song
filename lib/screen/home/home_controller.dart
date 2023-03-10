import 'package:dong_song/model/photos.dart';
import 'package:flutter_session_manager/flutter_session_manager.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart';
import 'package:get_storage/get_storage.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'home_binding.dart';

class HomeController extends GetxController {
  final HomeBinding binding = HomeBinding();

  final dio = Dio();

  @override
  Future<void> onReady() async {
    super.onReady();
    getPhotos();
  }

  void getPhotos() async {
    final response = await dio.get(
      'https://dummyjson.com/products',
    );
    binding.photos.value = GetProductResponse.fromMap(response.data).products!;
    bookGrab();
  }

  String readRepositories = """
  query ReadRepositories(\$nRepositories: Int!) {
    viewer {
      repositories(last: \$nRepositories) {
        nodes {
          id
          name
          viewerHasStarred
        }
      }
    }
  }
""";

  String q = """
  query (\$options: PageQueryOptions) {
  posts(options: \$options) {
    data {
      id
      title
    }
  }
}
  """;

  Future<void> bookGrab() async {
    GraphQLClient _client = GraphQLClient(
        link: HttpLink('https://graphqlzero.almansi.me/api'),
        cache: GraphQLCache());
    final readRespositoriesResult = await _client.query(
      QueryOptions(document: gql(q), variables: {
        "options": {
          "paginate": {
            "page": 2,
            "limit": 5
          }
        }
      } // this is the query string you just created
          ),
    );
    

    print('rsssss ${readRespositoriesResult}');
  }
}
