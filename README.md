 *Google Maps Location Picker in Flutter

Overview

This Flutter application allows users to select a location on Google Maps and view the selected location as a static image. The app features an interactive map where users can tap to place a marker and confirm their selected location.

Features

Interactive Google Map for selecting locations

Red marker indicating selected location

Static image preview of selected location using Google Maps Static API

User-friendly UI with Material Design components

Dependencies

Ensure the following dependencies are added to your pubspec.yaml file:


Setup Instructions

Enable Google Maps API:

Enable the Google Maps SDK for Android and iOS from the Google Cloud Console.

Enable the Google Static Maps API for displaying static images.



Code Explanation

1. Main Application (MyApp)

The app initializes the HomePage where users can interact with the map.

2. HomePage Widget

Displays a button to open the MapSample screen.

Shows the selected location as a static image when a user selects a location.

3. MapSample Widget

Displays a Google Map where users can tap to place a marker.

A "Confirm Location" button allows users to return the selected location to the HomePage.
