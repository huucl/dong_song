import 'package:flutter_session_manager/flutter_session_manager.dart';
import 'package:get/get.dart';

import 'photo_detail_binding.dart';

class PhotoDetailController extends GetxController {
  final PhotoDetailBinding binding = PhotoDetailBinding();

  @override
  Future<void> onReady() async {
    super.onReady();


    var sessionManager = SessionManager();
    var p = await sessionManager.get('Product');
    print('PRODUCTTTTx ${p.toString()}');

    if(p !=null){
      print('PRODUCTTTT ${p.toString()}');
    }
    await sessionManager.set("name", "cool user");
    await sessionManager.set("id", 3);
    await sessionManager.set("measure", 23.2);
    await sessionManager.set("Product", Get.arguments.toString());
  }
}
