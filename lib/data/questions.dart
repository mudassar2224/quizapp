import '../models/question_model.dart';

final List<Category> flutterCategories = [
  Category(
    name: "Widgets",
    icon: "🏗️",
    questions: [
      Question(
        questionText: "Which widget is used for repeating content?",
        options: ["ListView", "Stack", "Column", "Row"],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: "Which widget is used to overlap children?",
        options: ["Row", "Stack", "Column", "Container"],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: "What is the root of every Flutter app?",
        options: ["MaterialApp", "Widget", "Scaffold", "Main"],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: "Which widget provides a default app bar and drawer?",
        options: ["Container", "SizedBox", "Scaffold", "Column"],
        correctAnswerIndex: 2,
      ),
      Question(
        questionText: "How do you add padding around a widget?",
        options: ["Padding Widget", "Margin Widget", "Spacer", "Align"],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: "Which widget is used for a single-line input?",
        options: ["TextField", "Input", "TextArea", "Form"],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: "What widget is used to create a button?",
        options: ["ElevatedButton", "Pressable", "Clickable", "TouchView"],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: "Which widget fills available space in a Row/Column?",
        options: ["Flexible", "Expanded", "Spacer", "All of above"],
        correctAnswerIndex: 3,
      ),
      Question(
        questionText: "Which widget is used for an Image from a URL?",
        options: ["Image.asset", "Image.network", "Image.file", "Image.memory"],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: "Which widget makes its child look like a card?",
        options: ["Box", "Card", "Paper", "Container"],
        correctAnswerIndex: 1,
      ),
    ],
  ),
  Category(
    name: "State Management",
    icon: "⚙️",
    questions: [
      Question(
        questionText: "What command updates the UI in a StatefulWidget?",
        options: ["update()", "refresh()", "setState()", "reload()"],
        correctAnswerIndex: 2,
      ),
      Question(
        questionText: "Which of these is a popular state management library?",
        options: ["Provider", "Riverpod", "Bloc", "All of above"],
        correctAnswerIndex: 3,
      ),
      Question(
        questionText: "Where does 'State' live in Flutter?",
        options: ["In the Widget", "In a separate State class", "In main.dart", "In the assets"],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: "Which widget rebuilds only when its value changes?",
        options: ["StatefulWidget", "StatelessWidget", "Consumer", "InheritedWidget"],
        correctAnswerIndex: 2,
      ),
      Question(
        questionText: "Which pattern uses streams to manage state?",
        options: ["Provider", "Bloc", "GetIt", "Riverpod"],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: "Which library is built on top of Provider?",
        options: ["Riverpod", "Bloc", "GetX", "MobX"],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: "What is the main benefit of using state management?",
        options: [
          "Better UI design",
          "Easier navigation",
          "Cleaner separation of logic and UI",
          "Faster compilation"
        ],
        correctAnswerIndex: 2,
      ),
      Question(
        questionText: "Which widget listens to a ChangeNotifier?",
        options: ["StreamBuilder", "ValueListenableBuilder", "Consumer", "Provider"],
        correctAnswerIndex: 2,
      ),
      Question(
        questionText: "Which is NOT a Flutter state management option?",
        options: ["setState", "Bloc", "Redux", "setStateOnly"],
        correctAnswerIndex: 3,
      ),
      Question(
        questionText: "What does 'state' represent in an app?",
        options: [
          "The visual theme",
          "The data that can change over time",
          "The app icon",
          "The navigation stack"
        ],
        correctAnswerIndex: 1,
      ),
    ],
  ),
  Category(
    name: "Dart Basics",
    icon: "🎯",
    questions: [
      Question(
        questionText: "Which keyword declares a variable that can change?",
        options: ["final", "const", "var", "static"],
        correctAnswerIndex: 2,
      ),
      Question(
        questionText: "Which keyword declares a compile-time constant?",
        options: ["final", "const", "var", "late"],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: "What is the type of `var x = 42;`?",
        options: ["int", "double", "String", "dynamic"],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: "Which operator checks for null?",
        options: ["??", "?", "??=", "?. "],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: "Which collection is ordered and allows duplicates?",
        options: ["Set", "Map", "List", "Queue"],
        correctAnswerIndex: 2,
      ),
      Question(
        questionText: "How do you define a named parameter?",
        options: ["{}", "[]", "()", "=>"],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: "Which keyword defines a class method?",
        options: ["static", "final", "late", "const"],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: "Which is a valid lambda syntax?",
        options: ["() => 42", "fun() => 42", "func: () => 42", "lambda: 42"],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: "Which keyword delays initialization until first use?",
        options: ["late", "final", "const", "static"],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: "What does `??=` do?",
        options: [
          "Assigns only if left is null",
          "Assigns only if right is null",
          "Compares two values",
          "Throws an error"
        ],
        correctAnswerIndex: 0,
      ),
    ],
  ),
  Category(
    name: "Navigation",
    icon: "🧭",
    questions: [
      Question(
        questionText: "Which widget is used to navigate to a new screen?",
        options: ["Navigator.push", "Route.push", "Page.push", "Screen.push"],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: "Which widget is used for a stack‑style navigation?",
        options: ["MaterialApp", "Navigator", "Scaffold", "AppBar"],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: "Which method pops the current screen?",
        options: ["Navigator.pop", "Navigator.remove", "Navigator.back", "Navigator.close"],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: "Which widget is used to define named routes?",
        options: ["MaterialApp", "Scaffold", "Navigator", "Route"],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: "Which keyword defines a named route?",
        options: ["name", "route", "path", "id"],
        correctAnswerIndex: 2,
      ),
      Question(
        questionText: "Which method navigates to a named route?",
        options: ["Navigator.pushNamed", "Navigator.goTo", "Navigator.navigate", "Navigator.to"],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: "Which widget wraps the entire app for navigation?",
        options: ["Scaffold", "MaterialApp", "Navigator", "Route"],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: "Which widget shows a modal bottom sheet?",
        options: ["showModalBottomSheet", "showBottomSheet", "ModalBottomSheet", "BottomSheet"],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: "Which widget shows a dialog?",
        options: ["showDialog", "Dialog", "Alert", "Popup"],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: "Which method clears the stack and pushes a new screen?",
        options: ["Navigator.pushReplacement", "Navigator.pushAndRemoveUntil", "Navigator.remove", "Navigator.replace"],
        correctAnswerIndex: 1,
      ),
    ],
  ),
  Category(
    name: "Async & HTTP",
    icon: "🌐",
    questions: [
      Question(
        questionText: "Which keyword is used for async functions?",
        options: ["async", "await", "future", "delay"],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: "Which keyword waits for a Future?",
        options: ["async", "await", "future", "delay"],
        correctAnswerIndex: 1,
      ),
      Question(
        questionText: "Which class is used to make HTTP requests?",
        options: ["HttpClient", "Http", "http", "Request"],
        correctAnswerIndex: 2,
      ),
      Question(
        questionText: "Which package is commonly used for HTTP in Flutter?",
        options: ["http", "dio", "Both http and dio", "flutter_http"],
        correctAnswerIndex: 2,
      ),
      Question(
        questionText: "Which method makes a GET request?",
        options: ["http.get", "http.post", "http.put", "http.delete"],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: "Which method makes a POST request?",
        options: ["http.post", "http.get", "http.put", "http.delete"],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: "Which keyword defines a Future?",
        options: ["Future", "Async", "Stream", "Task"],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: "Which keyword defines a Stream?",
        options: ["Stream", "Future", "Async", "Task"],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: "Which method listens to a Stream?",
        options: ["listen", "await", "then", "on"],
        correctAnswerIndex: 0,
      ),
      Question(
        questionText: "Which method converts a Future to a Widget?",
        options: ["FutureBuilder", "StreamBuilder", "AsyncBuilder", "Builder"],
        correctAnswerIndex: 0,
      ),
    ],
  ),
];
