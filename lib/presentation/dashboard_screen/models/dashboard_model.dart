import 'package:get/get.dart';
import 'slidercreatefromfra_item_model.dart';
import 'dashboard_item_model.dart';
import 'dashboard1_item_model.dart';

class DashboardModel {
  RxList<SlidercreatefromfraItemModel> slidercreatefromfraItemList =
      RxList.filled(1, SlidercreatefromfraItemModel());

  RxList<DashboardItemModel> dashboardItemList =
      RxList.filled(6, DashboardItemModel());

  RxList<Dashboard1ItemModel> dashboard1ItemList =
      RxList.filled(3, Dashboard1ItemModel());
}
