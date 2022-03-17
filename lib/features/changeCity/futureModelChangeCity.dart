import 'package:google_gdsc_competion/framework/mixInDescription.dart';
import '../../businessModels/BusinessModelCity.dart';


class FeatureModelChangeCity with MixInDescription {
  final BusinessModelCity city;

  FeatureModelChangeCity({required this.city});

  @override
  String getDescription() {
    return city.name;
  }

}
