# Pomodory

An Pomodoro Timer app to boost your productivity

## What is Pomodory?

Pomodory is a customizable pomodoro timer that works on desktop & mobile. 
The aim of this app is to help you focus on any task you are working on, such as study, writing, or coding. 
This app is inspired by [Pomodoro Technique](https://francescocirillo.com/pages/pomodoro-technique) which is a time management method developed by Francesco Cirillo.

## What is Pomodoro Technique?

The Pomodoro Technique is created by Francesco Cirillo for a more productive way to work and study. 
The technique uses a timer to break down work into intervals, traditionally 25 minutes in length, separated by short breaks. 
Each interval is known as a pomodoro, from the Italian word for 'tomato', after the tomato-shaped kitchen timer that Cirillo used as a university student. 

- [Wikipedia](https://en.wikipedia.org/wiki/Pomodoro_Technique)


## How to use the Pomodoro Timer?

- Add tasks to work on today
- Set estimate pomodoros (1 = 25min of work) for each tasks
- Select a task to work on
- Start timer and focus on the task for 25 minutes
- Take a break for 5 minutes when the alarm ring
- Iterate 3-5 until you finish the tasks
  
## Features

- That works with macOs and mobile
- Color transition to switch moods between work time and rest time
- Notification at the end of a timer period
- Customizable timer intervals to suit your preference

### Installation

### Build app for macOs

- Get a certificate from Xcode. 
The simplest step is to use Xcode, add a new certificate. 
Read more about it [here](https://help.apple.com/xcode/mac/current/#/dev154b28f09)

- Once you have the certificate you need to find the identity for it to sign your app.
`security find-identity -p codesigning` run this in terminal and copy hash it gives you against the certificate name you just created.

- build the release version of your flutter app by running flutter build macOS in your project folder

- cd into the folder where your app is created. 
now run `codesign --deep --force --verbose --sign "<identity>" Application.app`.
Supply the hash we coped in step 2 in place of (Keep the quotes).

You should see something like this `Application.app: signed bundle with Mach-O thin (x86_64) [com.application]`

- Verify the signature `codesign --verify -vvvv Application.app and spctl -a -vvvv Application.app`

First one will give you something like

```bash
Application.app: valid on disk
Application.app: satisfies its Designated Requirement
```

Second one will give you something like

```bash
Application.app: accepted
source=Developer ID
origin=Developer ID Application: Spreaker Inc (xxx)
```
(Read More)[https://pracucci.com/atom-electron-signing-mac-app.html] (or)[https://flutter.dev/desktop#distribution]

### Define Window size

- Edit `MainFlutterWindow`
  ```swift
  self.setFrame(windowFrame, display: true)
  self.setContentSize(NSSize.init(width: 430, height: 550)) // +
  ```

- Disable resize
under `Runner/Ressources/MainMenu.xib`, unselect resize.

## License

MIT &copy; [Guigoz Herve](https://github.com/herveGuigoz)

