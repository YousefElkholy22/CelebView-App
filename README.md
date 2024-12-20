# 🥇 CelebView 

## 📊 Table of Contents

1. [Overview](#Overview)
2. [Features](#Features)
3. [Project Architecture](#project-architecture)
4. [UI Screens](#ui-screens)
5. [Running the App](#Running-the-App)
6. [Running Tests](#Running-Tests)
7. [Contact](#Contact)

## 👌 Overview

CelebView is a Flutter-based mobile application that provides users with a smooth and intuitive way to explore celebrity profiles and their notable works. The app is user-friendly, responsive, and packed with essential features for a seamless browsing experience.

## 🔥Features
### User Features
#### 🌟 Celebrity Profiles:
- View detailed information about celebrities and their most famous works.
#### 🔍 Search Functionality:
- Quickly search for celebrities by name.
#### ❤ Favorites:
- Mark celebrities as favorites to revisit their profiles easily.
#### 🎬 Smooth Navigation:
- Enjoy a seamless user experience with clean UI transitions.
#### 📱 Responsive Design:
- The app adjusts flawlessly across devices of all sizes.



## 🏗️ Project Architecture

```

lib/
├── api/
│   └── models/           # Classes and models for API data
│
├── core/
│   ├── helper/           # Helper utilities and functions
│   └── theming/          # App-wide themes and styles
│
├── feature/
│   ├── favorites/        # Favorites feature
│   │   ├── screens/      # Screens for Favorites UI
│   │   └── widgets/      # UI components for Favorites
│   │
│   ├── home/             # Home feature
│   │   ├── screens/      # UI screens for Home
│   │   └── widgets/      # Components for Home screens
│   │
│   ├── movie/            # Movies feature
│   │   ├── screens/      # UI screens for Movie details
│   │   └── widgets/      # UI components for Movie screens
│   │
│   ├── onboarding/       # Onboarding feature
│   │   ├── data/         # Onboarding data sources
│   │   ├── screens/      # Onboarding UI screens
│   │   └── widgets/      # Widgets for Onboarding
│   │
│   └── person/           # Person feature
│       ├── screens/      # Screens related to person details
│       └── widgets/      # UI components for Person
│
├── linux/                # Linux platform support
├── macos/                # macOS platform support
├── web/                  # Web platform support
├── windows/              # Windows platform support
│
pubspec.yaml              # Project dependencies
README.md                 # Project documentation
.gitignore                # Git ignored files

```


## 🌙 UI Screens
### 1. Splash
<p align="center">
 <img src="https://github.com/YousefElkholy22/CelebView-App/blob/main/assets/screens/splash.png" width="200" />
</p>

### 2. Onboarding
<p align="center">
 <img src="https://github.com/YousefElkholy22/CelebView-App/blob/main/assets/screens/onboarding%201.png" width="200" />
 <img src="https://github.com/YousefElkholy22/CelebView-App/blob/main/assets/screens/onboarding%202.png" width="200" />
 <img src="https://github.com/YousefElkholy22/CelebView-App/blob/main/assets/screens/onboarding%203.png" width="200" />
</p>

### 3. Home 
<p align="center">
 <img src="https://github.com/YousefElkholy22/CelebView-App/blob/main/assets/screens/home.png" width="200" />
 <img src="https://github.com/YousefElkholy22/CelebView-App/blob/main/assets/screens/search.png" width="200" />
 <img src="https://github.com/YousefElkholy22/CelebView-App/blob/main/assets/screens/person_info.png" width="200" />
</p>


### 4. Person Work
<p align="center">
 <img src="https://github.com/YousefElkholy22/CelebView-App/blob/main/assets/screens/person_work.png" width="200" />
 <img src="https://github.com/YousefElkholy22/CelebView-App/blob/main/assets/screens/works.png" width="200" />
</p>

### 5. Favorites
<p align="center">
 <img src="https://github.com/YousefElkholy22/CelebView-App/blob/main/assets/screens/favorites.png" width="200" />
</p>

## 🚀 Running the App

How to run the app on different platforms (Android, iOS).

### Android
Ensure you have an Android emulator running or an Android device connected.
Run the following command:

### IOS
Ensure you have an iOS simulator running or an iOS device connected.
Run the following command:

### Steps

1. Clone the repository

```sh
git clone https://github.com/YousefElkholy22/CelebView-App.git
cd CelebView-App
```

2. Install dependencies:

```sh
flutter pub get
```

3. Run the application:

```sh
flutter run
```

## 🔧 Running Tests

How to run the unit tests

### Steps

1. Clone the repository

```sh
git clone https://github.com/YousefElkholy22/CelebView-App.git
cd CelebView-App
```

2. Install dependencies:

```sh
flutter pub get
```

3. Run the tests:

```sh
flutter test
```


## ▶️ Contact

If you have any questions, feel free to contact us:

Email: elkkholyyoussif@gmail.com
