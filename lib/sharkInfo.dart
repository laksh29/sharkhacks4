import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

Marker buildMarker(name, lat, long, title) {
  return Marker(
      markerId: MarkerId(name),
      position: LatLng(lat, long),
      infoWindow: InfoWindow(title: title),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan));
}

final List sharkInfo = [
  {"name": "Shark 1", "lat": 22.900000, "long": 88.389999, "title": "shark 1"},
  {"name": "Shark 2", "lat": 27.40364, "long": 83.031971, "title": "shark 2"},
  {"name": "Shark 3", "lat": 21.012094, "long": 84.040789, "title": "shark 3"},
  {"name": "Shark 4", "lat": 26.474667, "long": 92.534751, "title": "shark 4"},

  {
    "name": "Donsol Whale Shark",
    "lat": 12.923135,
    "long": 123.577999,
    "title": "Donsol Whale Shark"
  },
// {"name": "Shark 5", "lat": 17.3850, "long": 78.4867, "title": "shark 5"},
// {"name": "Shark 5", "lat": 17.3850, "long": 78.4867, "title": "shark 5"},
// {"name": "Shark 5", "lat": 17.3850, "long": 78.4867, "title": "shark 5"},
// {"name": "Shark 5", "lat": 17.3850, "long": 78.4867, "title": "shark 5"},
];

SizedBox buildSizedHeight(height) => SizedBox(height: height);

final List facts = [
  {
    "Header": "Sharks are older than trees",
    "info":
        "Sharks have existed for more than 450 million years, whereas the earliest tree, lived around 350 million years ago. Not only are sharks older than trees, but they are also one of the only animals to have survived four of the five mass extinctions: now that's impressive."
  },
  {
    "Header": "Megalodon were the largest sharks that ever lived",
    "info":
        "Dating back 20 million years ago, the megalodon (meaning large tooth) dominated the oceans and were a close relative of today’s great white shark. Based on fossil evidence, they grew between a whopping 15 to 18 metres, liking weighing more than 25 tonnes – making the great white seem tiny in comparison (6 metres in length and 2.2 tonnes)!"
  },
  {
    "Header": " Some sharks glow in the dark",
    "info":
        "In 2014 scientists discovered that the elusive chain catshark and swell shark communicate with each other by releasing glowing light from their skin in patterns that are unique to each species and even sex. Invisible to the naked eye, the fluorescent green spots are only visible when a blue filter light is shined on them. In 2019 a team of researchers discovered how these sharks create their glowing effects: 'molecules inside their scales transform how shark skin interacts with light, bringing in blue photons, and sending out green.'"
  },
  {
    "Header": "Sharks are effectively colour-blind",
    "info":
        "Even though sharks have great vision, scientists believe that sharks are most likely colour-blind. If you want to find out the science behind this, The Conversation’s article is a great place to start."
  },
  {
    "Header": "Sharks have their own personalities",
    "info":
        "In 2016 researchers at Macquarie University discovered that Port Jackson sharks have their own individual personalities, just like us. The study showed that each shark has their own way of responding to stress and unfamiliar environments, with some more bold than others."
  },
  {
    "Header": "Sharks continually shed and replace their teeth",
    "info":
        "It's a good thing the tooth fairy doesn’t have to dive underwater for sharks, as some species lose up to 35,000 teeth in their lifetime!"
  },
  {
    "Header": "Over 400 species exist worldwide",
    "info":
        "Just like us, sharks come in all different shapes and sizes! On one end you have the whale shark which can be up to 12 metres in length, and on the other you have the dwarf lantern shark which can fit in your hand. Around 180 species inhabit Australian seas."
  },
  {
    "Header": "Sharks are important to reef conservation",
    "info":
        "Research from 2017 revealed that sharks play a key role in regulating the health of coral reefs. During a four-month expedition from Cairns to Broome, a team of scientists from the University of Western Australia found where they were healthier reefs, there were also a high number of sharks present. As sharks control the mid-sized predators, it allows small reef fish to thrive and take care of the actual corals."
  },
  {
    "Header": "Sharks affected by full moon",
    "info":
        "Researchers found in a study of 40 grey reef sharks that their diving behaviour is influenced by the moon, water temperature and time of day. It seems that sharks descended to greater depths and used a wider range of depths, around the time of the full moon."
  },
  {
    "Header": "Hammerhead sharks have binocular vision",
    "info":
        "At last their weird and wacky head makes sense – it gives them better vision! The T-shaped hammerhead allows the sharks to see 360 degrees, having 'outstanding forward stereo vision and depth perception.' "
  },
];

final List jokes = [
  {"joke": "What do you get when you cross a shark with a snowman? Frostbite!"},
  {"joke": "Where do sharks go on holiday? Finland!"},
  {
    "joke":
        "What did the seal with a broken arm say to the shark? Do not consume if seal is broken!"
  },
  {
    "joke":
        "What happened to the shark when he got famous? He became a starfish!"
  },
  {"joke": "What is a shark who wins a MLH hackathon called ? Blahaj"},
  {
    "joke":
        "What do a shark and a computer have in common? They both have megabites!"
  },
  {
    "joke":
        "What do you call a fish that doesn't have any friends? A loan shark!"
  },
  {"joke": "How did the hammerhead shark do on his test? He nailed it!"},
  {"joke": "Who's the most famous shark writer? William Sharkspeare!"},
  {
    "joke":
        "What does a shark say when it sees something cool? That's jaw-some!"
  },
];
