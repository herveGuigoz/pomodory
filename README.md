# Pomodory

Pomodoro Timer

## Build app for macOs

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

## License

MIT &copy; [Guigoz Herve](https://github.com/herveGuigoz)

Inspired by [@pomotroid](https://github.com/Splode/pomotroid)

