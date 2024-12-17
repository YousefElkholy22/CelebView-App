# 🥇 CelebView 

## 📊 Table of Contents

1. [Overview](#Overview)
2. [Features](#Features)
3. [Project Architecture](#project-architecture)
4. [UI Screens](#ui-screens)
5. [Demo](#demo)
6. [Contributing](#Contributing)
7. [Running the App](#Running-the-App)
8. [Running Tests](#Running-Tests)
7. [License](#License)
8. [Contact](#Contact)

## 👌 Overview

CelebView is a Flutter-based mobile application that provides users with a smooth and intuitive way to explore celebrity profiles and their notable works. The app is user-friendly, responsive, and packed with essential features for a seamless browsing experience.

🔥 Features
User Features
🌟 Celebrity Profiles: View detailed information about celebrities and their most famous works.
🔍 Search Functionality: Quickly search for celebrities by name.
❤ Favorites: Mark celebrities as favorites to revisit their profiles easily.
🎬 Smooth Navigation: Enjoy a seamless user experience with clean UI transitions.
📱 Responsive Design: The app adjusts flawlessly across devices of all sizes.



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
 <img src="https://github.com/user-attachments/assets/4f73ba27-2de5-4fc5-b0a3-858afae4f9aa" width="200" />
</p>

### 2. Onboarding
<p align="center">
 <img src="https://github.com/user-attachments/assets/da514af4-2796-42bd-934f-59326e046a04" width="200" />
 <img src="https://github.com/user-attachments/assets/8c40a21f-43c1-4714-ac47-72832bfac748" width="200" />
 <img src="https://github.com/user-attachments/assets/13f6b75e-7904-486c-8ef8-28b656129d3b" width="200" />
</p>

### 3. Auth
<p align="center">
 <img src="https://github.com/user-attachments/assets/041b708b-b0d1-4283-968a-4bc33c29d166" width="200" />
 <img src="https://github.com/user-attachments/assets/51d4a847-cd94-4064-a062-27501dbb8c21" width="200" />
 <img src="https://github.com/user-attachments/assets/d258d8e3-d8b7-415a-9bb5-879c9709fe77" width="200" />
 <img src="https://github.com/user-attachments/assets/0b5da39b-eb77-4af3-96da-f401ea77405e" width="200" />
 <img src="https://github.com/user-attachments/assets/020f66d6-7424-465f-b0ee-7f0e1eec3362" width="200" />
</p>



### 4. Questions
<p align="center">
 <img src="https://github.com/user-attachments/assets/b64b939b-e48e-4adf-bacd-f356a24df587" width="200" />
 <img src="https://github.com/user-attachments/assets/a0262d94-183d-4c81-b39e-cb8601041d4b" width="200" />
 <img src="https://github.com/user-attachments/assets/d15865f1-99ce-43e8-af33-ba24cc67ae2d" width="200" />
</p>

### 5. Home
<p align="center">
 <img src="https://github.com/user-attachments/assets/91e0c716-ebf3-4924-b348-c8224ee7dcec" width="200" />
 <img src="https://github.com/user-attachments/assets/46c6e472-b603-4296-a8e3-33b114517895" width="200" />
 <img src="https://github.com/user-attachments/assets/ff526e92-9214-4191-b58e-e91b8e2fd51d" width="200" />
 <img src="https://github.com/user-attachments/assets/5ed60b4d-0f3d-45e2-8b7e-1a3c4305d54d" width="200" />
</p>

### 6. Favorites
<p align="center">
 <img src="https://github.com/user-attachments/assets/3364ea82-5e14-4204-b4f5-a7b2b5dd0eaa" width="200" />
 <img src="https://github.com/user-attachments/assets/e1d1ee20-13e1-4a65-942e-fe884aa6c04e" width="200" />
</p>

### 7. Event Details
<p align="center">
 <img src="https://github.com/user-attachments/assets/1909d9dd-eb1f-462d-b7fb-7e5819b92c18" width="200" />
 <img src="https://github.com/user-attachments/assets/c615aed6-4941-42e0-8fb4-b04d9772c219" width="200" />
 <img src="https://github.com/user-attachments/assets/bca66c92-4796-4df2-8a0f-3fd86e000bbe" width="200" />
</p

### 8. Calendar
<p align="center">
 <img src="https://github.com/user-attachments/assets/9b24eeb1-5245-4b93-9ea8-8788ed5df595" width="200" />
 <img src="https://github.com/user-attachments/assets/1bf9d15b-4525-44e2-9d9c-12d0763b0b7d" width="200" />
</p

### 9. Chatbot
<p align="center">
 <img src="https://github.com/user-attachments/assets/dc5cb254-7aa0-477f-9b7d-c74edf05190f" width="200" />
 <img src="https://github.com/user-attachments/assets/f5fbef54-3089-434f-bde9-1ef0c8366617" width="200" />
</p

### 10. Organizers
<p align="center">
 <img src="https://github.com/user-attachments/assets/9b3a9b9e-c405-4ba8-9b4c-1debde037fe5" width="200" />
 <img src="https://github.com/user-attachments/assets/8348856b-4370-43b1-86b9-ae76bd416f46" width="200" />
 <img src="https://github.com/user-attachments/assets/9c2dfa48-1cc8-4d75-97fc-a9c683a77f9b" width="200" />
 <img src="https://github.com/user-attachments/assets/cf67ad1f-e61d-4466-8b66-2fe675e2474a" width="200" />
</p

  

## ✔️ Demo
<div align="center">
  <video src=https://github.com/user-attachments/assets/f7a3e789-eb43-49d3-b3a5-440e5ee685f8 width="200" />
</div>


## ⛑️ Contributing

Contributions are welcome!

1. Fork the repository.
2. Create a new branch (`git checkout -b feature-branch`).
3. Make your changes and commit them (`git commit -m 'Add new feature'`).
4. Push to the branch (`git push origin feature-branch`).
5. Create a new Pull Request.

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
git clone https://github.com/swarmsTeam/swarms-mobile.git
cd swarms-mobile
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
git clone https://github.com/swarmsTeam/swarms-mobile.git
cd swarms-mobile
```

2. Install dependencies:

```sh
flutter pub get
```

3. Run the tests:

```sh
flutter test
```


## 📁 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## ▶️ Contact

If you have any questions, feel free to contact us:

Email: ahmed.arafat3535@gmail.com
