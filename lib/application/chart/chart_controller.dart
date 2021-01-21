import 'package:feroza/domain/chart/chart_data_model.dart';
import 'package:get/state_manager.dart';

class ChartController extends GetxController {
  final chartDataModel = RxList<ChartDataModel>([]);

  bool addItemToChart(ChartDataModel data) {
    if (chartDataModel.isEmpty) {
      chartDataModel.add(data);

      update();
      return true;
    } else {
      var currRestaurant = chartDataModel.first.restaurantId;
      try {
        ChartDataModel _currentItemId = chartDataModel
            .firstWhere((element) => element.menuData.id == data.menuData.id);
        if (_currentItemId == null) {
          //jika data restaurantnya berbeda maka cek restaurant. apakah mau di timpa atau tidak

          if (currRestaurant == data.restaurantId) {
            chartDataModel.add(data);

            update();
          } else {
            return false;
          }
        }
      } catch (e) {
        chartDataModel.add(data);

        update();
      }

      return true;
    }
  }

  bool removeItemFromChart(ChartDataModel data) {
    chartDataModel.removeWhere((a) => a == data);
    update();
    if (chartDataModel.isEmpty) return true;
    return false;
  }

  clearChart() {
    chartDataModel.clear();
    update();
  }
}
