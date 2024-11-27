# 🚀 **Food Delivery App**  

A **modern and seamless Food Delivery App** built using **Flutter** with **Firebase Authentication**. This app allows users to explore restaurants, browse menus, add items to their cart, and place orders – all wrapped in a clean, responsive, and intuitive design.  

✨ **Features**  

🔐 **Firebase Authentication**  
- **Sign Up** with Email and Password  
- **Login** with Email and Password  
- **Reset Password** functionality  
- **Google Sign-In** for quick access  

🎨 **User Interface**  
- **Modern and user-friendly** design  
- Fully **responsive layout** across devices  
- Real-time updates for restaurants and menus  

🍴 **Food Delivery Functionalities**  
- **Browse Restaurants** and Menus  
- Add/Remove Items from the **Cart**  
- **Place Orders** with a seamless checkout experience  
- **Track Orders** in real-time  

🔗 **Firebase Integration**  
- **Firestore**: Store restaurant data, menu items, and orders  
- **Firebase Authentication**: Secure and easy user login  
- **Firebase Storage**: Manage and display restaurant and food images  

🔧 **State Management**  
- Built using **Provider** for state management  
  *(You can replace with Riverpod/Bloc as per your preference)*  


⚙️ **Prerequisites**  

Before running the project, make sure you have the following set up:  

1. **Flutter SDK**  
   - Install the [Flutter SDK](https://flutter.dev/docs/get-started/install).  

2. **Firebase Project** 
   - Create a Firebase project in the [Firebase Console](https://console.firebase.google.com/).  
   - Enable **Email/Password Authentication** and **Google Sign-In** under Firebase Authentication settings.  
   - Set up a Firestore database and structure it based on your app's needs.  

3. **Firebase Configuration Files**
   - Download the `google-services.json` file from Firebase and place it in:
     android/app
      
   - For iOS, download the `GoogleService-Info.plist` file and place it in:  
     ios/Runner
      


🛠️ **Getting Started** 

Follow these steps to set up and run the app locally:  

 1️⃣ **Clone the Repository**  
git clone https://github.com/abdull-majeed/food-delivery-app.git  
cd food-delivery-app  

2️⃣ **Install Dependencies**
flutter pub get

3️⃣ **Set Up Firebase**
1: Add the google-services.json and GoogleService-Info.plist files to the respective directories.
2: Ensure your Firebase settings are properly configured for Android and iOS.

4️⃣ **Run the App**
flutter run  


