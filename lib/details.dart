import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constants/colors.dart';

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Flexible(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              style: GoogleFonts.muli(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: kPrimaryColor,
              ),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: "Name",
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextField(
            style: GoogleFonts.muli(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: kPrimaryColor,
            ),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              hintText: "Address",
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Please upload your passport size photo",
          style: GoogleFonts.muli(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: kPrimaryColor,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(6.0),
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(kPrimaryColor),
            ),
            onPressed: () async {
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Upload Image",
                style: GoogleFonts.muli(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColorShadow,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(kPrimaryColor),
            ),
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                "Submit",
                style: GoogleFonts.muli(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColorShadow,
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
