import 'package:flutter/material.dart';

class BookmarksScreen extends StatelessWidget {
  const BookmarksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F9FB),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Color(0xFF0A225F)),
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
            fontSize: 22,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.account_circle_outlined, color: Color(0xFF0A225F)),
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
            // Header Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                const Text(
                  'Saved Words',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0A225F),
                  ),
                ),
                Text(
                  '12 items',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              'Continue your editorial journey with your curated vocabulary.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey.shade600,
                height: 1.4,
              ),
            ),
            const SizedBox(height: 24),
            // Search Bar
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'Search your bookmarks...',
                  hintStyle: TextStyle(color: Colors.grey),
                  prefixIcon: Icon(Icons.search, color: Colors.grey),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(vertical: 16),
                ),
              ),
            ),
            const SizedBox(height: 24),
            // Section Divider
            Row(
              children: [
                const Text(
                  'RECENTLY SAVED',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                    color: Color(0xFF111827),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Divider(
                    color: Colors.grey.shade300,
                    thickness: 1,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            // Word List - Sekarang menyertakan context sebagai parameter
            _buildSavedWordCard(
              context,
              word: 'Ephemeral',
              type: 'Adjective',
              definition: 'Lasting for a very short time; fleeting or transient.',
            ),
            _buildSavedWordCard(
              context,
              word: 'Sagacious',
              type: 'Adjective',
              definition: 'Having or showing keen mental discernment and good judgment.',
            ),
            _buildSavedWordCard(
              context,
              word: 'Pernicious',
              type: 'Adjective',
              definition: 'Having a harmful effect, especially in a gradual or subtle way.',
            ),
            const SizedBox(height: 12),
            // Offline Access Card
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xFF051747), // Dark blue
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.1),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.check_circle_outline,
                      color: Colors.white,
                      size: 28,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Offline Access Active',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'All 12 words are saved to your device for studying without internet connection.',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.7),
                            fontSize: 12,
                            height: 1.4,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }

  // Ditambahkan BuildContext context pada parameter fungsi ini
  Widget _buildSavedWordCard(
    BuildContext context, {
    required String word,
    required String type,
    required String definition,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.02),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    word,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF0A225F),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF8D7DA),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      type,
                      style: const TextStyle(
                        color: Color(0xFF8B4B59),
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Word removed from bookmarks!')),
                  );
                },
                icon: const Icon(Icons.delete_outline, color: Colors.grey),
                constraints: const BoxConstraints(),
                padding: EdgeInsets.zero,
              )
            ],
          ),
          const SizedBox(height: 12),
          Text(
            definition,
            style: const TextStyle(
              fontSize: 16,
              color: Color(0xFF4B5563),
              height: 1.4,
            ),
          ),
        ],
      ),
    );
  }
}