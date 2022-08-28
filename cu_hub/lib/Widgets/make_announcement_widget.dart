import 'package:flutter/material.dart';

class MakeAnnouncementWidget extends StatefulWidget {
  final ValueChanged<bool> onShowAnnouncement;

  MakeAnnouncementWidget({required this.onShowAnnouncement});

  @override
  State<MakeAnnouncementWidget> createState() => _MakeAnnouncementStateWidget();
}

class _MakeAnnouncementStateWidget extends State<MakeAnnouncementWidget> {
  String name = 'NameXYZ';
  String subject = 'New Time Table';
  String designation = 'Desgnation';

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      height: MediaQuery.of(context).size.height * 0.48,
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 56, 56, 70),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () => widget.onShowAnnouncement(false),
                  child: const Icon(
                    Icons.cancel,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const Divider(
              color: Colors.white,
              height: 1,
              thickness: 0.8,
            ),
            SizedBox(height: screenSize.height * 0.007),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  designation,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: screenSize.height * 0.005),
            Row(
              children: const [
                Text(
                  'Subject: ',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Expanded(
                  child: TextField(
                    autofocus: true,
                    style: TextStyle(color: Colors.white),
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Type...',
                      hintStyle: TextStyle(color: Colors.white60),
                    ),
                  ),
                ),
              ],
            ),
            ConstrainedBox(
              constraints: BoxConstraints(maxHeight: screenSize.height * 0.278),
              child: const TextField(
                keyboardType: TextInputType.multiline,
                maxLines: 11, //(screenSize.height * 0.009).toInt(),
                style: TextStyle(color: Colors.white),
                cursorColor: Colors.white,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Type...',
                  hintStyle: TextStyle(color: Colors.white60),
                ),
              ),
            ),
            const Divider(
              color: Colors.white,
              height: 1,
              thickness: 0.8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () => widget.onShowAnnouncement(false),
                  child: const Icon(
                    Icons.send,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
