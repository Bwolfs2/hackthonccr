import 'package:flutter_modular/flutter_modular.dart';
import 'package:hackthonccr/app/modules/home/models/publicity_image_model.dart';
import 'package:hasura_connect/hasura_connect.dart';

class PublicityRepository extends Disposable {
  final HasuraConnect hasuraConnect;

  PublicityRepository(this.hasuraConnect);

  Future getPublicityImages() async {
    var query = '''query {
                      publicity_images{
                        url
                        id
                        action
                      }
                    }''';

    var response = await hasuraConnect.query(query);

    return PublicityImageModel.fromJsonList(
        response["data"]["publicity_images"]);
  }

  @override
  void dispose() {}
}
