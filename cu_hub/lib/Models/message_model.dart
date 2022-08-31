class MessageModel {
  final String senderName;
  final String senderDesignation;
  final String subject;
  final String message;

  MessageModel({
    required this.senderName,
    required this.senderDesignation,
    required this.subject,
    required this.message,
  });
}

MessageModel sampleMessage1 = MessageModel(
  senderName: 'senderName',
  senderDesignation: 'SenderDesignation',
  subject: 'Hackathon 2022',
  message:
      'All the students are informed the HackCU Hackathon will be held in Block D5 at venue 2. Every particpant is required to bring their devices with them.',
);
MessageModel sampleMessage2 = MessageModel(
  senderName: 'senderName',
  senderDesignation: 'SenderDesignation',
  subject: 'Hackathon 2022',
  message:
      'All the students are informed the HackCU Hackathon will be held in Block D5 at venue 2. Every particpant is required to bring their devices with them.All the students are informed the HackCU Hackathon will be held in Block D5 at venue 2. Every particpant is required to bring their devices with them.All the students are informed the HackCU Hackathon will be held in Block D5 at venue 2. Every particpant is required to bring their devices with them.All the students are informed the HackCU Hackathon will be held in Block D5 at venue 2. Every particpant is required to bring their devices with them.',
);
MessageModel sampleMessage3 = MessageModel(
  senderName: 'senderName',
  senderDesignation: 'SenderDesignation',
  subject: 'Hackathon 2022',
  message: 'All the students are informed.',
);
