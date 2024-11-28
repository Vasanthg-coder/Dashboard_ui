import 'package:flutter/material.dart';

import 'firstSet.dart';
import 'secondSet.dart';
import 'thirdSet.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dashboard UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DashboardPage(),
    );
  }
}

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  const Text(
                    "SE T",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 40),
                  SidebarItem(
                    icon: Icons.home,
                    title: "Overview",
                  ),
                  SidebarItem(icon: Icons.book, title: "Course"),
                  SidebarItem(icon: Icons.folder, title: "Resources"),
                  SidebarItem(icon: Icons.message, title: "Message"),
                  SidebarItem(icon: Icons.settings, title: "Setting"),
                  const Spacer(),
                  Container(
                    margin: const EdgeInsets.all(16.0),
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade50,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        const Icon(Icons.workspace_premium,
                            size: 48, color: Colors.blue),
                        const SizedBox(height: 8),
                        const Text("Upgrade your plan",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        const SizedBox(height: 4),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text("Go to PRO"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 8,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Hello BRUNO, welcome back!",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      ),
                      CircleAvatar(
                        radius: 20,
                        child: Text("B"),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Row(
                    children: [
                      Text(
                        "My Courses",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "View all",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: Colors.blue),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 400,
                            child: CourseCard(
                              title: "French",
                              lessons: 35,
                              progress: 75,
                              color: Colors.blue,
                              icon: Icons.flag,
                            ),
                          ),
                          SizedBox(
                            width: 400,
                            child: CourseCard(
                              title: "Portuguese",
                              lessons: 30,
                              progress: 50,
                              color: Colors.orange,
                              icon: Icons.tram,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            width: 400,
                            child: CourseCard(
                              title: "Italian",
                              lessons: 20,
                              progress: 25,
                              color: Colors.green,
                              icon: Icons.account_balance,
                            ),
                          ),
                          SizedBox(
                            width: 400,
                            child: CourseCard(
                              title: "German",
                              lessons: 40,
                              progress: 75,
                              color: Colors.yellow,
                              icon: Icons.account_balance,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Planning",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "View all",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: Colors.blue),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.calendar_month,
                            color: Colors.blue,
                          ),
                          Text(
                            "20 March 2020",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 8.0,
                      mainAxisSpacing: 8.0,
                      childAspectRatio: 4.2,
                      padding: const EdgeInsets.all(8.0),
                      children: [
                        PlanningItem(
                          title: "Reading - Beginner Topic 1",
                          time: "08:00 AM - 10:00 AM",
                          icon: Icons.book,
                          iconBackgroundColor: Colors.blue,
                        ),
                        PlanningItem(
                          title: "Listening - Intermediate Topic 1",
                          time: "03:00 PM - 04:00 PM",
                          icon: Icons.headphones,
                          iconBackgroundColor: Colors.green,
                        ),
                        PlanningItem(
                          title: "Speaking - Beginner Topic 1",
                          time: "10:00 AM - 12:00 PM",
                          icon: Icons.volume_up,
                          iconBackgroundColor: Colors.orange,
                        ),
                        PlanningItem(
                          title: "Grammar - Intermediate Topic 2",
                          time: "07:00 PM - 08:00 PM",
                          icon: Icons.edit,
                          iconBackgroundColor: Colors.yellow,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.blue.shade50,
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Statistics",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                          width: 150,
                          height: 150,
                          child: StatisticsBox(
                              title: "Courses Completed", value: "02")),
                      SizedBox(
                          width: 150,
                          height: 150,
                          child: StatisticsBox(
                              title: "Total Points Gained", value: "250")),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                          width: 150,
                          height: 150,
                          child: StatisticsBox(
                              title: "Courses In Progress", value: "03")),
                      SizedBox(
                          width: 150,
                          height: 150,
                          child: StatisticsBox(
                              title: "Tasks Finished", value: "05")),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Activity",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Text(
                            "Month",
                            style: TextStyle(
                                fontSize: 11, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            "Week",
                            style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            "Days",
                            style: TextStyle(
                                fontSize: 11, fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 8),
                  Expanded(
                    child: Container(height: 800, child: const ActivityChart()),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
