# Fetch Data from Api

## How to Run:
1. Clone this repository
   - Copy the GitHub Repo URL ()
   - Open Terminal / Command Prompt / VS Code terminal
   - Run the git clone command: git clone https://github.com/your-username/user-directory-app.git
3. Run `flutter pub get`
4. Run with: `flutter run -d chrome`

## Mobile view

<img src="https://github.com/user-attachments/assets/6b3677ec-8c74-46a8-8628-cdcc071d1f8e" width="200" height="350" alt="App Screenshot"/>

## Web view

<img src="https://github.com/user-attachments/assets/7da16b35-190f-4899-89ac-1810fe95a544"  height="350" alt="App Screenshot"/>

# Note :-
User profile pictures load perfectly on the mobile app using images from the randomuser.me API.

However, on Flutter Web, the images don't show up because of browser security rules called CORS. These rules block images from some websites if they don’t have special permissions.

To handle this smoothly, the web version of the app displays a placeholder with the letter of the user's first and last name instead of the profile picture. This keeps the app looking neat and working well on web.
