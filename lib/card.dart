import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

Container contentCard() {
  return Container(
    padding: const EdgeInsets.all(8),
    decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(25)),
    height: 300,
    width: 340,
    child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: AnimatedSmoothIndicator(
          activeIndex: 0,
          count: 3,
          effect: const ExpandingDotsEffect(
              activeDotColor: Colors.black87,
              dotColor: Colors.grey,
              dotHeight: 8,
              dotWidth: 8),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: RichText(
            textAlign: TextAlign.center,
            text: const TextSpan(children: <TextSpan>[
              TextSpan(
                  text: 'Fast',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                      fontFamily: 'Poppins',
                      color: Color.fromARGB(255, 247, 187, 0))),
              TextSpan(
                text: ' delivery at your',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    fontFamily: 'Poppins',
                    color: Colors.black),
              ),
              TextSpan(
                  text: ' home',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                      fontFamily: 'Poppins',
                      color: Color.fromARGB(255, 247, 187, 0))),
            ])),
      ),
      const SizedBox(
        height: 18,
      ),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Text(
          "All the best restaurants with their top menu waiting for you. They can't wait for your order!",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 15,
              height: 1.3,
              fontFamily: 'Poppins',
              color: Colors.black54),
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      ElevatedButton(
        onPressed: null,
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            )),
            backgroundColor: MaterialStateProperty.all(Colors.black),
            padding: MaterialStateProperty.all(
                const EdgeInsets.symmetric(horizontal: 50, vertical: 15))),
        child: const Text(
          "Get Started",
          style: TextStyle(
              color: Colors.white, fontSize: 17, fontFamily: 'Poppins'),
        ),
      )
    ]),
  );
}
