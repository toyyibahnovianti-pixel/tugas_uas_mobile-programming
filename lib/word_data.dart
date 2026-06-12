class WordData {
  final String word;
  final String type;
  final String pronunciation;
  final String definition;
  final String exampleStart;
  final String exampleHighlight;
  final String exampleEnd;
  final String synonyms;
  final String imageUrl;

  const WordData({
    required this.word,
    required this.type,
    required this.pronunciation,
    required this.definition,
    required this.exampleStart,
    required this.exampleHighlight,
    required this.exampleEnd,
    required this.synonyms,
    required this.imageUrl,
  });

  static const List<WordData> allWords = [
    WordData(
      word: 'Negotiate',
      type: 'Verb',
      pronunciation: '/nəˈɡōSHēˌāt/',
      definition: 'To discuss something in order to reach an agreement, especially in business or politics.',
      exampleStart: '"The two companies are still ',
      exampleHighlight: 'negotiating',
      exampleEnd: ' the final terms of the merger, aiming for a resolution by Friday."',
      synonyms: 'Mediate,\nParley,\nArbitrate',
      imageUrl: 'https://images.unsplash.com/photo-1552664730-d307ca884978?ixlib=rb-4.0.3&auto=format&fit=crop&w=400&q=80',
    ),
    WordData(
      word: 'Revenue',
      type: 'Noun',
      pronunciation: '/ˈrevəˌn(y)o͞o/',
      definition: 'The income generated from normal business operations and other business activities.',
      exampleStart: '"The company\'s quarterly ',
      exampleHighlight: 'revenue',
      exampleEnd: ' significantly exceeded analysts\' expectations for this year."',
      synonyms: 'Income,\nEarnings,\nProfits',
      imageUrl: 'https://images.unsplash.com/photo-1554224155-8d04cb21cd6c?ixlib=rb-4.0.3&auto=format&fit=crop&w=400&q=80',
    ),
    WordData(
      word: 'Ephemeral',
      type: 'Adjective',
      pronunciation: '/əˈfem(ə)rəl/',
      definition: 'Lasting for a very short time; transient or fleeting.',
      exampleStart: '"The beauty of the cherry blossoms is ',
      exampleHighlight: 'ephemeral',
      exampleEnd: ', lasting only a few weeks each spring."',
      synonyms: 'Transient,\nFleeting,\nShort-lived',
      imageUrl: 'https://images.unsplash.com/photo-1541701494587-cb58502866ab?ixlib=rb-4.0.3&auto=format&fit=crop&w=400&q=80',
    ),
    WordData(
      word: 'Arbitrate',
      type: 'Verb',
      pronunciation: '/ˈärbəˌtrāt/',
      definition: 'To reach an authoritative judgment or settlement.',
      exampleStart: '"An independent body was called in to ',
      exampleHighlight: 'arbitrate',
      exampleEnd: ' between the management and the union."',
      synonyms: 'Adjudicate,\nMediate,\nResolve',
      imageUrl: 'https://images.unsplash.com/photo-1589829085413-56de8ae18c73?ixlib=rb-4.0.3&auto=format&fit=crop&w=400&q=80',
    ),
    WordData(
      word: 'Resilience',
      type: 'Noun',
      pronunciation: '/rəˈzilyəns/',
      definition: 'The capacity to recover quickly from difficulties; toughness.',
      exampleStart: '"Her ',
      exampleHighlight: 'resilience',
      exampleEnd: ' in the face of adversity inspired the entire team."',
      synonyms: 'Flexibility,\nToughness,\nEndurance',
      imageUrl: 'https://images.unsplash.com/photo-1519681393784-d120267933ba?ixlib=rb-4.0.3&auto=format&fit=crop&w=400&q=80',
    ),
    WordData(
      word: 'Innate',
      type: 'Adjective',
      pronunciation: '/iˈnāt/',
      definition: 'Inborn; natural.',
      exampleStart: '"He has an ',
      exampleHighlight: 'innate',
      exampleEnd: ' talent for playing the piano without any formal training."',
      synonyms: 'Inherent,\nIntrinsic,\nNatural',
      imageUrl: 'https://images.unsplash.com/photo-1514320291840-2e0a9bf2a9ae?ixlib=rb-4.0.3&auto=format&fit=crop&w=400&q=80',
    ),
    WordData(
      word: 'Pragmatic',
      type: 'Adjective',
      pronunciation: '/praɡˈmadik/',
      definition: 'Dealing with things sensibly and realistically in a way that is based on practical rather than theoretical considerations.',
      exampleStart: '"We need a more ',
      exampleHighlight: 'pragmatic',
      exampleEnd: ' approach to solving this logistical issue."',
      synonyms: 'Practical,\nMatter-of-fact,\nSensible',
      imageUrl: 'https://images.unsplash.com/photo-1454165804606-c3d57bc86b40?ixlib=rb-4.0.3&auto=format&fit=crop&w=400&q=80',
    ),
    WordData(
      word: 'Mitigate',
      type: 'Verb',
      pronunciation: '/ˈmidəˌɡāt/',
      definition: 'Make less severe, serious, or painful.',
      exampleStart: '"The doctor gave him medication to ',
      exampleHighlight: 'mitigate',
      exampleEnd: ' the pain after the surgery."',
      synonyms: 'Alleviate,\nReduce,\nDiminish',
      imageUrl: 'https://images.unsplash.com/photo-1584308666744-24d5c474f2ae?ixlib=rb-4.0.3&auto=format&fit=crop&w=400&q=80',
    ),
    WordData(
      word: 'Ubiquitous',
      type: 'Adjective',
      pronunciation: '/yo͞oˈbikwədəs/',
      definition: 'Present, appearing, or found everywhere.',
      exampleStart: '"Smartphones have become ',
      exampleHighlight: 'ubiquitous',
      exampleEnd: ' in modern society."',
      synonyms: 'Omnipresent,\nEverywhere,\nPervasive',
      imageUrl: 'https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?ixlib=rb-4.0.3&auto=format&fit=crop&w=400&q=80',
    ),
    WordData(
      word: 'Lucrative',
      type: 'Adjective',
      pronunciation: '/ˈlo͞okrədiv/',
      definition: 'Producing a great deal of profit.',
      exampleStart: '"She decided to leave her corporate job for a highly ',
      exampleHighlight: 'lucrative',
      exampleEnd: ' career in real estate."',
      synonyms: 'Profitable,\nRewarding,\nFruitful',
      imageUrl: 'https://images.unsplash.com/photo-1600596542815-ffad4c1539a9?ixlib=rb-4.0.3&auto=format&fit=crop&w=400&q=80',
    ),
  ];

  static WordData getWordOfTheDay() {
    final now = DateTime.now();
    // Use the days since epoch to ensure it changes every 24 hours 
    // and stays the same for that specific day.
    final dayIndex = (now.millisecondsSinceEpoch / (1000 * 60 * 60 * 24)).floor();
    return allWords[dayIndex % allWords.length];
  }
}
