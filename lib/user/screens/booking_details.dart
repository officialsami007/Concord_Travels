import 'package:flutter/material.dart';

class BookingDetails extends StatelessWidget {
  final List<Map<String, dynamic>> bookings = [
    {
      'date': '2023-12-01',
      'tourPackage': 'Adventure in Paris',
      'place': 'Paris',
      'daysNights': '5 Days / 4 Nights',
      'bookingDetails': {
        'bookingDate': '2023-11-30',
        'bookingTime': '10:00 AM',
        'numPeople': 2,
        'totalPrice': '\$500',
      },
      'status': 'BOOKED',
    },
    {
      'date': '2023-12-15',
      'tourPackage': 'Relaxing Bali Getaway',
      'place': 'Bali',
      'daysNights': '7 Days / 6 Nights',
      'bookingDetails': {
        'bookingDate': '2023-11-25',
        'bookingTime': '11:30 AM',
        'numPeople': 3,
        'totalPrice': '\$800',
      },
      'status': 'BOOKED',
    },
    // Add more booking entries as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Booking Details"),
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
              for (var booking in bookings) _buildBookingItem(context, booking),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBookingItem(BuildContext context, Map<String, dynamic> booking) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: InkWell(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                booking['date'],
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              title: Text(
                booking['tourPackage'],
                style: TextStyle(
                  color: Colors.purple,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                booking['place'],
                style: TextStyle(
                  color: Colors.purple,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Text(
                booking['daysNights'],
                style: TextStyle(
                  color: Colors.purple,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              title: Text("Booking Details",
                  style: Theme.of(context).textTheme.headline6),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildBookingDetail(
                      "Booking Date", booking['bookingDetails']['bookingDate']),
                  _buildBookingDetail(
                      "Booking Time", booking['bookingDetails']['bookingTime']),
                  _buildBookingDetail("Number of People",
                      booking['bookingDetails']['numPeople'].toString()),
                  _buildBookingDetail(
                      "Total Price", booking['bookingDetails']['totalPrice']),
                ],
              ),
            ),
            ListTile(
              title: Text(
                "Status",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                booking['status'],
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Add your cancel booking logic here
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    textStyle: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  child: Text(
                    "Cancel",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBookingDetail(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Text(
        "$label: $value",
        style: TextStyle(
          color: Colors.white,
          fontSize: 14.0,
        ),
      ),
    );
  }
}

// class BookingDetailsScreen extends StatelessWidget {
//   final Map<String, dynamic> booking;
//
//   const BookingDetailsScreen({Key? key, required this.booking})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Booking Details"),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // ... (similar code as in _buildBookingItem, but for a detailed view)
//           ],
//         ),
//       ),
//     );
//   }
// }
