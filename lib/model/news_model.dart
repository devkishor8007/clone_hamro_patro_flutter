import 'package:flutter/material.dart';

class NewsModel {
  String title;
  String postBy;
  String subtitle;
  Image fullimage;

  Image logo;
  NewsModel({
    this.title,
    this.subtitle,
    this.postBy,
    this.fullimage,
    this.logo,
  });
}

List<NewsModel> getNewsModel = [
  NewsModel(
    title: "महामारीका बीचमा एक वर्षमै थपिए ५८ लाख इन्टरनेट प्रयोग...",
    subtitle:
        "बजारमा केबल र फाइबर इन्टरनेट सेवा दिने ४० वटा कम्पनी छन् ताररहित र....",
    postBy: "Online Khabar",
    fullimage: Image.network(
      'https://images.unsplash.com/photo-1486312338219-ce68d2c6f44d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=752&q=80',
      fit: BoxFit.cover,
    ),
    logo: Image.network(
      'https://image.flaticon.com/icons/png/512/3600/3600937.png',
    ),
  ),
  NewsModel(
    title: "सरकार र पार्टीविरुद्ध घेराबन्दी गरिएको भन्दै युवा संघले आज ...",
    subtitle:
        "युवा संघले एक सुचना जारी गर्दै विपक्षी गठबन्धनको घेराबन्दी र 'असंवैधानिक ....",
    postBy: "News 24",
    fullimage: Image.network(
      'https://images.unsplash.com/photo-1494172892981-ce47ca685eea?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=751&q=80',
      fit: BoxFit.cover,
    ),
    logo: Image.network(
      'https://image.flaticon.com/icons/png/512/3600/3600934.png',
    ),
  ),
  NewsModel(
    title: "भूपूहरूले कब्जा गरे मन्त्री क्वार्टर !",
    subtitle:
        "ललितपुरको पुल्चोकमा मन्त्रीहरु बस्ने सरकारी क्वार्टरहरू छन् यति बे...",
    postBy: "Ratopati",
    fullimage: Image.network(
      'https://images.unsplash.com/photo-1621619832921-7346f4f45e3a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80',
      fit: BoxFit.cover,
    ),
    logo: Image.network(
      'https://image.flaticon.com/icons/png/512/3600/3600945.png',
    ),
  ),
  NewsModel(
    title: "अमेरिकी राजदूतले भने अमेरिका सदैव नेपालीहरूको ...",
    subtitle:
        "काठमाडौं । अमेरिकाले नेपाललाई केही समयभित्रै कोभिड १९ विरुद्धको ....",
    postBy: "Dekhapadhi",
    fullimage: Image.network(
      'https://images.unsplash.com/photo-1587309492480-eae85a198e08?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTJ8fGhlbHB8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
      fit: BoxFit.cover,
    ),
    logo: Image.network(
      'https://image.flaticon.com/icons/png/512/3600/3600914.png',
    ),
  ),
  NewsModel(
    title: "गीतालाई दुःख छ, दुःखका दर्जनौँ कारण छन् !",
    subtitle:
        "गीता १४ वर्षकै उमेरमा बेचिइन्' । १९ वर्षमा दुई सन्तानकी आमा हुन केहीअ.....",
    postBy: "ekagaj",
    fullimage: Image.network(
      'https://images.unsplash.com/photo-1554307748-2d95c72355f5?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=754&q=80',
      fit: BoxFit.cover,
    ),
    logo: Image.network(
      'https://image.flaticon.com/icons/png/512/3600/3600915.png',
    ),
  ),
  NewsModel(
    title: "आफ्नै कामप्रति केही सन्तुष्टि, केही असन्तुष्टि !",
    subtitle:
        "व्यक्तिले सार्वजनिक रूपमा गरेका काम पनि सधैं पूर्ण हँदैनन् । खराब निय...",
    postBy: "Baahrakhari",
    fullimage: Image.network(
      'https://images.unsplash.com/photo-1617736777566-450e793153d5?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTh8fGZsaW18ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
      fit: BoxFit.cover,
    ),
    logo: Image.network(
      'https://image.flaticon.com/icons/png/512/491/491868.png',
    ),
  ),
];
