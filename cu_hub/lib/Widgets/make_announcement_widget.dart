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
            const SizedBox(height: 5),
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
            const SizedBox(height: 6),
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
            const TextField(
              keyboardType: TextInputType.multiline,
              maxLines: 10,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Type...',
                hintStyle: TextStyle(color: Colors.white60),
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
