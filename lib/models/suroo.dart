class Suroo {
  const Suroo({
    required this.text,
    required this.images,
    required this.jooptor,
  });

  final String text;
  final String images;
  final List<Joop> jooptor;
}

class Joop {
  const Joop({
    required this.text,
    this.isTrue = false,
  });

  final String text;
  final bool isTrue;
}

List<Suroo> asiaQuestion = [
  asia1,
  asia2,
  asia3,
  asia4,
  asia5,
  asia6,
  asia7,
  asia8,
  asia9,
  asia10
];

const asia1 = Suroo(
  text: 'Ashhabat',
  images: 'assets/images/asia/ashhabad.jpg',
  jooptor: [
    Joop(text: 'Korea'),
    Joop(text: 'Turkmenistan', isTrue: true),
    Joop(text: 'Singapur'),
    Joop(text: 'Kazakstan'),
  ],
);

const asia2 = Suroo(
  text: 'Astana',
  images: 'assets/images/asia/astana.jpg',
  jooptor: [
    Joop(text: 'Kyrgyzstan'),
    Joop(text: 'Tajikistan'),
    Joop(text: 'Usbekistan'),
    Joop(text: 'Kazakstan', isTrue: true),
  ],
);

const asia3 = Suroo(
  text: 'Baku',
  images: 'assets/images/asia/azerbaijan.jpg',
  jooptor: [
    Joop(text: 'Azerbaijan', isTrue: true),
    Joop(text: 'Siria'),
    Joop(text: 'Bangladesh'),
    Joop(text: 'Laos'),
  ],
);

const asia4 = Suroo(
  text: 'Bishkek',
  images: 'assets/images/asia/bishkek.jpg',
  jooptor: [
    Joop(text: 'Kyrgyzstan', isTrue: true),
    Joop(text: 'China'),
    Joop(text: 'Turkey'),
    Joop(text: 'USA'),
  ],
);

const asia5 = Suroo(
  text: 'Dushanbe',
  images: 'assets/images/asia/dushanbe.jpg',
  jooptor: [
    Joop(text: 'Mexico'),
    Joop(text: 'Tajikistan', isTrue: true),
    Joop(text: 'Tailand'),
    Joop(text: 'Kazakstan'),
  ],
);

const asia6 = Suroo(
  text: 'Erevan',
  images: 'assets/images/asia/erevan.jpg',
  jooptor: [
    Joop(text: 'Sudan'),
    Joop(text: 'Armenia', isTrue: true),
    Joop(text: 'Tajikistan'),
    Joop(text: 'Nepal'),
  ],
);

const asia7 = Suroo(
  text: 'Moscow',
  images: 'assets/images/asia/moscow.jpg',
  jooptor: [
    Joop(text: 'Urugvai'),
    Joop(text: 'Ekvator'),
    Joop(text: 'Usbekistan'),
    Joop(text: 'Russia', isTrue: true),
  ],
);

const asia8 = Suroo(
  text: 'Pekin',
  images: 'assets/images/asia/pekin.jpg',
  jooptor: [
    Joop(text: 'Kazakstan'),
    Joop(text: 'China', isTrue: true),
    Joop(text: 'Russia'),
    Joop(text: 'Mongolia'),
  ],
);

const asia9 = Suroo(
  text: 'Tashkent',
  images: 'assets/images/asia/tashkent.jpg',
  jooptor: [
    Joop(text: 'Izrail'),
    Joop(text: 'Iran'),
    Joop(text: 'Usbekistan', isTrue: true),
    Joop(text: 'Irak'),
  ],
);

const asia10 = Suroo(
  text: 'Ulan-Bator',
  images: 'assets/images/asia/ulanbator.jpg',
  jooptor: [
    Joop(text: 'Mongolia', isTrue: true),
    Joop(text: 'Korea'),
    Joop(text: 'Japonia'),
    Joop(text: 'Siria'),
  ],
);

List<Suroo> europeQuestion = [
  europe1,
  europe2,
  europe3,
  europe4,
  europe5,
  europe6,
  europe7,
  europe8,
  europe9,
  europe10
];

const europe1 = Suroo(
  text: 'Bern',
  images: 'assets/images/europe/bern_shwit.jpg',
  jooptor: [
    Joop(text: 'Anglia'),
    Joop(text: 'Horvatia'),
    Joop(text: 'Shwitzerland', isTrue: true),
    Joop(text: 'Moldova'),
  ],
);

const europe2 = Suroo(
  text: 'Brussel',
  images: 'assets/images/europe/brussel_belgia.jpg',
  jooptor: [
    Joop(text: 'Norvegai'),
    Joop(text: 'Shatlandia'),
    Joop(text: 'Belgia', isTrue: true),
    Joop(text: 'Russia'),
  ],
);

const europe3 = Suroo(
  text: 'Vengria',
  images: 'assets/images/europe/budapest.jpg',
  jooptor: [
    Joop(text: 'Austria'),
    Joop(text: 'Budapest', isTrue: true),
    Joop(text: 'Turkey'),
    Joop(text: 'Moldova'),
  ],
);

const europe4 = Suroo(
  text: 'London',
  images: 'assets/images/europe/london.jpg',
  jooptor: [
    Joop(text: 'Anglia', isTrue: true),
    Joop(text: 'Horvatia'),
    Joop(text: 'Shwitzerland'),
    Joop(text: 'Usa'),
  ],
);

const europe5 = Suroo(
  text: 'Madrid',
  images: 'assets/images/europe/madrid.jpg',
  jooptor: [
    Joop(text: 'Anglia'),
    Joop(text: 'Ispania', isTrue: true),
    Joop(text: 'Shwitzerland'),
    Joop(text: 'Moldova'),
  ],
);

const europe6 = Suroo(
  text: 'Paris',
  images: 'assets/images/europe/paris.jpg',
  jooptor: [
    Joop(text: 'Dania'),
    Joop(text: 'Horvatia'),
    Joop(text: 'Anglia'),
    Joop(text: 'Paris', isTrue: true),
  ],
);

const europe7 = Suroo(
  text: 'Praga',
  images: 'assets/images/europe/praga_cheh.jpg',
  jooptor: [
    Joop(text: 'Chehia', isTrue: true),
    Joop(text: 'Moldovia'),
    Joop(text: 'Portugalia'),
    Joop(text: 'Ispania'),
  ],
);

const europe8 = Suroo(
  text: 'Reykjavik',
  images: 'assets/images/europe/reykjavik_islandia.jpg',
  jooptor: [
    Joop(text: 'Uels'),
    Joop(text: 'Islandia', isTrue: true),
    Joop(text: 'Irlandia'),
    Joop(text: 'Litva'),
  ],
);

const europe9 = Suroo(
  text: 'Riga',
  images: 'assets/images/europe/riga_latvia.jpg',
  jooptor: [
    Joop(text: 'Latvia', isTrue: true),
    Joop(text: 'Litva'),
    Joop(text: 'Estonia'),
    Joop(text: 'Ukraina'),
  ],
);

const europe10 = Suroo(
  text: 'Tallin',
  images: 'assets/images/europe/tallin_estonia.jpg',
  jooptor: [
    Joop(text: 'Tallin', isTrue: true),
    Joop(text: 'Greece'),
    Joop(text: 'Portugalia'),
    Joop(text: 'Moldova'),
  ],
);
