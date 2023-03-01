class Event {
  Event({
    required this.eventTitle,
    required this.eventSubtitle,
    required this.eventIllustration,
    required this.eventDate,
    required this.eventMonth,
  });

  String eventTitle;
  String eventSubtitle;
  String eventDate;
  String eventMonth;
  String eventIllustration;
}

// Popular Events
var popularEvents = [
  Event(
    eventTitle: "Sheikh Omar Sulaiman",
    eventSubtitle: "University of Houston, TX",
    eventDate: "10",
    eventMonth: "DEC",
    eventIllustration: 'Events_Background.png',
  ),
  Event(
    eventTitle: "MSA Showdown",
    eventSubtitle: "University of Houston, TX",
    eventDate: "10",
    eventMonth: "DEC",
    eventIllustration: 'Events_Background.png',
  ),
  Event(
    eventTitle: "Brother's Social",
    eventSubtitle: "University of Houston, TX",
    eventDate: "10",
    eventMonth: "DEC",
    eventIllustration: 'Events_Background.png',
  ),
];
