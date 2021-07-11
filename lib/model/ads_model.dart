import 'package:flutter/material.dart';

class AdsMaker {
  String title;
  Image fullimage;

  AdsMaker({this.title, this.fullimage});
}

List<AdsMaker> getAdsMaker = [
  AdsMaker(
    title: "Launch new Feature",
    fullimage: Image.network(
      'https://images.unsplash.com/photo-1535303311164-664fc9ec6532?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80',
      fit: BoxFit.cover,
    ),
  ),
  AdsMaker(
    title: "Use of Tick-Tock",
    fullimage: Image.network(
      'https://images.unsplash.com/photo-1611605698323-b1e99cfd37ea?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=667&q=80',
      fit: BoxFit.cover,
    ),
  ),
  AdsMaker(
    title: "Time Spend",
    fullimage: Image.network(
      'https://images.unsplash.com/photo-1611162617474-5b21e879e113?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OTB8fGFkc3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
      fit: BoxFit.cover,
    ),
  ),
  AdsMaker(
    title: "Earn More as You can",
    fullimage: Image.network(
      'https://images.unsplash.com/photo-1611162616475-46b635cb6868?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=667&q=80',
      fit: BoxFit.cover,
    ),
  ),
];
