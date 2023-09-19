import 'package:test_grid_images/data/deserializers/deserializer.dart';
import 'package:test_grid_images/domain/enums/status.dart';

class StatusDeserializer implements Deserializer<Status, String> {
  @override
  Status call(String obj) {
    const dict = {
      'Alive': Status.alive,
      'Dead': Status.dead,
      'unknown': Status.unknown,
    };
    return dict[obj]!;
  }
}
