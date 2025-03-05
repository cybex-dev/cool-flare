import 'dart:typed_data';

/// Identifies an asset, to obtain asset from an [AssetProvider], call [load].
// ignore: one_member_abstracts
abstract class AssetProvider {
  const AssetProvider();

  /// Loads the asset.
  Future<ByteData> load();
}
