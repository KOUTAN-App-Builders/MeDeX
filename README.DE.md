*Hinweis: Diese README wurde von einer generativen KI aus der japanischen Version ins Deutsche übersetzt.*

# **MeDeX**



## **[Über dieses Projekt]**
- Diese App wurde für Zwecke wie die Verwaltung von Patientendaten in Krankenhäusern entwickelt.
- Dieses Projekt besteht hauptsächlich aus zwei Apps.
- Einer Mac-App und einer iOS-App.
- Wir hoffen, dass dieses Projekt für Sie nützlich ist!


## **[App-Funktionen]**
### **(macOS App)**
- Die Einrichtung des krankenhausinternen Servers ist ebenfalls für die Implementierung in der macOS-Version der App geplant.
- Separate Anmeldebildschirme für Administratoren und Ärzte.
- Administrator-Bildschirm
    1. Verwaltung von Ärztedaten (Hinzufügen und Bearbeiten von Namen, Passwörtern und medizinischen Fachbereichen)
    2. Verwaltung von Patientendaten (Bearbeiten von Namen und Passwörtern)
    3. Verwaltung von Administratordaten (Hinzufügen und Bearbeiten von Namen und Passwörtern)
    4. Verwaltung von Fachbereichen (Hinzufügen, Bearbeiten und Löschen von Fachbereichen)
    5. Netzwerk-Einstellungen (Bearbeiten von Serverinformationen)
- Arzt-Bildschirm
    1. Liste der heutigen Patienten (Bildschirm mit der Liste der Patienten, die am aktuellen Tag untersucht werden)
    2. Liste aller Patienten (Bildschirm mit der Liste aller Patienten)
    - Auf die persönlichen Daten und die Krankenakte (medizinische Aufzeichnungen) der Patienten kann von jedem Bildschirm aus zugegriffen werden.
    - Ein Bildschirm zum Erstellen von Krankenakten ist ebenfalls vorhanden.

### **(iOS App)**
- Separate Anmeldebildschirme für Ärzte und Patienten.
- Arzt-Bildschirm
    - Ähnliche Funktionen wie die macOS-Version.
- Patienten-Bildschirm
    1. Hinzufügen von Name, Passwort und persönlichen Daten.
    2. Erstellen von Terminen.
    3. Beantwortung des Fragebogens vor der Untersuchung.


## **[Probleme und erwartete Funktionen]**
**Diese Liste von Problemen und erwarteten Funktionen wird nach der nächsten Veröffentlichung zurückgesetzt.**
- [x] Fertigstellung der iOS-Version der App.
- [ ] Suche nach Ärzten und Patienten aus einer Liste.
- [ ] Aufbau der Einrichtung eines LAN-basierten Datenaustauschsystems unter Verwendung eines Servers.
- [ ] Implementierung des Foundation Models Framework zur Unterstützung der Eingabe von Krankenakten.
- [ ] Implementierung von MedGemma zur Unterstützung bei der Entdeckung übersehener Aspekte während der Diagnose.
- [ ] Einführung eines DatePickers für Termine (ermöglicht die Überprüfung der Verfügbarkeit basierend auf den Einstellungen von Admin und Arzt sowie anderen Terminen).
- [ ] Hinzufügen einer Symptomliste zum medizinischen Fragebogen (iOS-App).
- [ ] 


## **[Links zu den jeweiligen App-Projekt-Branches]**
**:warning: Wichtig**

**MeDeX ist nicht mehr in separate Branches unterteilt und wurde im `main`-Branch zusammengeführt.** 

**Die unten verlinkten Branches werden derzeit nicht verwendet. Sie werden als Archiv aufbewahrt.**
- Klicken Sie [hier](https://github.com/KOUTAN-App-Builders/MeDeX/tree/MeDeX-iOS-App), um auf den iOS-App-Branch zuzugreifen.
- Klicken Sie [hier](https://github.com/KOUTAN-App-Builders/MeDeX/tree/MeDeX-macOS-App), um auf den Mac-App-Branch zuzugreifen.
- Klicken Sie [hier](https://github.com/KOUTAN-App-Builders/MeDeX/tree/MeDeX-Data-Manager-(Swift-Package)), um auf den Swift-Package-Branch für die Datenverwaltung zwischen mehreren Geräten zuzugreifen.


## **[Links zu den README-Dateien der jeweiligen Projekte: Alle auf Englisch]**
- Klicken Sie [hier](https://github.com/KOUTAN-App-Builders/MeDeX/tree/main/MeDeX%20Documentation/README%20Files%20for%20Mac%20App/README%20for%20Mac%20App.EN.md), um auf die README-Datei der Mac-App zuzugreifen.
- Klicken Sie [hier](https://github.com/KOUTAN-App-Builders/MeDeX/tree/main/MeDeX%20Documentation/README%20Files%20for%20iOS%20App/README%20for%20iOS%20App.EN.md), um auf die README-Datei der iOS-App zuzugreifen.
- **Die README-Datei für den Swift Package Data Manager wurde noch nicht erstellt. Sie wird erstellt, sobald sie benötigt wird.**


## **[Referenz]**
- ChatGPT: [Link](https://chatgpt.com)

**Vielen Dank!**

## **[Vom Entwickler]**
Vielen Dank für Ihren Besuch in diesem Repository!
Ich bin ein Student, der im Frühjahr 2026 die Universität begonnen hat.
Außerdem lerne ich `Swift`, und dieses Projekt ist eines meiner ersten Projekte.
Ich wäre Ihnen dankbar, wenn Sie dieses Projekt nicht als Ihr eigenes ausgeben oder für kommerzielle Zwecke veröffentlichen würden.
Vielleicht werde ich diese App in Zukunft im App Store veröffentlichen.
Ich habe diese App mit der Unterstützung von ChatGPT erstellt und stand vor verschiedenen Problemen, aber die Benutzeroberfläche der macOS-App ist fast fertig!
Wenn Sie im medizinischen Bereich arbeiten und die Verwendung dieser App in Betracht ziehen, kontaktieren Sie mich bitte unter gikou21doc@gmail.com.
Funktionsanfragen oder Fehler-/Bug-Meldungen aus der Entwickler-Community sind ebenfalls sehr willkommen!
Da ich jedoch selbst Anfänger bin, weiß ich möglicherweise nicht, wie man Fehler behebt. Jede Art von Idee oder Vorschlag ist eine große Hilfe, daher würde ich mich sehr freuen, wenn Sie einen Kommentar im Reiter "Issues / Discussions" hinterlassen könnten.
Ich hoffe, Sie haben genauso viel Freude an dieser App wie ich. Ich wünsche allen Entwicklern eine fantastische Entwicklungserfahrung!


Vielen Dank, 
KOUTAN-App-Builders


    MeDeX  © 2026 by KOUTAN-App-Builders is licensed under CC BY-NC-SA 4.0. To view a copy of this license, visit https://creativecommons.org/licenses/by-nc-sa/4.0/