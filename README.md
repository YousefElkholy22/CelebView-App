# 🥇 Evnto

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

The "EVNTO" application was conceptualized to address the growing need for a centralized
platform at Mansoura University, where students can easily book and follow activities organized by
various volunteer teams. This report summarizes the key findings from research conducted on
competitive applications and a survey among students, and it presents actionable recommendations
for the development of the EVNTO application.

## 🔥 Features
### 1. User Features

#### 1.1 Email and Password Registration
- Description: Allows users to register using their email and password.
- Sub-Features:
  - Email Verification: A confirmation email is sent to verify the user's identity.
  - Password Strength Meter: Displays a visual meter indicating the strength of the password during creation.
  - Forgot Password: Provides an option for users to reset their password via email.
  - Social Media Registration: Users can register or log in using their social media accounts (e.g., Facebook, Google).

#### 1.2 Event Listings
- Description: Displays a comprehensive list of upcoming events, sessions, or workshops organized by volunteer teams or mentors.

#### 1.3 Event Listings Filtration
- Description: A categorized list of events based on:
  - Free or Paid
  - College

#### 1.4 Event Listings Search
- Description: Offers a robust search function allowing users to search for events based on criteria such as:
  - Date: Filter events by specific dates or date ranges.
  - College: Filter events by the organizing college.
  - Event Type: Filter by the type of event (e.g., workshop, seminar).
  - Team Name: Filter events organized by specific volunteer teams.

#### 1.5 Event Details
- Description: Provides detailed information about each event, including:
  - Date and Time: When the event will take place.
  - Location: Where the event will be held, with possible integration with maps for directions.
  - Description: A brief overview of what the event entails.
  - Ticket Availability: Information on whether tickets are required and their availability.

#### 1.6 Ticket Booking
- Description: Allows users to book tickets for events directly through the app, with options for selecting the number of tickets and payment (if applicable).

#### 1.7 Push Notifications & Reminders
- Description: Sends real-time updates and reminders about upcoming events, changes in event details, or important alerts to users.

#### 1.8 Feedback and Ratings
- Description: Enables attendees to leave feedback and rate events they have attended. This feedback helps event organizers improve future events.

#### 1.9 Social Media Sharing
- Description: Allows users to share event details directly to social media platforms, promoting the event and driving more ticket sales.

#### 1.10 Event Discovery Map
- Description: Provides a map view where users can discover events happening near them or at specific locations, with filters for event types or dates.

#### 1.11 User Profiles
- Description: Users can create and customize their profiles, including:
  - Interests: Users can list their interests, which helps the recommendation system provide personalized suggestions.
  - Skills: Users can add their skills, relevant to volunteering or participation in events.
  - Involvement History: A record of past events attended, helping users keep track of their participation.

#### 1.12 Favorites and Savings
- Description: Allows users to save their favorite teams and receive updates on their latest events.

#### 1.13 Calendar Integration
- Description: Users can add events to their personal calendars directly from the app, helping them stay organized.

---

### 2. AI Features for User

#### 2.1 Generative Chatbot
- Description: An NLP-powered chatbot that can answer questions about teams, events, and volunteering opportunities.
  - Contextual Understanding: The chatbot is designed to understand the context of conversations to provide accurate and helpful responses.

#### 2.2 Personalized Event Recommendations
- Description: The AI recommends events based on users’ interests, faculties, and past attendance.
  - Filters and Categories: Users can filter recommended events by faculty, date, type of event, or volunteer team.

---

### 3. Admin Features (Volunteering Teams, Mentors & Sponsors)

#### 3.1 Admin Registration
- Description: Admins can register through the dashboard and create profiles indicating their details.
  - Volunteering Team: They can add their mission, activities, achievements, interests, and contact information.
  - Mentor: 
    - Ability to add detailed personal and professional information, highlighting guidance they can offer.
    - Option to select their preferred engagement duration with the platform, either monthly, semi-annual, or annual commitments.
  - Sponsors: 
    - They can create profiles that include their company information, sponsorship interests, and the types of events or teams they are interested in supporting.
    - Option to select their preferred engagement duration with the platform, either monthly, semi-annual, or annual commitments.

#### 3.2 Managing Events, Sessions, or Workshops Details
- Description: Admins (Teams and Mentors only) can add, edit, and manage events, sessions, or workshops through the dashboard.
  - Overview: Admins can provide detailed descriptions, goals, content, speakers, and dates for their events.
  - Attendance Tracking: Teams can track how many students have registered to attend their events.

#### 3.3 Analytics and Insights
- Description: Provides admins with insights into event attendance, engagement, and feedback. This helps in data-driven decision-making and improving future events.


## 🏗️ Project Architecture

```
lib/
├── core/
│   ├── configs/
│   ├── constants/
│   ├── helpers/
│   │   ├── cache/ 
│   │   ├── enums/ 
│   │   ├── env/ 
│   │   ├── extensions/ 
│   │   ├── functions/ 
│   │   ├── observers/ 
│   │   └── utils/
│   ├── network/
│   ├── router/
│   ├── service_locator/
│   ├── styles/
│   └── widgets/
│ 
├── features/
│   ├── feature1/
│   └── feature2/
│       ├── bloc/ 
│       ├── data/ 
│       │   ├── models/ 
│       │   │   ├── Entites/ 
│       │   │   └── DTOs/
│       │   └── repos/
│       └── view/
│           ├── components/ 
│           └── pages/
pubspec.yaml
README.md
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
