import 'package:flutter/material.dart';

class SendEnquiry {
  static void showEnquiryPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Your Enquiry',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          content: Container(
            width: 300.0, // Set the width of the AlertDialog
            height: 200.0, // Set the height of the AlertDialog
            child: Column(
              children: [
                TextField(
                  maxLines: 3,
                  cursorColor: Colors.black,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter your enquiry here',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[300], // Light grey background
                  ),
                  child: Text('Send Enquiry'),
                ),
              ],
            ),
          ),
          backgroundColor: Colors.white,
        );
      },
    );
  }
}
