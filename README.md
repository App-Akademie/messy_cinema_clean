# messy_cinema

Eine kleine Flutter-App für eine Kinowebsite bzw. Kino-Übersicht mit Filmkarten. Das Projekt demonstriert einen einfachen, gut strukturierten Aufbau mit einer Feature-Gliederung und einer Repository-ähnlichen Datenquelle für Mock-Daten.

## Überblick

`messy_cinema` zeigt eine horizontale Liste von Filmen als Karten an. Jede Karte enthält:

- Titel des Films
- Posterbild
- Laufzeit/Spielzeit
- Kurzbeschreibung
- Zwei Aktionsbuttons: `Ticket kaufen` und `Vorschau`

Die App verwendet Material Design und lädt die Film-Daten asynchron über ein `Future<List<Movie>>` und `FutureBuilder`.

## Features

- Responsive Material-UI mit Karte und AppBar
- Mock-Repository für Kinofilme
- Asynchrones Laden von Daten mit Ladeindikator
- SnackBar-Feedback bei Buttons
- Klare Trennung zwischen Datenmodell, Repository und Präsentation

## Projektstruktur

```text
lib/
├── main.dart
├── src/
│   ├── app.dart
│   └── features/
│       └── movies/
│           ├── data/
│           │   ├── movie.dart
│           │   ├── movie_repository.dart
│           │   └── mock_movie_repository.dart
│           └── presentation/
│               ├── movie_card.dart
│               └── movies_screen.dart
```

### Wichtige Komponenten

- `main.dart`: Einstiegspunkt der App
- `app.dart`: Initialisierung der MaterialApp und Übergabe der Filme
- `movie.dart`: Datenmodell für einen Film
- `movie_repository.dart`: Abstraktes Repository-Interface
- `mock_movie_repository.dart`: Beispiel-Implementation mit festen Filmdaten
- `movies_screen.dart`: Hauptbildschirm mit Filmkarten
- `movie_card.dart`: Einzelne Filmkarte mit Bild und Buttons

## Technologie

- Flutter
- Dart
- Material Design 3

## Voraussetzungen

- Flutter SDK 3.3.4 oder höher
- Ein Emulator, Simulator oder ein echtes Gerät
- Optional: VS Code oder Android Studio mit Flutter-Plugins

## Installation und Start

1. Repository klonen
2. Abhängigkeiten installieren:

```bash
flutter pub get
```

3. App starten:

```bash
flutter run
```

### Plattformen

Je nach gewünschter Zielplattform:

```bash
flutter run -d chrome
flutter run -d android
flutter run -d ios
flutter run -d linux
```

## Beispiel-Daten

Das Projekt enthält derzeit drei Beispiel-Filme als Mock-Daten:

- Star Wars
- Herr der Ringe
- Harry Potter

Diese werden in `MockMovieRepository` als `Movie`-Objekte definiert und simuliert als asynchron geladene Datenquelle.

## Status

Das Projekt ist ein kleiner Lern- und Demo-Anwendungsfall für Flutter mit einem einfachen Feature-Setup. Es enthält noch keine echte Backend-Anbindung, Datenbank oder persistente Speicherung.

## Lizenz

Das Projekt ist aktuell ohne explizite Lizenzangabe. Bitte bei Verwendung im öffentlichen Kontext die passende Lizenz ergänzen.
