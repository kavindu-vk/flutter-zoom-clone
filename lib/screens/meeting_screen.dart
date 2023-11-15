import 'dart:math';

import 'package:flutter/material.dart';
import 'package:zoom_clone/resources/jitsi_meet_methods.dart';
import 'package:zoom_clone/widgets/home_meeting_buttons.dart';

class MeetingScreen extends StatelessWidget {
  MeetingScreen({
    super.key,
  });

  final JitsiMeetingMethods _jitsiMeetingMethods = JitsiMeetingMethods();

  createNewMeeting() async {
    var random = Random();
    String roomName = (random.nextInt(10000000) + 10000000).toString();
    _jitsiMeetingMethods.createNewMeeting(
      roomName: roomName,
      isAudioMuted: true,
      isvideoMuted: true,
    );
  }

  joinMeeting(BuildContext context) {
    Navigator.pushNamed(context, '/video-call');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            HomeMeetingButtons(
              onPressed: createNewMeeting,
              text: "New Meeting",
              icon: Icons.videocam,
            ),
            HomeMeetingButtons(
              onPressed: () => joinMeeting(context),
              text: "Join Meeting",
              icon: Icons.add_box_rounded,
            ),
            HomeMeetingButtons(
              onPressed: () {},
              text: "Schedule",
              icon: Icons.calendar_today,
            ),
            HomeMeetingButtons(
              onPressed: () {},
              text: "Share Screen",
              icon: Icons.arrow_upward_rounded,
            ),
          ],
        ),
        const Expanded(
          child: Center(
            child: Text(
              "Create or Join Meetings with just a Click!",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
