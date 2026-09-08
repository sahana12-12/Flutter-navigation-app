import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5EBDD),
      appBar: AppBar(
        title: const Text(
          'Student Details',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF8F6A58),
        elevation: 0,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFF5EBDD),
              Color(0xFFE7D5C4),
              Color(0xFFD8C4CE),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(22),
            child: Column(
              children: [
                const SizedBox(height: 10),

                // HEADER
                const Text(
                  'PROFILE DETAILS',
                  style: TextStyle(
                    fontSize: 12,
                    letterSpacing: 4,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF9B6F5A),
                  ),
                ),

                const SizedBox(height: 8),

                const Text(
                  'About Sahana',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF4B3428),
                  ),
                ),

                const SizedBox(height: 25),

                // MAIN DETAILS CARD
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFFBF5),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.12),
                        blurRadius: 16,
                        offset: const Offset(0, 8),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 95,
                        width: 95,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xFFB98B73),
                              Color(0xFF8F6A58),
                            ],
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.brown.withOpacity(0.2),
                              blurRadius: 15,
                              offset: const Offset(0, 6),
                            ),
                          ],
                        ),
                        child: const Icon(
                          Icons.school_rounded,
                          size: 52,
                          color: Colors.white,
                        ),
                      ),

                      const SizedBox(height: 22),

                      const Text(
                        'Sahana',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF4B3428),
                        ),
                      ),

                      const SizedBox(height: 5),

                      const Text(
                        'Computer Science Student',
                        style: TextStyle(
                          color: Color(0xFF806B5D),
                          fontSize: 15,
                        ),
                      ),

                      const SizedBox(height: 25),

                      const Divider(
                        color: Color(0xFFE3D3C5),
                      ),

                      const SizedBox(height: 15),

                      _detailRow(
                        Icons.person_outline_rounded,
                        'Name',
                        'Sahana',
                      ),

                      _detailRow(
                        Icons.school_outlined,
                        'Course',
                        'Computer Science',
                      ),

                      _detailRow(
                        Icons.account_balance_outlined,
                        'Department',
                        'CSE',
                      ),

                      _detailRow(
                        Icons.code_rounded,
                        'Primary Skill',
                        'Flutter & Dart',
                      ),

                      _detailRow(
                        Icons.palette_outlined,
                        'Interest',
                        'UI / App Development',
                      ),

                      _detailRow(
                        Icons.auto_awesome_outlined,
                        'Current Project',
                        'Flutter Navigation App',
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                // NAVIGATION FLOW
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF3E7D8),
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: const Column(
                    children: [
                      Text(
                        'Navigation Flow',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF4B3428),
                        ),
                      ),
                      SizedBox(height: 14),
                      Row(
                        mainAxisAlignment:
                            MainAxisAlignment.center,
                        children: [
                          _FlowItem(
                            icon: Icons.home_rounded,
                            text: 'Home',
                          ),
                          _Arrow(),
                          _FlowItem(
                            icon: Icons.person_rounded,
                            text: 'Profile',
                          ),
                          _Arrow(),
                          _FlowItem(
                            icon: Icons.school_rounded,
                            text: 'Details',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 25),

                // BACK BUTTON
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_rounded,
                    ),
                    label: const Text(
                      'Back to Profile',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF8F6A58),
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

                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }

  static Widget _detailRow(
    IconData icon,
    String title,
    String value,
  ) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color(0xFFF3E7D8),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              icon,
              color: const Color(0xFF8F6A58),
              size: 23,
            ),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color(0xFF9B6F5A),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  value,
                  style: const TextStyle(
                    fontSize: 15,
                    color: Color(0xFF4B3428),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _FlowItem extends StatelessWidget {
  final IconData icon;
  final String text;

  const _FlowItem({
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Color(0xFF8F6A58),
          size: 25,
        ),
        SizedBox(height: 5),
        Text(
          text,
          style: TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w600,
            color: Color(0xFF6D5142),
          ),
        ),
      ],
    );
  }
}

class _Arrow extends StatelessWidget {
  const _Arrow();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Icon(
        Icons.arrow_forward_rounded,
        size: 18,
        color: Color(0xFFB98B73),
      ),
    );
  }
}