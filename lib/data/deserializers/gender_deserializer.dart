import 'package:test_grid_images/data/deserializers/deserializer.dart';
import 'package:test_grid_images/domain/enums/gender.dart';

class GenderDeserializer implements Deserializer<Gender, String> {
  @override
  Gender call(String obj) {
    const dict = {
      'Male': Gender.male,
      'Female': Gender.female,
      'unknown': Gender.unknown,
    };
    return dict[obj]!;
  }
}
