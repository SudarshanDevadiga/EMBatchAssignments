# ☁️ HeliosGrid Console

A responsive **Cloud Infrastructure Console Dashboard** built with **Flutter and Dart**.

The application provides a modern dashboard interface for monitoring cloud infrastructure metrics, compute nodes, cluster status, and CI/CD deployment logs. The UI automatically adapts between **Mobile, Tablet, and Desktop** screen sizes.

---

## 📌 Overview

HeliosGrid Console is a responsive Flutter dashboard designed to demonstrate adaptive UI development and reusable Flutter widgets.

The application changes its layout based on the available screen width:

- 📱 **Mobile** — Bottom navigation with a compact dashboard
- 📟 **Tablet** — Compact sidebar navigation
- 🖥️ **Desktop** — Full sidebar navigation with a wider dashboard layout

The project focuses on responsive layouts, reusable components, state management, and Material 3 design.

---

## ✨ Features

### 📊 Infrastructure Dashboard

The dashboard displays important infrastructure metrics:

- **Active Pods** — 142
- **CPU Usage** — 45%
- **Error Rate** — 0.02%
- **API Requests** — 12.4k

### 📱 Responsive Navigation

The navigation automatically changes according to the screen size.

| Device | Navigation |
|--------|------------|
| Mobile | BottomNavigationBar |
| Tablet | Compact Sidebar |
| Desktop | Full Sidebar |

### 📐 Responsive Metric Grid

The metric cards automatically adjust their number of columns:

| Screen Size | Columns |
|-------------|---------|
| Mobile (< 650px) | 2 |
| Tablet (650px – 1023px) | 3 |
| Desktop (≥ 1024px) | 4 |

### 🖥️ Cloud Resource Panel

The dashboard includes a **Cluster Resource Usage** panel containing a visualization placeholder for infrastructure resource monitoring.

### 🚀 CI/CD Deployment Logs

The **Jenkins CI/CD Logs** section displays deployment and security-check status messages.

Example:

- ✅ Build deployed to staging
- ❌ Build failed security check

### 🎨 Material 3

The application uses Flutter's Material 3 design system with a teal-based color scheme.

---

## 🛠️ Technologies Used

- **Flutter**
- **Dart**
- **Material 3**
- **MediaQuery**
- **GridView**
- **SingleChildScrollView**
- **ListView.builder**
- **Expanded**
- **Row & Column**
- **StatefulWidget**
- **StatelessWidget**

---

## 📂 Project Structure

```text
lib/
├── main.dart
└── dashboard_screen.dart