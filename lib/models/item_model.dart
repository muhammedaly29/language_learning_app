import 'package:audioplayers/audioplayers.dart';

class ItemModel {
  final String sound;
  final String image;
  final String jpName;
  final String enName;
  const ItemModel(this.sound, this.image, this.jpName, this.enName);

  playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}
