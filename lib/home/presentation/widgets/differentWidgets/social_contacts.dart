import 'package:flutter/material.dart';

class SocialContacts extends StatelessWidget {
  const SocialContacts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 12),
          child: SizedBox(
            width: 38,
            height: 38,
            child: CircleAvatar(
              backgroundColor: Color(0xffD19026),
              child: Icon(
                Icons.message_rounded,
                color: Colors.white,
              ),
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.only(bottom: 12),
          child: Material(
            shape: const CircleBorder(),

            elevation: 8.0,
            // child: Padding(
            //   padding: EdgeInsets.only(bottom: 12),
            child: SizedBox(
              width: 38,
              height: 38,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.phone,
                  color: Color(0xffD19026),
                ),
              ),
            ),
          ),
        ),
        // ),
      ],
    );
  }
}
