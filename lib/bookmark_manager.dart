import 'package:flutter/material.dart';
import 'word_data.dart';

class BookmarkManager extends ChangeNotifier {
  static final BookmarkManager instance = BookmarkManager._internal();
  
  BookmarkManager._internal();

  final List<WordData> _bookmarkedWords = [];
  
  List<WordData> get bookmarkedWords => List.unmodifiable(_bookmarkedWords);

  bool isBookmarked(String word) {
    return _bookmarkedWords.any((w) => w.word == word);
  }

  void toggleBookmark(WordData word) {
    if (isBookmarked(word.word)) {
      _bookmarkedWords.removeWhere((w) => w.word == word.word);
    } else {
      _bookmarkedWords.add(word);
    }
    notifyListeners();
  }

  void removeBookmarkByWord(String word) {
    _bookmarkedWords.removeWhere((w) => w.word == word);
    notifyListeners();
  }
}
