# 🚨 Emergency Assistance

Emergency Assistance is a Flutter application designed to provide quick access to essential emergency services in Egypt. The app allows users to instantly open the phone dialer with the selected emergency number already entered, making it faster to contact emergency services when needed.

In addition, the application includes a First Aid section containing static articles with images to help users learn basic first aid procedures for common emergencies.

---

## ✨ Features

- 🚓 One-tap access to Police emergency number.
- 🚑 One-tap access to Ambulance emergency number.
- 🚒 One-tap access to Fire Department.
- 🚗 Roadside assistance contact.
- 📖 First Aid Articles.
- 🖼️ Images for each first aid topic.
- 📱 Clean and responsive Material Design 3 UI.
- 🔗 Opens the native phone dialer using `url_launcher`.

---

## 📱 Screens

- Home Screen
- Emergency Services
- First Aid Articles
- Article Details

---

## 🛠️ Built With

- Flutter
- Dart
- Material Design 3
- url_launcher

---

## 📂 Project Structure

```
lib/
│
├── core/
│   ├── app_colors.dart
│   └── app_theme.dart
│
├── data/
│   └── articles_data.dart
│
├── models/
│   ├── article.dart
│   └── emergency_service.dart
│
├── screens/
│   ├── home_screen.dart
│   ├── articles_screen.dart
│   └── article_details_screen.dart
│
├── services/
│   └── call_service.dart
│
├── widgets/
│   ├── emergency_card.dart
│   └── article_card.dart
│
├── app.dart
└── main.dart
```

---

## 🚀 Getting Started

### Clone the repository

```bash
git clone https://github.com/your-username/emergency_assistance.git
```

### Install dependencies

```bash
flutter pub get
```

### Run the project

```bash
flutter run
```

---

## 📦 Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  url_launcher: ^6.3.1
  google_fonts: ^6.3.3
```

---

## 📸 Screenshots

Add screenshots here after uploading them.

| Home | Articles | Details |
|------|----------|---------|
| Screenshot | Screenshot | Screenshot |

---

## 🎯 Future Improvements

- Dark Mode
- Search in First Aid Articles
- Favorite Articles
- Arabic & English Languages
- Offline Database
- Emergency Location Sharing
- Push Notifications
- Nearby Hospitals using Google Maps

---

## 👨‍💻 Authors

**Abdelrahman Zaher**
**shahd Ahmed Salah**
**Yara Emad**


---

## 📄 License

This project is licensed under the MIT License.
