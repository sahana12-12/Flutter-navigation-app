import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFF5EBDD),
              Color(0xFFEBDCCB),
              Color(0xFFDCC7D0),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                const SizedBox(height: 25),

                // HEADER
                const Text(
                  'NAVIGATION',
                  style: TextStyle(
                    fontSize: 13,
                    letterSpacing: 4,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF8A6A58),
                  ),
                ),

                const SizedBox(height: 8),

                const Text(
                  'My Flutter App',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF4B3428),
                  ),
                ),

                const SizedBox(height: 35),

                // MAIN CARD
                Card(
                  elevation: 12,
                  shadowColor: Colors.black26,
                  color: const Color(0xFFFFFBF5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      children: [
                        // ICON
                        Container(
                          height: 105,
                          width: 105,
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
                                color: Colors.brown.withOpacity(0.25),
                                blurRadius: 20,
                                offset: const Offset(0, 8),
                              ),
                            ],
                          ),
                          child: const Icon(
                            Icons.explore_rounded,
                            size: 55,
                            color: Colors.white,
                          ),
                        ),

                        const SizedBox(height: 25),

                        const Text(
                          'Welcome, Sahana',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 29,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF4B3428),
                          ),
                        ),

                        const SizedBox(height: 12),

                        const Text(
                          'Explore the different sections\n'
                          'of this Flutter application.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            height: 1.6,
                            color: Color(0xFF806B5D),
                          ),
                        ),

                        const SizedBox(height: 28),

                        // INFO BOX
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(18),
                          decoration: BoxDecoration(
                            color: const Color(0xFFF3E7D8),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Row(
                            children: [
                              Icon(
                                Icons.route_rounded,
                                color: Color(0xFF8F6A58),
                                size: 30,
                              ),
                              SizedBox(width: 15),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Navigation & Routing',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF4B3428),
                                      ),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      'Home → Profile → Details',
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: Color(0xFF806B5D),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 28),

                        // BUTTON
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton.icon(
                            onPressed: () {
                              Navigator.pushNamed(
                                context,
                                '/profile',
                              );
                            },
                            icon: const Icon(
                              Icons.person_rounded,
                            ),
                            label: const Text(
                              'Explore My Profile',
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
                                borderRadius:
                                    BorderRadius.circular(30),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 25),

                // FOOTER
                const Text(
                  'Experiment 05 • Flutter Navigation',
                  style: TextStyle(
                    fontSize: 13,
                    color: Color(0xFF8A6A58),
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
}