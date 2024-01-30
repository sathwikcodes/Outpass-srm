# SRM University Outpass Application

Welcome to the SRM University Outpass Application! This application streamlines the outpass request process for SRM University students. Built with Flutter, Firebase, and Twilio, our app provides a convenient and efficient way for students to apply for outpasses and for parents to approve them securely.

## About the Project

The SRM University Outpass Application simplifies the outpass request workflow by digitizing the entire process. Students can submit outpass requests through the app, which are then sent to their parents for approval. Once approved, the outpass is generated and can be collected by the student from the designated authority.

The app utilizes Firebase for cloud storage and Twilio for OTP verification, ensuring secure communication and authentication throughout the process.

## Key Features

- **User Authentication**: Secure user authentication using Firebase Authentication.
- **Outpass Request Submission**: Students can submit outpass requests directly from the app.
- **Parent Approval**: Outpass requests are sent to parents for approval via SMS with OTP verification.
- **OTP Verification**: Twilio integration for OTP verification ensures secure parent authentication.
- **Real-time Updates**: Students receive real-time updates on the status of their outpass requests.
- **Profile Management**: Users can manage their profiles and update contact information as needed.

## Getting Started

1. **Clone the Repository**: Clone this repository to your local machine using Git:
git clone https://github.com/sathwikcodes/Outpass-srm.git

2. **Set Up Firebase**: Create a Firebase project on the [Firebase Console](https://console.firebase.google.com/) and configure Firebase Authentication and Firestore.

3. **Update Firebase Configuration**: Update the Firebase configuration in your Flutter project by replacing the `google-services.json` file for Android or `GoogleService-Info.plist` file for iOS.

4. **Set Up Twilio**: Sign up for a Twilio account and obtain API credentials for SMS messaging and OTP verification.

5. **Update Twilio Configuration**: Update the Twilio configuration in your Flutter project with your Twilio API credentials.

6. **Install Dependencies**: Navigate to the project directory and install the necessary dependencies using Flutter's package manager:
cd outpass-app
flutter pub get

7. **Run the App**: Launch the Flutter app on your device or simulator:
  flutter run

8. **Start Using the App**: Students can create accounts, submit outpass requests, and track their status, while parents can receive and approve outpass requests via SMS OTP verification.

## Screenshots

![Screenshot](https://github.com/sathwikcodes/Outpass-srm/blob/main/Screenshot%20(36).png)
![Screenshot](https://github.com/sathwikcodes/Outpass-srm/blob/main/Screenshot%20(37).png)

## Contributing

Contributions to the SRM University Outpass Application are welcome! If you have any ideas for new features, improvements, or bug fixes, please feel free to [open an issue](https://github.com/sathwikcodes/outpass_srm/issues) or submit a pull request.

## Feedback and Support

If you have any feedback, questions, or need support with the SRM University Outpass Application, please don't hesitate to [contact us](mailto:support@outpassapp.com). We're here to help!

## Credits

- Project developed by [Sathwik Batta]
- Technologies used:
- Flutter
- Firebase
- Twilio

## License

This project is licensed under the [MIT License](LICENSE).
