import 'package:flutter/material.dart';

class WordDetailScreen extends StatelessWidget {
  const WordDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9FAFB), // Changed slightly closer to white/gray background
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF0A225F)),
          onPressed: () => Navigator.pop(context),
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
            icon: const Icon(Icons.account_circle_outlined, color: Color(0xFF0A225F), size: 28),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Profile feature coming soon!')),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title and Audio Icon Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Negotiate',
                  style: TextStyle(
                    fontSize: 48, // Made larger to match the image accurately
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF0A225F), 
                    letterSpacing: -1,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: const BoxDecoration(
                    color: Color(0xFFE0E5FF), // Slightly purple-blue to match image exactly
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.volume_up_outlined, color: Color(0xFF0A225F), size: 28),
                ),
              ],
            ),
            const SizedBox(height: 8),
            // Tag and pronunciation
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFDDE4), // Pink color matching the image
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const Text(
                    'Verb',
                    style: TextStyle(
                      color: Color(0xFF8B4B59),
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                    ),
                  ),
                ),
                const SizedBox(width: 14),
                const Text(
                  '/nəˈɡōSHēˌāt/', // Updated pronunciation to match exactly
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xFF6B7280),
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
            
            // Definition Card
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'DEFINITION',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF8B4B59).withOpacity(0.9),
                      letterSpacing: 1.5,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'To discuss something in order to reach an agreement, especially in business or politics.',
                    style: TextStyle(
                      fontSize: 17,
                      color: Color(0xFF111827),
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            
            // Example Sentence Card
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'EXAMPLE SENTENCE',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF8B4B59).withOpacity(0.9),
                      letterSpacing: 1.5,
                    ),
                  ),
                  const SizedBox(height: 16),
                  IntrinsicHeight(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          width: 3,
                          decoration: BoxDecoration(
                            color: const Color(0xFFFFDDE4),
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                        const SizedBox(width: 16),
                        const Expanded(
                          child: Text.rich(
                            TextSpan(
                              style: TextStyle(
                                fontSize: 17,
                                color: Color(0xFF4B5563),
                                height: 1.5,
                                fontStyle: FontStyle.italic,
                              ),
                              children: [
                                TextSpan(text: '"The two companies are still '),
                                TextSpan(
                                  text: 'negotiating',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    color: Color(0xFF03143F),
                                    decoration: TextDecoration.underline,
                                    decorationColor: Color(0xFFFFDDE4),
                                    decorationThickness: 4, 
                                  ),
                                ),
                                TextSpan(text: ' the final terms of the merger, aiming for a resolution by Friday."'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            
            // Synonyms and Image Row
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 180, // Giving them fixed height to match nicely
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFDACF),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Icon(Icons.handshake_outlined, size: 32, color: Color(0xFF4A1E14)),
                        SizedBox(height: 16),
                        Text(
                          'Synonyms',
                          style: TextStyle(
                            fontWeight: FontWeight.w800, 
                            fontSize: 14, 
                            color: Color(0xFF4A1E14)
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Mediate,\nParley,\nArbitrate',
                          style: TextStyle(
                            color: Color(0xFF6B3324), 
                            fontSize: 15, 
                            height: 1.5
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Container(
                    height: 180, 
                    decoration: BoxDecoration(
                      color: const Color(0xFF1B2C4F),
                      borderRadius: BorderRadius.circular(16),
                      image: const DecorationImage(
                        image: NetworkImage('https://images.unsplash.com/photo-1552664730-d307ca884978?ixlib=rb-4.0.3&auto=format&fit=crop&w=400&q=80'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.transparent, Colors.black.withOpacity(0.8)],
                        ),
                      ),
                      child: const Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Text(
                            'In Practice',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                              letterSpacing: 0.5,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            
            // Add to Bookmark Button
            SizedBox(
              width: double.infinity,
              height: 56,
              child: ElevatedButton.icon(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Word saved to bookmarks!')),
                  );
                },
                icon: const Icon(Icons.bookmark_border, color: Colors.white),
                label: const Text(
                  'Add to Bookmark',
                  style: TextStyle(
                    color: Colors.white, 
                    fontSize: 16, 
                    fontWeight: FontWeight.bold
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF03143F), 
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 0,
                ),
              ),
            ),
            const SizedBox(height: 24),
            
            // Footer
            const Center(
              child: Text(
                'WordRise Vocabulary Explorer • 2026',
                style: TextStyle(
                  color: Color(0xFF9CA3AF),
                  fontSize: 12,
                ),
              ),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
