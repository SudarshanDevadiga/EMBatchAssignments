# 🛒 Dynamic Product Listing & Filtering App

A modern, responsive Flutter application demonstrating dynamic product rendering using `ListView.builder`, ephemeral state management with `setState`, real-time search, and category-based filtering workflows.

---

## 📸 Overview

This application showcases a real-world product catalog interface with interactive features including:

* **Dynamic Data Modeling**: A structured `Product` data model isolating application logic from the UI layout.


* **Real-Time Search**: Instant filtering that evaluates string matching across search queries.


* **Category Filtering**: Horizontal interactive filter chips extracted dynamically from the dataset's categories (e.g., Electronics, Apparel).


* **INR (₹) Currency Formatting**: Styled pricing displayed in Indian Rupees without decimal padding.


* **Custom Empty State**: A modern visual indicator that renders when no products match the selected search or filter criteria.



---

## 📁 Project Architecture & File Organization

The application adheres to a clean separation of concerns, isolating the application configuration and interactive UI from the underlying data model:

```plaintext
lib/
├── main.dart       # Application Entry Point, Material App Theme & Interactive UI Screen
└── product.dart    # Product Data Model Class & In-Memory Sample Dataset

```

---

## 🛠️ Features Breakdown

### 1. Product Data Model (`product.dart`)

* Defines the core `Product` model containing strictly typed attributes: `id`, `name`, `category`, `price`, `icon`, and `themeColor`.


* Provides an in-memory sample product array utilized for dynamic rendering pipelines.



### 2. State Management & Logic (`main.dart`)

* Maintains local reactive state lifecycle via `setState()` to update the `_filteredProducts` list when search queries or filters change.


* Utilizes a `TextEditingController` to capture real-time text input queries, featuring a dynamic clear (X) control.



### 3. Responsive Material 3 UI

* Replaces default app bars with custom header components featuring dynamic titles and subtitles.


* Employs `ListView.builder` for highly efficient virtualized rendering of both horizontal category chips and vertical product items.


* Leverages `AnimatedContainer` for smooth selection states, borders, and active shadows on category pills.

<img width="1470" height="956" alt="Screenshot 2026-09-15 at 10 56 41 AM" src="https://github.com/user-attachments/assets/c33a2209-62a8-43db-a161-705dd338e072" />

<img width="1470" height="956" alt="Screenshot 2026-09-15 at 10 56 58 AM" src="https://github.com/user-attachments/assets/cb97bdcc-552a-4fdc-ad14-808bc2ef2514" />

<img width="1470" height="956" alt="Screenshot 2026-09-15 at 10 57 06 AM" src="https://github.com/user-attachments/assets/07105e33-c67f-4f29-ba65-ff83bf33a5b1" />

<img width="1470" height="956" alt="Screenshot 2026-09-15 at 10 57 12 AM" src="https://github.com/user-attachments/assets/12b26a1a-76e8-4376-b56a-b5aa548905f2" />

<img width="1470" height="956" alt="Screenshot 2026-09-15 at 10 57 18 AM" src="https://github.com/user-attachments/assets/5ea646a3-cb6b-4b04-83ba-7d273a4e18e6" />

<img width="1470" height="956" alt="Screenshot 2026-09-15 at 10 57 24 AM" src="https://github.com/user-attachments/assets/14ca6aed-87fc-4802-a411-587757b654e1" />

---

## 🚀 Getting Started

### Prerequisites

* [Flutter SDK](https://docs.flutter.dev/get-started/install?utm_source=gemini) installed.
* Dart SDK installed.
* An IDE such as VS Code or Android Studio with Flutter extensions.

### Installation & Run

1. **Clone the repository:**
```bash
git clone <repository-url>
cd modern_store

```


2. **Fetch dependencies:**
```bash
flutter pub get

```


3. **Run the app:**
```bash
flutter run

```



---

## 💻 Tech Stack

* **Framework:** Flutter (Material 3 enabled)
* **Language:** Dart
* **State Management:** Ephemeral State (`StatefulWidget` / `setState`)
