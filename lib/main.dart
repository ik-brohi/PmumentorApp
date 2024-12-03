import 'package:flutter/material.dart';

void main() {
  runApp(PmuMentorApp());
}

class PmuMentorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PmuMentor',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        primaryColor: Colors.yellow[800],
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: Colors.white),
          bodyText2: TextStyle(color: Colors.white),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.yellow[800],
            foregroundColor: Colors.black,
          ),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          labelStyle: TextStyle(color: Colors.white),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.yellow),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.yellow),
          ),
          prefixIconColor: Colors.yellow,
        ),
      ),
      home: LaunchScreen(),
    );
  }
}

// Launch Screen
class LaunchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://ministryofsecurity.co/wp-content/uploads/2024/01/abstract-17.png',
              height: 150,
              width: 150,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            const Text(
              'Welcome to PmuMentor',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => LoginScreen()));
              },
              child: const Text('Get Started'),
            ),
          ],
        ),
      ),
    );
  }
}

// Login Screen
class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        backgroundColor: Colors.yellow[800],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Icon(Icons.login, size: 100, color: Colors.yellow),
            const SizedBox(height: 20),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Email',
                prefixIcon: Icon(Icons.email),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Password',
                prefixIcon: Icon(Icons.lock),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => HomeScreen()));
              },
              child: const Text('Login'),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Forgot Password?',
                style: TextStyle(color: Colors.yellow),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Home Screen

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: const Text(
          'Home',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.white),
            onPressed: () {
              // Add notification logic here
            },
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: CircleAvatar(
              radius: 18,
              backgroundImage: NetworkImage(
                'https://via.placeholder.com/150', // Replace with a profile image URL
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Search Bar
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[800],
                  prefixIcon: const Icon(Icons.search, color: Colors.grey),
                  hintText: 'Search events...',
                  hintStyle: const TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Upcoming Events Section
              const Text(
                'Upcoming Events',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    EventCard(
                      title: 'Music Festival',
                      date: 'Aug 25, 2023',
                      description:
                          'Join us for an unforgettable night of live music and fun!',
                      imageUrl:
                          'https://www.anarapublishing.com/wp-content/uploads/2019/04/photo-1506157786151-b8491531f063.jpeg', // Replace with event image URL
                    ),
                    const SizedBox(width: 10),
                    EventCard(
                      title: 'Art Exhibition',
                      date: 'Sep 10, 2023',
                      description:
                          'Explore stunning artworks from local artists.',
                      imageUrl:
                          'https://mariaankotzeart.co.za/wp-content/uploads/2017/08/Opening-exhibition-1-1.jpg', // Replace with event image URL
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Navigate to view all events
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[800],
                  ),
                  child: const Text('View All'),
                ),
              ),
              const SizedBox(height: 20),

              // Featured Resources Section
              const Text(
                'Featured Resources',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              ResourceCard(
                title: 'AI in Healthcare',
                description:
                    'Explore the impact of AI on modern healthcare systems.',
                imageUrl:
                    'https://via.placeholder.com/150', // Replace with resource image URL
              ),
              const SizedBox(height: 10),
              ResourceCard(
                title: 'Eco-Friendly Living',
                description:
                    'Discover sustainable living tips and eco-friendly products.',
                imageUrl:
                    'https://via.placeholder.com/150', // Replace with resource image URL
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.yellow[800],
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Events',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

// Event Card Widget
class EventCard extends StatelessWidget {
  final String title;
  final String date;
  final String description;
  final String imageUrl;

  const EventCard({
    required this.title,
    required this.date,
    required this.description,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      decoration: BoxDecoration(
        color: Colors.grey[800],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            imageUrl,
            height: 100,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  date,
                  style: const TextStyle(color: Colors.grey),
                ),
                const SizedBox(height: 5),
                Text(
                  description,
                  style: const TextStyle(color: Colors.white),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 10),
                TextButton(
                  onPressed: () {
                    // Navigate to event details
                  },
                  child: const Text(
                    'View All',
                    style: TextStyle(color: Colors.yellow),
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

// Resource Card Widget
class ResourceCard extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;

  const ResourceCard({
    required this.title,
    required this.description,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[800],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        children: [
          Image.network(
            imageUrl,
            height: 80,
            width: 80,
            fit: BoxFit.cover,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    description,
                    style: const TextStyle(color: Colors.white),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 5),
                  TextButton(
                    onPressed: () {
                      // Navigate to resource details
                    },
                    child: const Text(
                      'Learn More',
                      style: TextStyle(color: Colors.yellow),
                    ),
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

// Event Screen
class EventScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Events'),
        backgroundColor: Colors.yellow[800],
      ),
      body: Center(
        child: const Text(
          'Discover and join events here!',
          style: TextStyle(fontSize: 18, color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

// Resources Screen
class ResourcesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resources'),
        backgroundColor: Colors.yellow[800],
      ),
      body: Center(
        child: const Text(
          'Find resources and study materials here!',
          style: TextStyle(fontSize: 18, color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
