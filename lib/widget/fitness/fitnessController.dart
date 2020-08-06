import 'package:health/health.dart';
import 'package:mobx/mobx.dart';

part 'fitnessController.g.dart';

class Fitness = FitnessController with _$Fitness;
final Fitness fitness = Fitness();

abstract class FitnessController with Store {
  @observable
  List<HealthDataPoint> healthDataList = [];

  @observable
  int stepsCount = 0;

  @action
  fetchData() async {
    if(await Health.requestAuthorization()) {
      DateTime startDate = DateTime.utc(2020, 08, 05);
      DateTime endDate = DateTime.utc(2020,08,06);
      try {
         List<HealthDataPoint> healthDataListRes = await Health.getHealthDataFromType(startDate, endDate, HealthDataType.STEPS);
         this.healthDataList = Health.removeDuplicates(healthDataListRes);
         this.stepsCount = 0;
         for(var i in this.healthDataList) {
           this.stepsCount += i.value.ceil();
         }
         print(this.stepsCount);
      } catch (exception) {
        print(exception.toString());
      }
    }
  }
}