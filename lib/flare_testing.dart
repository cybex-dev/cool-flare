import 'flare_cache.dart';
import 'flare_cache_asset.dart';

// ignore_for_file: avoid_classes_with_only_static_members

class FlareTesting {
  static void setup() {
    FlareCache.doesPrune = false;
    FlareCacheAsset.useCompute = false;
  }
}
