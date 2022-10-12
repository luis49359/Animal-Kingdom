import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';

class AnimalPage extends StatefulWidget {
  const AnimalPage({Key? key, this.animal}) : super(key: key);
  final dynamic animal;
  @override
  State<AnimalPage> createState() => _AnimalPageState();
}

class _AnimalPageState extends State<AnimalPage> {
  double _currentSliderValue = 0;

  late AudioPlayer advancedPlayer;
  late AudioCache audioCache;
  bool isPlaying = true;

  @override
  void initState() {
    super.initState();
    initPlayer();
  }

  initPlayer() {
    advancedPlayer = AudioPlayer();
    audioCache = AudioCache(fixedPlayer: advancedPlayer);
    playSound(widget.animal['sound']);
  }

  playSound(localPath) async {
    await audioCache.play(localPath);
  }

  stopSound(localPath) async {
    Uri audioFile = await audioCache.load(localPath);
    //await advancedPlayer.setSourceUrl(audioFile.path);
    await advancedPlayer.setUrl(audioFile.path);
    advancedPlayer.stop();
  }

  seekSound() async {
    Uri audioFile = await audioCache.load(widget.animal['sound']);
    await advancedPlayer.setUrl(audioFile.path);
    advancedPlayer.seek(Duration(milliseconds: 2000));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    stopSound(widget.animal['sound']);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.animal['color'], //color de fondo
      body: cuerpoAlbum(), //formar cuerpo
    );
  }

  Widget cuerpoAlbum() {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 100),
                child: Container(
                  width: 400,
                  height: 300,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(widget.animal['img']),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(30)),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: SizedBox(
              width: size.width - 80,
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        widget.animal['title'],
                        style: TextStyle(
                            fontSize: 18,
                            color: widget.animal["colorText"],
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 400, right: 400),
                        child: SizedBox(
                          width: 400,
                          child: Text(
                            widget.animal["description"],
                            maxLines: 3,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 14,
                                color: widget.animal["colorText"].withOpacity(0.8)),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Slider(
              activeColor: widget.animal["colorText"],
              value: _currentSliderValue,
              min: 0,
              max: 20,
              onChanged: (value) {
                setState(() {
                  _currentSliderValue = value;
                });
                seekSound();
              }),
          const SizedBox(
            height: 25,
          ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: size.width,
                  child: IconButton(
                      iconSize: 50,
                      icon: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: widget.animal["colorText"]),
                        child: Center(
                          child: Icon(
                            isPlaying
                                ? Entypo.controller_stop
                                : Entypo.controller_play,
                            size: 28,
                            color: widget.animal["color"],
                          ),
                        ),
                      ),
                      onPressed: () {
                        if (isPlaying) {
                          stopSound(widget.animal['sound']);
                          setState(() {
                            isPlaying = false;
                          });
                        } else {
                          playSound(widget.animal['sound']);
                          setState(() {
                            isPlaying = true;
                          });
                        }
                      }),
                ),
              ],
            ),
          const SizedBox(
            height: 25,
          ),
            ],
          ),
          SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: widget.animal["colorText"],
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
              ],
            ),
          )
        ],
      ),
    );
  }
}
