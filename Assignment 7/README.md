MODERN MULTI-SCREEN FLUTTER APPLICATION

A modern, responsive multi-screen Flutter application featuring custom
Material 3 theming, form validation, route management, and data passing
between screens.

FEATURES

Custom Material 3 Theming: Designed with a sleek Indigo & Sky Blue
gradient accent palette (Hex: #4F46E5 and #0EA5E9), custom typography,
and rounded input fields.

Three Core Screens:

Home Screen (/): Features a welcome interface with a gradient
profile badge and a smooth transition to registration.

Registration Screen (/register): Includes a validated form handling
full names, email verification regex matching, and secure password
visibility toggling.

Detail / Profile Summary Screen (/detail): Receives state arguments
from the registration form and displays a modern profile summary card.

Named Routing: Clean navigation setup handling navigation stacks and
routing arguments seamlessly.

PROJECT STRUCTURE

lib/
├── main.dart        # Entry point, global theme, and named routes
└── app_screens.dart # Contains HomeScreen, RegistrationScreen, DetailScreen

GETTING STARTED

Prerequisites:

Ensure you have the Flutter SDK installed.

An active device or emulator (Chrome, iOS Simulator, Android).

Installation & Running:

Open your terminal in the project root directory.

Fetch dependencies by running:
flutter pub get

Run the application:
flutter run -d chrome

SCREENSHOTS

<img width="1470" height="956" alt="Screenshot 2026-09-21 at 2 22 36 PM" src="https://github.com/user-attachments/assets/8900a727-024a-4a68-a93d-0f08f37a01e9" />
<img width="1470" height="956" alt="Screenshot 2026-09-21 at 2 23 09 PM" src="https://github.com/user-attachments/assets/9eb167a3-92a3-4c7f-924f-5ca0dfc59e2f" />
<img width="1470" height="956" alt="Screenshot 2026-09-21 at 2 23 21 PM" src="https://github.com/user-attachments/assets/e9ea6ba1-447b-4a1c-ab99-6177895a3c44" />

CODE ARCHITECTURE

main.dart: Sets up the root widget (MyApp), configures the custom
light theme (Input decorations, elevated button themes, app bar styling),
and establishes the route table (/, /register, /detail).

app_screens.dart: Houses individual layout implementations. HomeScreen
acts as the landing view, RegistrationScreen utilizes GlobalKey
and TextEditingController for input handling, and DetailScreen parses
incoming route arguments to display dynamic user profiles.
