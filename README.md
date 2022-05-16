# shortcut_xkcd

A comic app for the shortcut coding challenge.

- I used an MVP architecture along with the dependency injection.

Since I chose to store the Favorite Comics in shared preferences, then I thought I will be needing the dependency Injection to be able to choose which source I am going to be using to fetch data (Api or shared prefences)

- For the UI, I have just started with the bottom navigation bar to inclue : 
  - The comics view : where I will be displaying a list including the latest comic followed by random comics
  - The favorites view : a list of the favorite comics titles that the user adds
  - The settings view 

- The comic is a photoViewer where you can zoom in and out, and also includes buttons to explain the comic; to read the explanation we need to open a web view ( using webview_flutter package). 

- This is actually my plan for the app, since I ran into a busy work week (working 10 hours a day because we had 3 days for the Eid holiday and work cumulation was crazy)  I couldn't really finish what I have intended to do.



