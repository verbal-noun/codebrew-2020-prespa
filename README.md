<img src="img/prespa-banner.png" alt="Prespa Banner" width="500">

# Table of contents
- [Table of contents](#table-of-contents)
- [Prespa](#prespa)
- [How to run](#how-to-run)
- [Core features](#core-features)
- [Integration with hospitals](#integration-with-hospitals)
- [Key technology](#key-technology)

# Prespa
Our goal is assist hospitals to provide a much more organised and positive patient experience. When a team mate shared her experience of trying the juggle the complex and vast of medical documents, prescriptions, restrictions imposed on both her parents, it became her responsibility to manage everything. We soon discovered that we were not alone in having such an experience and people across the globe have similar fructions about medical practicioners. 

We firmly believe, that care does not have to end when the patient has finished their consultation and left the hospital. With Prespa, we will ensure that patients truly understand and act upon their prescriptions, medications and restrictions given by their medical practionars. 



| Prescriptions        | Medication list   | Restrictions, FAQ and Appointments   |
| ------------- |:-------------:| -----:|
| ![Screen 1](img/prespa-prescription.gif)    | ![Screen 2](img/prespa-medication.gif) | ![Screen 3](img/prespa-restrictions-faq-appointments.gif) |

# How to run
* clone the repository
* install the flutter [sdk](https://flutter.dev/docs/get-started/install)
* run `flutter doctor` in terminal to check your flutter installation
* install [Android Studio](https://developer.android.com/studio/install)
* create an virtual Android device and run the app in Android Studio
* for testing, use the default login credentials: email admin@example.com password admin

# Core features 
- Enable patients to keep track of understand prescriptions. 
- Assist in understanding complex instructions through dedicated sections. 
- Keep track of medications, their progression and provide additional knowledge about them.
- Assists with follow-up schedules if any. 


# Integration with hospitals
Our main customer are hospitals and we have developed a robust interface for them to input, monitor and respond to the patients needs. Hene we hav also developed a terminal interface fo the doctors. 


![Hospital Client](img/prespa-doctor-client.gif)



![Prespa API](img/prespa-api.gif)


# Key technology

- Patient app: Flutter 
- Doctor's terminal: React.js 
- Authentication: Firebase 
- Database & API calls: Firebase
