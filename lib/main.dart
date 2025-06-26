import 'package:flutter/material.dart';

void main() {
  runApp(TimeTrackerApp());
}

class TimeTrackerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TimeTrackerScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TimeTrackerScreen extends StatelessWidget {
  final List<Map<String, dynamic>> appUsage = [
    {'name': 'Facebook', 'minutes': 120, 'color': Colors.blue, 'icon': Icons.facebook},
    {'name': 'Instagram', 'minutes': 95, 'color': Colors.pink, 'icon': Icons.camera_alt},
    {'name': 'TikTok', 'minutes': 60, 'color': Colors.black, 'icon': Icons.music_note},
    {'name': 'YouTube', 'minutes': 180, 'color': Colors.red, 'icon': Icons.play_arrow},
    {'name': 'Twitter', 'minutes': 30, 'color': Colors.lightBlue, 'icon': Icons.alternate_email},
  ];

  int get totalMinutes => 490;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Column(
          children: [
            // Header
            Container(
              color: Colors.deepPurple,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: Row(
                children: [
                  SizedBox(width: 12),
                  Text('Social Media Time',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          shadows: [
                            Shadow(blurRadius: 10.0,
                              color: Colors.black,
                              offset: Offset(2.0,2.0),
                            ),
                          ],
                          fontWeight: FontWeight.bold)),

                ],
              ),
            ),

            // Total screen time
            Container(
              margin: EdgeInsets.all(16),
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              width: double.infinity,
              child: Column(

              ),
            ),

            // Per app usage title
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Text('Per App Usage',
                      style:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                ],
              ),
            ),

            // App usage list
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.all(16),
                itemCount: appUsage.length,
                itemBuilder: (context, index) {
                  var app = appUsage[index];
                  return Container(
                    margin: EdgeInsets.only(bottom: 12),
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: app['color'],
                          child: Icon(app['icon'], color: Colors.white, size: 20),
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(app['name'],
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16)),
                              SizedBox(height: 6),
                              Container(
                                height: 6,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: FractionallySizedBox(
                                  alignment: Alignment.centerLeft,
                                  widthFactor: app['minutes'] / totalMinutes,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: app['color'],
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Text("${app['minutes']} minutes",
                            style: TextStyle(color: Colors.black54)),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),

      // Bottom navigation bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.deepPurple,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Dashboard'),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: 'Stats'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }
}

