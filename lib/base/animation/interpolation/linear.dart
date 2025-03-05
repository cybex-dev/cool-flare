import 'package:cool_flare/base/animation/interpolation/interpolator.dart';

class LinearInterpolator extends Interpolator {
  static Interpolator get instance => _instance;

  @override
  double getEasedMix(double mix) => mix;
}

LinearInterpolator _instance = LinearInterpolator();
