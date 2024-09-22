#### Environment
To run this app, you need a device with pure Harmony OS, like beta2 or beta3. Or you can use the vertual device on DevEco Studio, but this needs you to have the developer permission.

#### Code structure
The main conde is in entry/src/main/ets/pages and  entry/src/main/ets/entryability, where the pages UI and logics are implemented. Ring and bell resources are stored in entry/src/main/resources, where four types of bells are stored and can be modified.

#### Brief intro
The main page after entered will show a list of 24 hours in a day. When clicking on one of the items, it will turns to a subpage containing specific time settings and bell selection. You can choose the specific time and bell sounds here. When you return to the main page, marks will be made to the corresponding hour list and the app will go off that ring when reaches the time you selected.
