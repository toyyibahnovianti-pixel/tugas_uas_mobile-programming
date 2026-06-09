import 'package:flutter/material.dart';
import 'word_detail_screen.dart';
import 'bookmarks_screen.dart';
import 'search_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WordRise',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFFAFAFA),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF0A225F)),
        useMaterial3: true,
        fontFamily: 'Inter',
      ),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const MainScreen()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF03225F),
              Color(0xFF072D75),
              Color(0xFF021135),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Pink Icon Box
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: const Color(0xFFF0CAD4),
                borderRadius: BorderRadius.circular(24),
              ),
              child: const Icon(
                Icons.menu_book,
                size: 55,
                color: Color(0xFF6B4550),
              ),
            ),
            const SizedBox(height: 32),
            // Title
            const Text(
              'WordRise',
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.w900,
                letterSpacing: 0.5,
              ),
            ),
            const SizedBox(height: 12),
            // Subtitle
            const Text(
              'English Vocabulary Builder',
              style: TextStyle(
                color: Color(0xFFB87882),
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 70),
            // Progress Bar
            Stack(
              alignment: Alignment.centerLeft,
              children: [
                // Track
                Container(
                  width: 220,
                  height: 4,
                  decoration: BoxDecoration(
                    color: const Color(0xFF021131),
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                // Progress
                Container(
                  width: 70,
                  height: 4,
                  decoration: BoxDecoration(
                    color: const Color(0xFFB87882),
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                // Dot
                Positioned(
                  left: 68,
                  child: Container(
                    width: 4,
                    height: 4,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 45),
            // Bottom Text
            const Text(
              'ELEVATE YOUR LANGUAGE',
              style: TextStyle(
                color: Color(0xFF5577A8),
                fontSize: 13,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomeScreen(),
    const SearchScreen(),
    const BookmarksScreen(),
    const QuizScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        decoration: BoxDecoration(
          color: const Color(0xFFF9FAFB),
          border: Border(top: BorderSide(color: Colors.grey.shade300, width: 1)),
        ),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNavItem(Icons.home_outlined, 'Dashboard', 0),
              _buildNavItem(Icons.search, 'Search', 1),
              _buildNavItem(Icons.bookmark_border, 'Bookmarks', 2),
              _buildNavItem(Icons.quiz_outlined, 'Quiz', 3), 
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, int index) {
    bool isSelected = _selectedIndex == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: isSelected
            ? BoxDecoration(
                color: const Color(0xFF0A225F), // Dark blue background for selected item
                borderRadius: BorderRadius.circular(24),
              )
            : const BoxDecoration(
                color: Colors.transparent,
              ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color: isSelected ? Colors.white : Colors.grey.shade700,
              size: 24,
            ),
            const SizedBox(height: 4),
            Text(
              label,
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.grey.shade700,
                fontSize: 12,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9FAFB), // Very light gray from the design background
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.black87),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Menu coming soon!')),
            );
          },
        ),
        title: const Text(
          'WordRise',
          style: TextStyle(
            color: Color(0xFF0A225F),
            fontWeight: FontWeight.w900,
            fontSize: 24,
            letterSpacing: 0.5,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.account_circle_outlined, color: Colors.black87, size: 28),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Profile feature coming soon!')),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Greeting text
            const Text(
              'Hello, Toyyibah Noviyanti!',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w800,
                color: Color(0xFF0A225F),
              ),
            ),
            const SizedBox(height: 6),
            const Text(
              'Ready to expand your lexicon today?',
              style: TextStyle(
                fontSize: 15,
                color: Color(0xFF4B5563),
              ),
            ),
            const SizedBox(height: 24),

            // Word of the Day Card
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: const Color(0xFFFFDDE4), // Soft pink background
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Word of the Day',
                    style: TextStyle(
                      color: Color(0xFF4A5568),
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Ephemeral',
                    style: TextStyle(
                      color: Color(0xFF0A225F),
                      fontSize: 32,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    '/əˈfem(ə)rəl/',
                    style: TextStyle(
                      color: Color(0xFF4A5568),
                      fontSize: 16,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Lasting for a very short time; transient\nor fleeting.',
                    style: TextStyle(
                      color: Color(0xFF0A225F),
                      fontSize: 15,
                      height: 1.4,
                    ),
                  ),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const WordDetailScreen()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF0A225F), // Dark blue matching theme
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          elevation: 0,
                        ),
                        child: const Text(
                          'Learn More',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.bookmark_border, color: Color(0xFF0A225F)),
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Word saved to bookmarks!')),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // Weekly Goal Section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Weekly Goal',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0A225F),
                  ),
                ),
                Text(
                  '42/50 words',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey.shade700,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            // Custom Progress bar
            LayoutBuilder(
              builder: (context, constraints) {
                final double progress = 42 / 50;
                final double width = constraints.maxWidth;
                return Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    // Background track
                    Container(
                      width: width,
                      height: 8,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    // Progress fill
                    Container(
                      width: width * progress,
                      height: 8,
                      decoration: BoxDecoration(
                        color: const Color(0xFF0A225F),
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    // Indicator dot
                    Positioned(
                      left: width * progress - 6,
                      child: Container(
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFDDE4), // Pink color matching theme
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 2), // Small white outline
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),

            const SizedBox(height: 32),
            
            // Learning Categories header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Learning Categories',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF111827),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SearchScreen()),
                    );
                  },
                  child: const Text(
                    'View All',
                    style: TextStyle(
                      color: Color(0xFF6B7AC4), // Text button color
                      fontWeight: FontWeight.w600,
                    ), 
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            
            // Learning Categories Grid
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              childAspectRatio: 1.05,
              children: [
                _buildCategoryCard('Business', '1,240 words', Icons.business_center_outlined),
                _buildCategoryCard('Travel', '850 words', Icons.flight),
                _buildCategoryCard('Academic', '2,100 words', Icons.school_outlined),
                _buildCategoryCard('Daily Life', '3,420 words', Icons.home_outlined),
              ],
            ),
            const SizedBox(height: 24),

            // Mastery Score Card
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
              decoration: BoxDecoration(
                color: const Color(0xFF0A225F), // Dark blue background
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Mastery Score',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Top 5% of learners this week',
                        style: TextStyle(
                          color: Colors.grey.shade300,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        '840',
                        style: TextStyle(
                          color: Color(0xFFFFDDE4), // Pink color for the score
                          fontSize: 32,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Text(
                        'Points',
                        style: TextStyle(
                          color: Colors.grey.shade300,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20), // Bottom padding
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryCard(String title, String subtitle, IconData icon) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: const Color(0xFF0A225F), size: 24),
          ),
          const Spacer(),
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xFF111827),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            subtitle,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey.shade600,
            ),
          ),
        ],
      ),
    );
  }
}

enum _OptionState { unselected, correct, incorrect }

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int _currentQuestionIndex = 0;
  int? _selectedOptionIndex;
  bool _isAnswerChecked = false;
  
  final List<Map<String, dynamic>> _questions = [
    {
      'word': 'REVENUE',
      'type': 'Noun',
      'category': 'Economics',
      'questionText': 'What is the meaning of\n',
      'subtitle': 'Choose the most accurate definition used in a business context.',
      'options': [
        'The total amount of money received from sales.',
        'The net profit after all expenses are paid.',
        'The income generated from normal business operations.',
        'The internal debt owed to shareholders.',
      ],
      'correctIndex': 2,
    },
    {
      'word': 'EPHEMERAL',
      'type': 'Adjective',
      'category': 'General',
      'questionText': 'What does it mean to be\n',
      'subtitle': 'Select the definition that best fits the word.',
      'options': [
        'Lasting for a very long time.',
        'Lasting for a very short time; transient.',
        'Having a glowing or luminous appearance.',
        'Extremely large or immense.',
      ],
      'correctIndex': 1,
    },
    {
      'word': 'NEGOTIATE',
      'type': 'Verb',
      'category': 'Business',
      'questionText': 'How would you define\n',
      'subtitle': 'Choose the correct action associated with this word.',
      'options': [
        'To force someone to agree with your terms.',
        'To officially sign a document without reading.',
        'To discuss something in order to reach an agreement.',
        'To ignore a problem and hope it resolves itself.',
      ],
      'correctIndex': 2,
    },
  ];

  void _checkAnswer(int index) {
    if (_isAnswerChecked) return;
    setState(() {
      _selectedOptionIndex = index;
      _isAnswerChecked = true;
    });
  }

  void _nextQuestion() {
    if (_currentQuestionIndex < _questions.length - 1) {
      setState(() {
        _currentQuestionIndex++;
        _selectedOptionIndex = null;
        _isAnswerChecked = false;
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Quiz Completed! Great job!')),
      );
      setState(() {
        _currentQuestionIndex = 0;
        _selectedOptionIndex = null;
        _isAnswerChecked = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final question = _questions[_currentQuestionIndex];
    final progress = (_currentQuestionIndex + 1) / _questions.length;
    final letters = ['A', 'B', 'C', 'D'];

    return Scaffold(
      backgroundColor: const Color(0xFFF9FAFB),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.black87),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Menu coming soon!')),
            );
          },
        ),
        title: const Text(
          'WordRise',
          style: TextStyle(
            color: Color(0xFF0A225F),
            fontWeight: FontWeight.w900,
            fontSize: 24,
            letterSpacing: 0.5,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.account_circle_outlined, color: Colors.black87, size: 28),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Profile feature coming soon!')),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // Progress Section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Question ${_currentQuestionIndex + 1} of ${_questions.length}',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF111827),
                    fontSize: 14,
                  ),
                ),
                Text(
                  '${(progress * 100).toInt()}% Complete',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0A225F),
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            LayoutBuilder(
              builder: (context, constraints) {
                final double width = constraints.maxWidth;
                return Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 8,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      width: width * progress,
                      height: 8,
                      decoration: BoxDecoration(
                        color: const Color(0xFF0A225F),
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 300),
                      left: (width * progress) - 6 < 0 ? 0 : (width * progress) - 6,
                      child: Container(
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFDDE4),
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 2),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
            const SizedBox(height: 32),
            
            // Question Card
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.04),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
                border: Border.all(color: Colors.grey.shade100),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFE4E8),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          question['type'] as String,
                          style: const TextStyle(
                            color: Color(0xFFC05763),
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          question['category'] as String,
                          style: TextStyle(
                            color: Colors.grey.shade700,
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  RichText(
                    text: TextSpan(
                      style: const TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w900,
                        color: Color(0xFF0A225F),
                        fontFamily: 'Inter',
                      ),
                      children: [
                        TextSpan(text: question['questionText'] as String),
                        TextSpan(
                          text: question['word'] as String,
                          style: const TextStyle(fontStyle: FontStyle.italic),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    question['subtitle'] as String,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Color(0xFF4B5563),
                      height: 1.4,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // Options
            ...List.generate(
              (question['options'] as List<String>).length,
              (index) {
                final text = (question['options'] as List<String>)[index];
                final isCorrect = index == question['correctIndex'];
                
                _OptionState state = _OptionState.unselected;
                if (_isAnswerChecked) {
                  if (index == _selectedOptionIndex) {
                    state = isCorrect ? _OptionState.correct : _OptionState.incorrect;
                  } else if (isCorrect) {
                     state = _OptionState.correct;
                  }
                }

                return GestureDetector(
                  onTap: () => _checkAnswer(index),
                  child: _buildOption(
                    letter: letters[index],
                    text: text,
                    state: state,
                  ),
                );
              },
            ),
            const SizedBox(height: 24),

            // Continue Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _isAnswerChecked ? _nextQuestion : null,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF0A225F),
                  foregroundColor: Colors.white,
                  disabledBackgroundColor: Colors.grey.shade300,
                  disabledForegroundColor: Colors.grey.shade600,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Continue to Next Question',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(width: 8),
                    Icon(Icons.arrow_forward, size: 20),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Skip Button
            if (!_isAnswerChecked)
              TextButton(
                onPressed: _nextQuestion,
                child: const Text(
                  'Skip Question',
                  style: TextStyle(
                    color: Color(0xFF111827),
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildOption({
    required String letter,
    required String text,
    required _OptionState state,
  }) {
    Color borderColor;
    Color bgColor;
    Widget leadingIcon;
    TextStyle textStyle;

    switch (state) {
      case _OptionState.unselected:
        borderColor = Colors.grey.shade300;
        bgColor = Colors.white;
        leadingIcon = Container(
          width: 24,
          height: 24,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.grey.shade400, width: 1.5),
          ),
          child: Text(
            letter,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade600,
            ),
          ),
        );
        textStyle = const TextStyle(
          color: Color(0xFF374151),
          fontSize: 14,
        );
        break;
      case _OptionState.incorrect:
        borderColor = const Color(0xFFFCA5A5);
        bgColor = const Color(0xFFFFF5F5);
        leadingIcon = Container(
          width: 24,
          height: 24,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: const Color(0xFFDC2626), width: 1.5),
          ),
          child: const Icon(
            Icons.close,
            size: 16,
            color: Color(0xFFDC2626),
          ),
        );
        textStyle = const TextStyle(
          color: Color(0xFFDC2626),
          fontSize: 14,
          fontWeight: FontWeight.w600,
        );
        break;
      case _OptionState.correct:
        borderColor = const Color(0xFF0A225F);
        bgColor = Colors.white;
        leadingIcon = Container(
          width: 24,
          height: 24,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFF0A225F),
          ),
          child: const Icon(
            Icons.check,
            size: 16,
            color: Colors.white,
          ),
        );
        textStyle = const TextStyle(
          color: Color(0xFF0A225F),
          fontSize: 14,
          fontWeight: FontWeight.bold,
        );
        break;
    }

    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: borderColor,
          width: state == _OptionState.correct ? 2.5 : 1.0,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          leadingIcon,
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              text,
              style: textStyle,
            ),
          ),
        ],
      ),
    );
  }
}
