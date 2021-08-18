import 'package:just_audio/just_audio.dart';

class CollectionLogic{

  AudioPlayer player = AudioPlayer();


  playAudio(String audioFile) async{
    await player.setAsset(
        audioFile);
    await player.setSpeed(1);
    player.play();
  }

  playHalfSpeed(String audioFile) async{
    await player.setAsset(
        audioFile);
    await player.setSpeed(1);
    player.play();
  }

}