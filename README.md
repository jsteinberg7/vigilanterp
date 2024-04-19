# Vigilanterp
Bitcamp 2022 submission. By Andrew Muirhead, Jason Steinberg and Yuvan Sundrani. 

![Demo pic 1](/images/1.png) ![Demo pic 2](/images/2.png) ![Demo pic 3](/images/3.png)


## Inspiration
My family has been relied on the Neighbors App to keep track of suspicious activity around our neighborhood. People can anonymously report a crime or a suspected crime and notify their neighbors. These reports are logged and shown on a map to give an overview of any threats around the neighborhood. 

Terp nightlife is a huge part of socializing at UMD. We decided to take a similar approach as the Neighbors App to protecting vulnerable Terps around campus. Imagine you and your friends are walking back to your dorm at 10pm, and a strange old man begins to follow you. You manage to evade him, but you're worried he might try to bother someone else. If you don't feel like calling the police, you can file an anonymous report on Vigilanterp describing the suspect, incident and auto-recorded location of the incident. Incidents will be displayed for all Terps to see on a real-time icon-coded map. A report can consist of a form and also a recording, either of yourself, a situation or a suspicious person. These recordings are a part of the public report and will be visible to UMPD through the cloud. 
## What it does
When you open the app, you will be prompted to either file a report or view the report map. If you choose to file a report, you will categorize your report and fill out a form. An optional recording can accompany your report to provide further context or evidence. Recordings are automatically uploaded to the cloud, so police have instant access! Once you have filed your report, it will appear on the live incident map as a floating marker at the location where your incident happened, accessible by police and nearby users. 
## How we built it
Using Flutter, a Dart framework for developing cross-platform mobile apps, we built our front-end and designed a simple UI. We utilized a plethora of Flutter packages to record, compress and upload videos to Firebase. Firebase is the basis of our back-end and stores user recordings on the cloud. Forms are also stored in the cloud using Firestore.

## Challenges we ran into
Besides the hours of package installations and initial bug fixing, some challenges we encountered were...
- Storage limitations on Firebase (incentivized adding video compression)
- Work flow (learned and used Git and LiveShare VS plugins for workflow)
- Jason and Yuvan are Flutter experts. Andrew (me) was not, so I spent plenty of time reading docs and learning
- Version conflicts between Firebase and Camera APIs
- Merging work on UI with back-end code
- What concerns do people have while socializing at night? We asked a bunch of friends what they thought, and used feedback to design our different incident categories.

## Accomplishments that we're proud of
- Effective video compression that reduced cloud storage demands 3x
- A great alternative to calling the police in many situations we've all experienced
- A working app! We turned an idea into a full app that can help keep Terps safe in a matter of hours.
- Learning! We all learned new APIs, languages and frameworks in the process.
Having this final product after only one/two days of work is something our group is proud of as a whole.

## What we learned
- Andrew 
    - Learned tons about Flutter and Dart development. 
    - Experience using Git and VS Code Live Share for collaboration.
    - Flutter camera API, location/coordinates API
    - UI design using widget-based approach
    - Uploading forms and videos to the cloud
    - Video compression for cloud storage maximization
- Yuvan
    - Furthered my expertise with Flutter and Dart.
    - Learned more about Firebase and pushing live data, assets, and recordings to the cloud.
    - User interface (UI/UX) design.
    - Fetching immediate location coordinates using API's.
- Jason 
    - Gained new experience with Flutter camera API.
    - Learned how to manipulate video files and upload to the cloud.
    - Learned techniques to simplify UI, including abstractions and use of shadows.
    - Practiced efficiency techniques in rapid mobile app prototyping.

## What's next for Vigilanterp
In order to take Vigilanterp to market, we need to develop a police-side application for easy access to our database. Police can access data directly through our database, but we need to convert our raw data into simplified, AI-powered data and alerts to provide police with the most useful reports possible. Vigilanterp is an app that could truly change the game for keeping students and police safe and informed.
