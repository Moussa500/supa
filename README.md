# Supa - Japanese Food Delivery App 🍣

## Overview
**Supa** is a Japanese food delivery app that allows users to explore a wide range of Japanese cuisine, order food for delivery, and manage their food cart easily. The app provides an intuitive interface for browsing menus, viewing product details, and placing orders quickly. With a user-friendly onboarding flow, it ensures a seamless experience from sign-up to checkout.

## Features
- **Splash Screen**: Simple, elegant branding introduction.
- **Welcome Screen**: Offers options to sign in or sign up, along with an overview of the app.
- **Get Started**: Promotes fast delivery services for your favorite Japanese dishes.
- **Login and Sign Up**: Secure and quick login and registration process with support for Google and Facebook authentication.
- **Homepage**: Explore featured dishes, browse categories, and access popular menu items.
- **Menu**: Organized menu with categories such as Featured, Popular, and others.
- **Product Details**: View detailed information on each food item, including ingredients, price, and customization options.
- **Cart**: Manage your selected items, view total cost, and proceed to checkout.

## Screens
1. **Splash**: The first screen users see upon launching the app, featuring the Supa logo.
2. **Welcome**: Introduces users to the app with a welcome message and sign-in or sign-up options.
3. **Get Started**: Quick start screen encouraging users to explore and order from the app.
4. **Login**: Allows users to log into their account using email and password, with social login options.
5. **Sign Up**: A registration form for new users to create an account.
6. **Homepage**: Displays a variety of food options, including featured and popular items.
7. **Menu**: A categorized menu for easy browsing.
8. **Product Details**: Shows more information about individual food items, including options for customization.
9. **Cart**: A summary of the user’s selections, with options to adjust quantities and proceed to checkout.

## Technologies Used
- **Flutter**: For building a cross-platform mobile app.
- **Firebase Authentication**: To handle user login and registration securely.
- **Firestore**: For managing menu data and user orders.
- **Google Maps API**: To help users locate nearby restaurants for pickup orders.
- **Dio**: For managing network requests and fetching menu data from the backend.
- **Stripe API**: For secure payments (future integration).

## Installation

1. Clone this repository:
   ```bash
   git clone https://github.com/username/supa-japanese-food-app.git
   ```
2. Navigate into the project directory:
   ```bash
   cd supa-japanese-food-app
   ```
3. Install dependencies:
   ```bash
   flutter pub get
   ```
4. Set up Firebase:
   - Add your Firebase `google-services.json` (Android) or `GoogleService-Info.plist` (iOS) to the appropriate platform folder.

5. Run the app on an emulator or physical device:
   ```bash
   flutter run
   ```

## API Integration
- **Google Maps API**: Enables restaurant location services.
- **Stripe API**: For payment processing (add your keys to the `.env` file).
- **Firebase**: Handles authentication and stores user data.

## Contribution
We welcome contributions from the community! To contribute:
1. Fork the repository.
2. Create a new branch (`git checkout -b feature/your-feature`).
3. Make your changes and commit (`git commit -m "Add your feature"`).
4. Push your changes to your fork (`git push origin feature/your-feature`).
5. Create a pull request.


