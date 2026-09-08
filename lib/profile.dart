import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5EBDD),
      appBar: AppBar(
        title: const Text(
          'My Profile',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF9B6F5A),
        elevation: 0,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFF5EBDD),
              Color(0xFFEBDCCB),
              Color(0xFFDCC7D0),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(22),
            child: Column(
              children: [
                const SizedBox(height: 10),

                // PROFILE HEADER
                Container(
                  padding: const EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFFBF5),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.12),
                        blurRadius: 15,
                        offset: const Offset(0, 8),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: const Color(0xFFB98B73),
                            width: 3,
                          ),
                        ),
                        child: const CircleAvatar(
                          radius: 55,
                          backgroundColor: Color(0xFFE8D3C3),
                          child: Icon(
                            Icons.person_rounded,
                            size: 65,
                            color: Color(0xFF8F6A58),
                          ),
                        ),
                      ),

                      const SizedBox(height: 18),

                      const Text(
                        'Sahana',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF4B3428),
                        ),
                      ),

                      const SizedBox(height: 5),

                      const Text(
                        'Computer Science Student',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF806B5D),
                        ),
                      ),

                      const SizedBox(height: 18),

                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 18,
                          vertical: 9,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xFFF3E7D8),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Text(
                          'Flutter Learner',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF8F6A58),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                // ABOUT SECTION
                _infoCard(
                  icon: Icons.school_rounded,
                  title: 'Education',
                  children: const [
                    _InfoRow(
                      label: 'Course',
                      value: 'Computer Science',
                    ),
                    _InfoRow(
                      label: 'Department',
                      value: 'CSE',
                    ),
                    _InfoRow(
                      label: 'Area',
                      value: 'Software Development',
                    ),
                  ],
                ),

                const SizedBox(height: 18),

                // SKILLS SECTION
                _infoCard(
                  icon: Icons.auto_awesome_rounded,
                  title: 'Interests & Skills',
                  children: [
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: [
                        _skillChip('Flutter'),
                        _skillChip('Dart'),
                        _skillChip('Java'),
                        _skillChip('UI Design'),
                        _skillChip('AI'),
                      ],
                    ),
                  ],
                ),

                const SizedBox(height: 25),

                // NAVIGATION BUTTON
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        '/details',
                      );
                    },
                    icon: const Icon(Icons.arrow_forward_rounded),
                    label: const Text(
                      'View Full Details',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF9B6F5A),
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                        vertical: 17,
                      ),
                      elevation: 6,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 15),
              ],
            ),
          ),
        ),
      ),
    );
  }

  static Widget _infoCard({
    required IconData icon,
    required String title,
    required List<Widget> children,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        color: const Color(0xFFFFFBF5),
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 12,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                icon,
                color: const Color(0xFF9B6F5A),
                size: 28,
              ),
              const SizedBox(width: 12),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF4B3428),
                ),
              ),
            ],
          ),
          const SizedBox(height: 18),
          ...children,
        ],
      ),
    );
  }

  static Widget _skillChip(String text) {
    return Chip(
      label: Text(text),
      backgroundColor: const Color(0xFFF3E7D8),
      labelStyle: const TextStyle(
        color: Color(0xFF6D5142),
        fontWeight: FontWeight.w600,
      ),
      side: BorderSide.none,
    );
  }
}

class _InfoRow extends StatelessWidget {
  final String label;
  final String value;

  const _InfoRow({
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 90,
            child: Text(
              label,
              style: const TextStyle(
                color: Color(0xFF9B6F5A),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(
                color: Color(0xFF4B3428),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}