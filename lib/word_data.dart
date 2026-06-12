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
  ];

  static WordData getWordOfTheDay() {
    final now = DateTime.now();
    // Use the days since epoch to ensure it changes every 24 hours 
    // and stays the same for that specific day.
    final dayIndex = (now.millisecondsSinceEpoch / (1000 * 60 * 60 * 24)).floor();
    return allWords[dayIndex % allWords.length];
  }
}
