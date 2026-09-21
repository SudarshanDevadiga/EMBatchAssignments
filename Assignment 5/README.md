# Modular Stateful Todo Application

A modern, responsive, and fully functional Todo List application built with Flutter[cite: 1]. This project demonstrates state management using `StatefulWidget` and `setState`, interactive UI flows with modal bottom sheets, and modular codebase architecture across multiple files[cite: 1].

---

## 🚀 Features

* **Task Management:** Create new tasks, toggle task completion, and delete unwanted items[cite: 1].
* **Dynamic Visuals:** Completed tasks feature strike-through text styling and muted color transitions[cite: 1].
* **Modal Task Input:** Sleek `showModalBottomSheet` for task creation with smooth keyboard-aware padding[cite: 1].
* **Modular Architecture:** Clean separation of concerns between app configuration (`main.dart`) and UI state logic (`todo_screen.dart`)[cite: 1].
* **Empty State Handling:** Friendly placeholder messaging when no tasks are present in the list[cite: 1].

---

## 🛠️ Tech Stack & Architecture

* **Framework:** Flutter (Material 3 enabled)[cite: 1]
* **Language:** Dart
* **State Management:** Ephemeral State (`StatefulWidget` & `setState`)[cite: 1]

<img width="1470" height="956" alt="Screenshot 2026-09-14 at 7 47 16 PM" src="https://github.com/user-attachments/assets/2a7d5003-6e06-4520-a5db-0ad3bbce0557" />
<img width="1470" height="956" alt="Screenshot 2026-09-14 at 7 48 33 PM" src="https://github.com/user-attachments/assets/ce3f18ad-3210-47df-9060-e24fda0fd8c0" />
<img width="1470" height="956" alt="Screenshot 2026-09-14 at 7 48 39 PM" src="https://github.com/user-attachments/assets/e1b6afcc-b31b-49d9-a932-78a51336c2cb" />
<img width="1470" height="956" alt="Screenshot 2026-09-14 at 7 48 43 PM" src="https://github.com/user-attachments/assets/0d7ef317-2e23-4cf7-b275-6d1922de7ec0" />

### File Structure

```plaintext
lib/
├── main.dart        # Application entry point, MaterialApp setup & root theme[cite: 1]
└── todo_screen.dart # TodoItem model, stateful business logic & main screen UI[cite: 1]
