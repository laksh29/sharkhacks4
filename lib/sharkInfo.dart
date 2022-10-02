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
  {
    "name": "Port Jackson Shark",
    "lat": 33.8462,
    "long": 151.2489,
    "title": "Port Jackson Shark"
  },
  {
    "name": "GOBLIN SHARK",
    "lat": 36.2048,
    "long": 138.2529,
    "title": "GOBLIN SHARK"
  },
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
    "Header": "Megalodon the largest sharks that ever lived",
    "info":
        "Dating back 20 million years ago, the megalodon (meaning large tooth) dominated the oceans and were a close relative of today's great white shark. Based on fossil evidence, they grew between a whopping 15 to 18 metres, liking weighing more than 25 tonnes – making the great white seem tiny in comparison (6 metres in length and 2.2 tonnes)!"
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
        "It's a good thing the tooth fairy doesn't have to dive underwater for sharks, as some species lose up to 35,000 teeth in their lifetime!"
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
  {
    "joke": "What do you get when you cross a shark with a snowman?",
    "ans": " Frostbite!"
  },
  {"joke": "Where do sharks go on holiday?", "ans": "Finland!"},
  {
    "joke": "What did the seal with a broken arm say to the shark?",
    "ans": " Do not consume if seal is broken!"
  },
  {
    "joke": "What happened to the shark when he got famous?",
    "ans": "He became a starfish!"
  },
  {
    "joke": "What is a shark who wins a MLH hackathon called ?",
    "ans": "Blahaj"
  },
  {
    "joke": "What do a shark and a computer have in common?",
    "ans": " They both have megabites!"
  },
  {
    "joke": "What do you call a fish that doesn't have any friends?",
    "ans": " A loan shark!"
  },
  {
    "joke": "How did the hammerhead shark do on his test?",
    "ans": " He nailed it!"
  },
  {
    "joke": "Who's the most famous shark writer?",
    "ans": " William Sharkspeare!"
  },
  {
    "joke": "What does a shark say when it sees something cool?",
    "ans": "That's jaw-some!"
  },
];

final List types = [
  {
    "type": "ZEBRA SHARK",
    "about":
        "small, gentle shark that can be kept in an aquarium with other fish. Tail is half its length."
  },
  {
    "type": "WOBBEGONG SHARK",
    "about":
        "about 8 feet long, but virtually harmless. lives in Australia and Pacific coastal reefs. lies on the bottom of the ocean waiting for fish to come near. filters food into its mouth with worm-like projections on its head. razor-like teeth. yellow, brown and gray camouflage colouring."
  },
  {
    "type": "WHITE TIP REEF SHARK",
    "about":
        "probably the most common shark encountered by divers and snorkelers on tropical reefs. about 3 feet long on average though it can be as big as 6 feet. dark grey with a white tip on the first and sometimes on the second dorsal fin as well as the tail lobes."
  },
  {
    "type": "WHALE SHARK",
    "about":
        "biggest shark and biggest fish. it isn't a whale (whales are mammals, not fish). grow to 45 feet long and 30,000 pounds, but average about 25 feet long. filters plankton from the water using 'gill rakers'."
  },
  {
    "type": "TIGER SHARK",
    "about":
        "second most attacks on people. eat anything!  (have been found with boat cushions and alarm clocks in their stomachs)."
  },
  {
    "type": "THRESHER SHARK",
    "about":
        "10 foot tail (1/2 as long as the body) which it uses to herd small fish"
  },
  {
    "type": "SPINY DOGFISH SHARK",
    "about":
        "the most abundant shark. 3 to 4 feet long. slightly poisonous spines (not very harmful to people). used by people for food and research."
  },
  {
    "type": "SANDTIGER SHARK",
    "about":
        "the sandtiger shark has very pointed teeth -- the better to eat you with (if you're a fish!). 10 feet long. predator (carnivore). nocturnal (hunts mostly at night). Babies:  The mother shark has two uterus.  Many sharks begin in the uterus, but the strongest one in each uterus eats all the others before they are born."
  },
  {
    "type": "PORT JACKSON SHARK",
    "about":
        "nocturnal. egg-laying. one of nine living species of bullheaded sharks. live near Port Jackson, Australia."
  },
  {
    "type": "NURSE SHARK",
    "about":
        "bottom dwelling shark. thin, fleshy, whisker-like organs on the lower jaw in front of the nostrils that they use to touch and taste. hunt at night, sleep by day. common at aquariums."
  },
  {
    "type": "MAKO SHARK",
    "about":
        "fastest swimmer (43 miles per hour). known to leap out of the water (sometimes into boats)."
  },
  {
    "type": "HAMMERHEAD SHARK",
    "about":
        "unlikely to attack people, but considered dangerous due to its predatory nature and its size (10 to 20 feet). eyes and nostrils are far apart, giving it a 'hammerhead' appearance and allowing the shark to extend the range of its senses. their favorite food is stingrays.  Luckily for the sharks, they're immune to the stingray's venom."
  },
  {
    "type": "GREAT WHITE SHARK",
    "about":
        "more attacks on people than any other type. averages 12 feet long and 3,000 pounds. unlike most sharks, it can lift its head out of the water."
  },
  {
    "type": "GOBLIN SHARK",
    "about":
        "very uncommon and likely the strangest looking shark (rarely seen the photos were actually taken in 1909). pale, pinkish grey skin with a long pointed snout (it looks a bit like a sword on top of its head). lives in very deep water. found off the coast of Japan in 1898... until that time it was believed to have been extinct for 100 million years."
  },
  {
    "type": "COOKIECUTTER SHARK",
    "about":
        "a small shark (less than 2 feet long). eats perfecty round chunks out of living whales and dolphins by clamping its teeth extremely sharp teeth onto them."
  },
  {
    "type": "BULL SHARK",
    "about":
        "third most dangerous to people. can swim in salt and fresh water and have even been found in the Mississipi river."
  },
  {
    "type": "BLUE SHARK",
    "about":
        "about 12 feet long. sleek, tapered body. among the fastest swimming sharks and can even leap out of the water. diet consists mostly of squid, but it will eat almost anything. considered dangerous - have attacked people."
  },
  {
    "type": "BLACKTIP SHARK (Carcharhinus limbatus)",
    "about":
        "Blacktip Sharks are different than Blacktip Reef Sharks (this confused me for quite some time)! They are usually about 5 feet long although the longest on record was about 9 feet long. during breeding season every February and March, around 10,000 congregate along the Florida coastline.  It's like spring-break vacation for sharks!"
  },
  {
    "type": "BLACKTIP REEF SHARK (Carcharhinus melanopterus)",
    "about":
        "does well in captivity so is often found in aquariums (which is why we have so many photos of them). grey with a black tip on its fins and white streak on its side."
  },
  {
    "type": "BASKING SHARK",
    "about":
        "second largest shark (about 30 feet long and 8,000 pounds). filters plankton from the water using 'gill rakers'."
  },
  {
    "type": "ANGEL SHARK",
    "about":
        "flat body like a stingray -- you can tell the shark is not a ray because the pectoral fins are not attached to the head. They bury themselves in the sand or mud with only the eyes and part of the top of the body exposed. They are bottom feeders, eating crustaceans like clams and mollusks and fish that are swimming close to the ocean floor."
  },
];
