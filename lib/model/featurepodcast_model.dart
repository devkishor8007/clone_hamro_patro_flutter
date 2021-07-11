import 'package:flutter/material.dart';

class FeaturepodcastModel {
  String title;
  Image fullimage;

  FeaturepodcastModel({this.title, this.fullimage});
}

List<FeaturepodcastModel> getFeaturepodcastModel = [
  FeaturepodcastModel(
    title: "ON AIR",
    fullimage: Image.network(
      'https://images.unsplash.com/photo-1559523275-98fb3c56faf6?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTZ8fHBvZGNhc3R8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
      fit: BoxFit.cover,
    ),
  ),
  FeaturepodcastModel(
    title: "Cow Corner",
    fullimage: Image.network(
      'https://images.unsplash.com/photo-1589903308904-1010c2294adc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80',
      fit: BoxFit.cover,
    ),
  ),
  FeaturepodcastModel(
    title: "Hamro Nepal - Hami Nepali",
    fullimage: Image.network(
      "https://images.unsplash.com/photo-1581547848545-a75a2634ba23?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80",
      fit: BoxFit.cover,
    ),
  ),
  FeaturepodcastModel(
    title: "The False Nine Poadcast",
    fullimage: Image.network(
      "https://images.unsplash.com/photo-1598965897289-4768a8799acc?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80",
      fit: BoxFit.cover,
    ),
  ),
  FeaturepodcastModel(
    title: "Kathaa Kar",
    fullimage: Image.network(
      "https://images.unsplash.com/photo-1583127812417-7c06e950a432?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80",
      fit: BoxFit.cover,
    ),
  ),
];
