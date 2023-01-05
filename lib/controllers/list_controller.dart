import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../services/http_service.dart';

class ListController extends GetxController {
  var isLoading = true.obs;
  var empList = [].obs;

  @override
  void onInit() {
    getList();
    super.onInit();
  }

  void getList() async {
    try {
      isLoading(true);
      var items = await Httpservice.getList();
      if (items != null) {
        empList.value = items;
      }
    } finally {
      isLoading(false);
    }
  }
}