import '../../models/article.dart';
const List<Article> articles = [
  Article(
    title: "CPR",
    description: "Learn how to perform CPR correctly.",
    image: "assets/images/cpr.jpg",
    content: """
Cardiopulmonary Resuscitation (CPR)

1- Check if the person responds.
2- Call emergency services.
3- Place both hands in the center of the chest.
4- Push hard and fast (100–120 compressions per minute).
5- Continue until help arrives.
""",
  ),

  Article(
    title: "Burns",
    description: "First aid for burns.",
    image: "assets/images/burn.jpg",
    content: """
Burn First Aid

• Cool the burn with running water for 20 minutes.

• Never use ice.

• Cover with sterile gauze.

• Go to the hospital if the burn is severe.
""",
  ),

  Article(
    title: "Bleeding",
    description: "How to stop bleeding safely.",
    image: "assets/images/bleeding.jpg",
    content: """
Bleeding First Aid

• Apply direct pressure.

• Raise the injured area if possible.

• Cover with a clean bandage.

• Call emergency services if bleeding does not stop.
""",
  ),

  Article(
    title: "Choking",
    description: "What to do if someone is choking.",
    image: "assets/images/choking.jpg",
    content: """
Choking First Aid

• Encourage coughing.

• Give 5 back blows.

• Give 5 abdominal thrusts (Heimlich maneuver).

• Repeat until the object comes out.

• Call emergency services immediately if the person becomes unconscious.
""",
  ),
];