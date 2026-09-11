*Ce fichier README a été traduit de la version japonaise par une IA.*

# **MeDeX**



## **[À propos de ce projet]**
- Cette application a été développée dans le but de gérer les données des patients dans les hôpitaux.
- Ce projet se compose principalement de deux applications.
- Une application pour Mac et une application pour iOS.
- Nous espérons que ce projet vous sera utile !


## **[Fonctionnalités de l'application]**
### **(Application macOS)**
- La configuration du serveur hospitalier est également prévue pour être implémentée dans la version macOS.
- Écrans de connexion séparés pour l'administrateur et les médecins.
- Écran administrateur
    1. Gestion des données des médecins (ajout et modification des noms, mots de passe et départements médicaux)
    2. Gestion des données des patients (modification des noms et mots de passe)
    3. Gestion des données des administrateurs (ajout et modification des noms et mots de passe)
    4. Gestion des départements médicaux (ajout, modification et suppression des départements)
    5. Paramètres réseau (modification des informations du serveur)
- Écran médecin
    1. Liste des patients du jour (écran de liste des patients consultant le jour même)
    2. Liste complète des patients (écran de liste de tous les patients)
    - Les informations personnelles des patients et le dossier médical (registre des soins) sont accessibles depuis n'importe quel écran.
    - Un écran de création de dossier médical est également fourni.

### **(Application iOS)**
- Écrans de connexion séparés pour les médecins et les patients.
- Écran médecin
    - Fonctionnalités similaires à la version macOS.
- Écran patient
    1. Ajout du nom, du mot de passe et des informations personnelles.
    2. Création de rendez-vous.
    3. Réponses au questionnaire médical avant la consultation.


## **[Problèmes et fonctionnalités attendues]**
**Cette liste des problèmes et des fonctionnalités attendues sera réinitialisée après la prochaine version.**
- [x] Finalisation de l'application iOS.
- [ ] Recherche de médecins et de patients à partir de la liste.
- [ ] Mise en place d'un système de partage de données sur réseau local (LAN) à l'aide d'un serveur.
- [ ] Implémentation du Foundation Models Framework pour l'aide à la saisie des dossiers médicaux.
- [ ] Implémentation de MedGemma pour aider à découvrir les diagnostics potentiellement manqués.
- [ ] Introduction d'un DatePicker pour les rendez-vous (permettant de vérifier les disponibilités en fonction des paramètres de l'administrateur et des médecins ainsi que des autres rendez-vous).
- [ ] Ajout d'une liste de symptômes au questionnaire médical (application iOS).
- [ ] 


## **[Liens vers les branches des projets d'application]**
**:warning: Important**

**MeDeX n'est plus divisé en branches individuelles et a été fusionné dans la branche `main`.** 

**Les branches liées ci-dessous ne sont actuellement plus utilisées et sont conservées en tant qu'archives.**
- Pour accéder à la branche de l'application iOS, cliquez [ici](https://github.com/KOUTAN-App-Builders/MeDeX/tree/MeDeX-iOS-App).
- Pour accéder à la branche de l'application Mac, cliquez [ici](https://github.com/KOUTAN-App-Builders/MeDeX/tree/MeDeX-macOS-App).
- Pour accéder à la branche du Swift Package permettant la gestion des données entre plusieurs appareils, cliquez [ici](https://github.com/KOUTAN-App-Builders/MeDeX/tree/MeDeX-Data-Manager-(Swift-Package)).


## **[Liens vers les fichiers README de chaque projet : Tous en anglais]**
- Pour accéder au fichier README de l'application Mac, cliquez [ici](https://github.com/KOUTAN-App-Builders/MeDeX/tree/main/MeDeX%20Documentation/README%20Files%20for%20Mac%20App/README%20for%20Mac%20App.EN.md).
- Pour accéder au fichier README de l'application iOS, cliquez [ici](https://github.com/KOUTAN-App-Builders/MeDeX/tree/main/MeDeX%20Documentation/README%20Files%20for%20iOS%20App/README%20for%20iOS%20App.EN.md).
- **Le fichier README du Swift Package Data Manager n'a pas encore été créé. Il le sera si nécessaire.**


## **[Référence]**
- ChatGPT : [Lien](https://chatgpt.com)

**Merci !**

## **[Mot du développeur]**
Merci d'avoir visité ce dépôt !
Je suis un étudiant entré à l'université au printemps 2026.
J'apprends également `Swift`, et ce projet est l'un de mes tout premiers.
Je vous serais reconnaissant de ne pas vous approprier ce projet ni de le publier à des fins commerciales.
Il est possible que je publie cette application sur l'App Store à l'avenir.
J'ai créé cette application avec le soutien de ChatGPT et j'ai fait face à divers problèmes, mais l'interface utilisateur de l'application macOS est presque terminée !
Si vous travaillez dans le secteur médical et envisagez d'utiliser cette application, veuillez me contacter à gikou21doc@gmail.com.
De plus, les demandes de fonctionnalités et les rapports d'erreurs/bugs de la part de la communauté des développeurs sont les bienvenus !
Cependant, étant moi-même débutant, il est possible que je ne sache pas comment les résoudre. Toutes vos idées et suggestions me seront d'une grande aide, et je serais ravi si vous pouviez laisser un commentaire dans l'onglet Issues / Discussions.
J'espère que vous apprécierez cette application autant que moi. Je souhaite à tous les développeurs une excellente expérience de développement !


Merci, 
KOUTAN-App-Builders


    MeDeX  © 2026 by KOUTAN-App-Builders is licensed under CC BY-NC-SA 4.0. To view a copy of this license, visit https://creativecommons.org/licenses/by-nc-sa/4.0/