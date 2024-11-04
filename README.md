
# Brillo Sportz - Flutter Developer Assessment

A Flutter application designed to help sports enthusiasts record, network, and connect with like-minded people. This project focuses on delivering a smooth, visually appealing experience that adapts to light and dark modes based on system settings.

## Project Overview

This application covers the UI for the following functionalities as per the assessment requirements:

- **User Authentication**: Users can register and log in using either their phone number or email and password.
- **User Interests**: Sports interests like Football, Basketball, Ice Hockey, etc., can be selected during registration.
- **Profile Page**: Displays the user’s profile picture or avatar, cover photo, and personal details.
- **Bottom Navigation**: A clean bottom navigation bar with tabs for:
  - Profile
  - Buddies (placeholder)
  - Discover (placeholder)
  - Settings & Privacy

While backend functionality was intended for managing user authentication and data, I couldn’t implement it due to time constraints. Instead, I used **SharedPreferences** and riverpod to manage and monitor the user’s login state locally. If given more time, I would have integrated local storage more comprehensively.

## Key Features

1. **Login/Register UI**:
   - **Register**: Email, Phone Number, Password, and Interest selection.
   - **Login**: Allows login with either phone number or email.
   - **Forgot Password**: Placeholder UI.
   
2. **Profile Page (Static)**:
   - Shows the user’s avatar, cover image, and personal information.
   - Displays selected sports interests.

3. **Settings & Privacy**:
   - Change Password, Update Email, Update Username, and Logout options (UI only).

4. **Light/Dark Mode**:
   - The app dynamically adapts to the system's light or dark mode setting, ensuring a comfortable viewing experience.

## Requirements & Limitations

- **Backend**: This task does not include backend integration, so none of the interactions will persist beyond the UI.
- **State Management**: Used SharedPreferences for basic state management of the user’s login status.
- **Form Validation**: All form fields are validated to improve user experience.


## Getting Started

To test the app, download the APK provided in the [Google Drive link](https://drive.google.com/drive/folders/1pc64YUxi-EjAggfgZcdkqD1vVdCgMguW?usp=drive_link). 

### Prerequisites

Ensure you have the Flutter SDK installed. You can check the Flutter documentation [here](https://flutter.dev/docs/get-started/install) for installation instructions.

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/olankan/brillo_sportz.git
   cd brillo_sportz
   ```
2. Install dependencies:
   ```bash
   flutter pub get
   ```
3. Run the app:
   ```bash
   flutter run
   ```
   
## Deliverables

1. [GitHub Repository](https://github.com/olankan/brillo_sportz.git)
2. [APK for Testing](https://drive.google.com/drive/folders/1pc64YUxi-EjAggfgZcdkqD1vVdCgMguW?usp=drive_link)

## Future Improvements

Given more time, the following enhancements would be prioritized:

- Implementing backend API integration for user authentication and data management.
- Enhancing state management with a more robust solution like Riverpod.
- Adding local storage capabilities to further persist data on the device.

---

Feel free to reach out if you have any questions about the code or need further instructions.
