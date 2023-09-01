import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Account'),backgroundColor: Color.fromARGB(255, 1, 202, 172),
        actions: [
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {
              // Add edit profile functionality here
            },
          ),
        ],
      ),
      body: UserAccount(),
    );
  }
}

class UserAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color.fromARGB(255, 3, 213, 232), Color.fromARGB(255, 191, 33, 125)],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://scontent.fbkk5-8.fna.fbcdn.net/v/t39.30808-6/368967534_6498663730247918_2875919598483130723_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=5614bc&_nc_eui2=AeGGl3M4YHIvesrVU8ukqknuXgceO0GaGUVeBx47QZoZRQvNBOlIFuboGrfn6HSyB3TPvf7GW7ki6ygIwa32pg0t&_nc_ohc=2cuB38JbqBsAX9IBSgu&_nc_ht=scontent.fbkk5-8.fna&oh=00_AfDw0p992Z2eXnDXDfAisEFJxYkiAtmDxuOinvpozWWdAw&oe=64F68544'),
                        radius: 70,
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 20,
                          child: Icon(
                            Icons.camera_alt,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Atippat Tanasetsiri',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 12),
                  ListTile(
                    leading: Icon(
                      Icons.article,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Programmer, IOT Management System, Game Content Creator, and Photo & Video Editor',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white, // Set text color to white
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.white,
                    ),
                    title: Text(
                      's6407012662030@email.kmutnb.ac.th',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white, // Set text color to white
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.white,
                    ),
                    title: Text(
                      '063-415-9952',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white, // Set text color to white
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.group,
                          color: Color.fromARGB(255, 255, 239, 239),
                          size: 36,
                        ),
                        Text(
                          'Followers',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.thumb_up,
                          color: const Color.fromARGB(255, 0, 255, 8),
                          size: 36,
                        ),
                        Text(
                          'Likes',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 24),
                Text(
                  'Recent Activity',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // Add a list of recent activities or any content you prefer here
                // Example:
                ListTile(
                  leading: Icon(Icons.article),
                  title: Text('Posted a new article'),
                  subtitle: Text('2 days ago'),
                ),
                ListTile(
                  leading: Icon(Icons.comment),
                  title: Text('Received 5 new comments'),
                  subtitle: Text('3 days ago'),
                ),
                ListTile(
                  leading: Icon(Icons.group),
                  title: Text('5 new followers'),
                  subtitle: Text('Yesterday'),
                ),
                // Add more activity items as needed
                SizedBox(height: 24),
                ElevatedButton(
                  onPressed: () {
                    // Add a custom action for the button here
                  },
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 182, 12, 0), // Set button color to red
                  ),
                  child: Text(
                    'Log Out',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                SizedBox(height: 24),
              ],
            ),
          ),
        ],
      ),
    );
  }
}