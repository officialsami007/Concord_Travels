import 'package:flutter/material.dart';
import 'transaction_details.dart';
import 'booking_details.dart';

class Profile extends StatelessWidget {
  final List<Map<String, dynamic>> transactions = [
    {
      'icon': Icons.receipt,
      'title': 'Receipts',
      'subtitle': 'View receipts',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 20),
              Stack(
                alignment: Alignment.topRight,
                children: [
                  Center(
                    child: ClipOval(
                      child: Image.network(
                        'https://thumbs.dreamstime.com/b/vector-icon-user-avatar-web-site-mobile-app-man-face-flat-style-social-network-profile-45837377.jpg',
                        fit: BoxFit.cover,
                        width: 150,
                        height: 150,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.notifications),
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(height: 20),
              Center(
                child: Column(
                  children: <Widget>[
                    Text(
                      "Jon Doe",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Text(
                      "31, Mumbai, India",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                child: Text(
                  "Booking",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              // Column(
              //   children: [
              //     for (var booking in bookings)
              //       _buildBookingItem(context, booking),
              //   ],
              // ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(
                        Icons.airplane_ticket,
                        size: 50,
                      ),
                      title: Text(
                        "Hotel Booking",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      trailing: Icon(Icons.navigate_next),
                      onTap: () {
                        // Navigate to the second page
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BookingDetails()),
                        );
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                child: Text(
                  "Transaction",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  children: <Widget>[
                    for (var transaction in transactions)
                      ListTile(
                        leading: Icon(
                          transaction['icon'],
                          size: 50,
                        ),
                        title: Text(
                          transaction['title'],
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        subtitle: Text(
                          transaction['subtitle'],
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        trailing: Icon(Icons.navigate_next),
                        onTap: () {
                          // Navigate to the second page
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TransactionDetails()),
                          );
                        },
                      ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                child: Text(
                  "Account Settings",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.person),
                      title: Text(
                        "Personal Information",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      trailing: Icon(Icons.navigate_next),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Icon(Icons.lock),
                      title: Text(
                        "Change Password",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      trailing: Icon(Icons.navigate_next),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Icon(Icons.edit),
                      title: Text(
                        "Edit Profile",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      trailing: Icon(Icons.navigate_next),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Icon(Icons.exit_to_app),
                      title: Text(
                        "Log Out",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      trailing: Icon(Icons.navigate_next),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
