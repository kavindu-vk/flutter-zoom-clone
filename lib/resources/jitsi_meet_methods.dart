import 'package:jitsi_meet_flutter_sdk/jitsi_meet_flutter_sdk.dart';
import 'package:zoom_clone/resources/auth_method.dart';
import 'package:zoom_clone/resources/firestore_method.dart';

class JitsiMeetingMethods {
  final AuthMethod _authMethod = AuthMethod();
  final FirestoreMethod _firestoreMethod = FirestoreMethod();
  void createNewMeeting({
    required String roomName,
    required bool isAudioMuted,
    required bool isvideoMuted,
    String userName = '',
  }) async {
    try {
      String name;
      if (userName.isEmpty) {
        name = _authMethod.user.displayName!;
      } else {
        name = userName;
      }
      var jitsiMeet = JitsiMeet();
      var options = JitsiMeetConferenceOptions(
        serverURL: "https://meet.jit.si",
        room: roomName,
        configOverrides: {
          "startWithAudioMuted": isAudioMuted,
          "startWithVideoMuted": isvideoMuted,
        },
        featureFlags: {
          "unsaferoomwarning.enabled": false,
        },
        userInfo: JitsiMeetUserInfo(
          displayName: name,
          email: _authMethod.user.email,
          avatar: _authMethod.user.photoURL,
        ),
      );
      _firestoreMethod.addToMeetingHistory(roomName);
      await jitsiMeet.join(options);
    } catch (e) {
      print("error: $e");
    }
  }
}
