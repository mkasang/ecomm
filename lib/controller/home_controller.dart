import 'package:ecommerce/model/add_banner.dart';
import 'package:ecommerce/model/category.dart';
import 'package:ecommerce/service/remote_service.dart/remote_banner_service.dart';
import 'package:ecommerce/service/remote_service.dart/remote_popular_category.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController instance = Get.find();
  RxList<AdBanner> bannerList = List<AdBanner>.empty(growable: true).obs;
  RxList<Category> popularCategoryList =
      List<Category>.empty(growable: true).obs;
  RxBool isBannerLoading = false.obs;
  RxBool isPopularCategoryLoading = false.obs;

  @override
  void onInit() {
    getAdBanners();
    getPopularCatgories();
    super.onInit();
  }

  void getAdBanners() async {
    try {
      isBannerLoading(true);
      var result = await RemoteBannerService().get();
      if (result != null) {
        bannerList.assignAll(adBannerListFromJson(result.body));
      }
    } finally {
      isBannerLoading(false);
    }
  }

  void getPopularCatgories() async {
    try {
      isPopularCategoryLoading(true);
      var result = await RemotePopularCategoryServices().get();
      if (result != null) {
        popularCategoryList.assignAll(popularCategoryListFromJson(result.body));
      }
    } finally {
      print(popularCategoryList.length);
      isPopularCategoryLoading(false);
    }
  }
}
