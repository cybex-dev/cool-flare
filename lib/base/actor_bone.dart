import 'package:cool_flare/base/actor_artboard.dart';
import 'package:cool_flare/base/actor_bone_base.dart';
import 'package:cool_flare/base/actor_component.dart';
import 'package:cool_flare/base/jelly_component.dart';
import 'package:cool_flare/base/stream_reader.dart';

class ActorBone extends ActorBoneBase {
  ActorBone? _firstBone;
  JellyComponent? jelly;

  ActorBone? get firstBone {
    return _firstBone;
  }

  @override
  ActorComponent makeInstance(ActorArtboard resetArtboard) {
    ActorBone instanceNode = ActorBone();
    instanceNode.copyBoneBase(this, resetArtboard);
    return instanceNode;
  }

  @override
  void completeResolve() {
    super.completeResolve();
    if (children == null) {
      return;
    }
    for (final ActorComponent component in children!) {
      if (component is ActorBone) {
        _firstBone = component;
        return;
      }
    }
  }

  // ignore: prefer_constructors_over_static_methods
  static ActorBone read(
      ActorArtboard artboard, StreamReader reader, ActorBone? node) {
    // ignore: parameter_assignments
    node ??= ActorBone();
    ActorBoneBase.read(artboard, reader, node);
    return node;
  }
}
