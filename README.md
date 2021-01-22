# Garbage-Disposal-Locations-App For CUNY Hackathon of 2021 @Jan23-24
## Team Members
- Farhene Sultana
- Nishanth Prajith
- Maisa Ahmed
- Justin Siu

## How to Run Program
- Install Flutter on Computer or PC by going to this website [Flutter.dev](https://flutter.dev/docs/get-started/install)
- Will add more steps later 

## Summary of Project
Our project aims to help users find all the garbage disposal locations near them. They would open the app on their phones to see on the maps to find the nearest one.
We plan on having every user have an account for this application.


## Functional Goals
- Have every user be able to sign in to an account
  - Each account would have some form of stats of how much they either threw away, or recycled.
- Each user could navigate around the map and see for any garbage disposal locations near them in realtime.

# UI/FrontEnd/Backend Goals

## FrontEnd
  - Use Flutter with Dart or Javascript to make the design of the project
  - Also use Google Maps API, perhaps Geolocation or general map API for the user to be able to use and navigate around.
## UI
  - Use Glass marker style for transparency for user viewing satisfaction
## BackEnd
  - Use SQLite as our backend technology to keep track of custom locations of garbage locations.


# Issues
- Auto Layout could be an issue
- Google Maps could not be previewed on the app
- Doesn't have the desktop embedding, well limited in terms of Google Maps API
  - Nishanth keeps getting compatability errors or Null error.


# Things to do
- Update the loading screen 
- Fix up the Google Maps Preview (shows orange instead) using Google Maps API
   - Google Maps APi has markers we could use.
   - We can put custom locations and then using user location we can sort out the closest garbage location near them.
   - We can style the map that we are using mapstyle with like Google.com
      - We can customize general colorscapes of the features on the map.
      - We get a json file to copy and paste to flutter and the map will be rendered.
- Find data or put in custom data of garbage disposal locations
- Fixing UI layout and how will it look with the map?
- Add sign-in authentication (bonus)
