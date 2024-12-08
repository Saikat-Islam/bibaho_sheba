import 'package:get/get.dart';

class MainHomePageController extends GetxController {
  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    print('main home page contoller called');
  }

  var carouselCurrentIndex = 0.obs;

  updatePageIndicator(value) {
    carouselCurrentIndex.value = value;
    update();
  }
}
