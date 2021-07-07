import 'package:flutter/material.dart';

class HamroService {
  String updateText;
  String itemName;
  Image image;
  HamroService({
    this.itemName,
    this.image,
    this.updateText,
  });
}

List<HamroService> getHamroService = [
  HamroService(
    image: Image.asset(
      "assets/message.png",
      fit: BoxFit.cover,
    ),
    updateText: "Beta",
    itemName: "Message",
  ),
  HamroService(
    image: Image.asset(
      "assets/radio.png",
      fit: BoxFit.cover,
    ),
    updateText: "",
    itemName: "Radio",
  ),
  HamroService(
    image: Image.asset(
      "assets/videos.png",
      fit: BoxFit.cover,
    ),
    updateText: "",
    itemName: "Videos",
  ),
  HamroService(
    image: Image.asset(
      "assets/news.png",
      fit: BoxFit.cover,
    ),
    updateText: "Latest",
    itemName: "News",
  ),
  HamroService(
    image: Image.asset(
      "assets/music.png",
      fit: BoxFit.cover,
    ),
    updateText: "",
    itemName: "Audio",
  ),
  HamroService(
    image: Image.asset(
      "assets/jyotish.png",
      fit: BoxFit.cover,
    ),
    updateText: "",
    itemName: "Jyotish",
  ),
  HamroService(
    image: Image.asset(
      "assets/moon.png",
      fit: BoxFit.cover,
    ),
    updateText: "",
    itemName: "Horoscope",
  ),
  HamroService(
    image: Image.asset(
      "assets/astrology.png",
      fit: BoxFit.cover,
    ),
    updateText: "",
    itemName: "Kundali",
  ),
  HamroService(
    image: Image.asset(
      "assets/card.png",
      fit: BoxFit.cover,
    ),
    updateText: "",
    itemName: "E-card",
  ),
  HamroService(
    image: Image.asset(
      "assets/forex.png",
      fit: BoxFit.cover,
    ),
    updateText: "Today",
    itemName: "Forex",
  ),
  HamroService(
    image: Image.asset(
      "assets/gold.png",
      fit: BoxFit.cover,
    ),
    updateText: "Today",
    itemName: "Gold/Sliver",
  ),
  HamroService(
    image: Image.asset(
      "assets/sharebazar.png",
      fit: BoxFit.cover,
    ),
    updateText: "",
    itemName: "Share bazar",
  ),
  HamroService(
    image: Image.asset(
      "assets/blogs.png",
      fit: BoxFit.cover,
    ),
    updateText: "",
    itemName: "Blog",
  ),
  HamroService(
    image: Image.asset(
      "assets/tali.png",
      fit: BoxFit.cover,
    ),
    updateText: "",
    itemName: "Tali-Gali",
  ),
  HamroService(
    image: Image.asset(
      "assets/quiz.png",
      fit: BoxFit.cover,
    ),
    updateText: "",
    itemName: "Quiz",
  ),
  HamroService(
    image: Image.asset(
      "assets/notes.png",
      fit: BoxFit.cover,
    ),
    updateText: "",
    itemName: "Notes",
  ),
];
