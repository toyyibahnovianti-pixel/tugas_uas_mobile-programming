import 'package:flutter/material.dart';
import 'word_detail_screen.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
          'Search',
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            // Search Bar
            Container(
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
                border: Border.all(color: Colors.grey.shade200),
              ),
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  hintText: 'Search for words, phrases...',
                  hintStyle: TextStyle(color: Colors.grey.shade400, fontSize: 15),
                  prefixIcon: const Icon(Icons.search, color: Color(0xFF0A225F)),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.tune, color: Color(0xFF6B7280)),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Filter options coming soon!')),
                      );
                    },
                  ),
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.symmetric(vertical: 18),
                ),
              ),
            ),
            const SizedBox(height: 32),
            // Recent Searches Header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Recent Searches',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF111827),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Recent searches cleared!')),
                    );
                  },
                  child: const Text(
                    'Clear All',
                    style: TextStyle(
                      color: Color(0xFFC05763), // Dark red/pink
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            // Suggestion list
            Expanded(
              child: ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  _buildSearchResultCard(context, 'Negotiate', 'Verb', '/nəˈɡōSHēˌāt/'),
                  _buildSearchResultCard(context, 'Revenue', 'Noun', '/ˈrevəˌn(y)o͞o/'),
                  _buildSearchResultCard(context, 'Ephemeral', 'Adjective', '/əˈfem(ə)rəl/'),
                  _buildSearchResultCard(context, 'Arbitrate', 'Verb', '/ˈärbəˌtrāt/'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchResultCard(BuildContext context, String word, String type, String pronunciation) {
    return GestureDetector(
      onTap: () {
        // Just for demo, we link to the same WordDetailScreen which currently shows "Negotiate"
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const WordDetailScreen()),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.grey.shade200),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  word,
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0A225F),
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                      decoration: BoxDecoration(
                        color: type == 'Verb' 
                            ? const Color(0xFFFFDDE4) 
                            : (type == 'Noun' ? Colors.grey.shade200 : const Color(0xFFE2E4F6)),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        type,
                        style: TextStyle(
                          color: type == 'Verb' 
                              ? const Color(0xFF8B4B59) 
                              : (type == 'Noun' ? Colors.grey.shade700 : const Color(0xFF5577A8)),
                          fontSize: 11,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      pronunciation,
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey.shade500,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16),
          ],
        ),
      ),
    );
  }
}
