import 'package:group_project/data/data.dart';
class BoolList {
  List<bool> boolList = [];
  void createBoolList() {
    for(int i = 0; i< products.length; i++) {
      boolList.add(false);
    }
    print(boolList);
    print(products.length);
  }
}