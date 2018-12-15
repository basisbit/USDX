# UltraStar MG Edition
#### About
Fork of the UltraStar Deluxe (USDX) karaoke game.<br>
#### Note
Mostly is done trough Terminal.<br>
If you're not comfortable with this tool, consider not compiling this app!<br><br>
Ask someone for help instead :)

## Getting Started
This guide is for Mac OSX.<br>
Check the orignal repo for instructions on how to compile on Windows & Linux.

#### Prerequisites - Mac OSX (10.4 Mojave)
- USDX is built using _Homebrew_ and official _FreePascal build_ (using its compiler _FPC_)
- To install Homebrew, follow instructions from [brew.sh](http://brew.sh)
- You can get the FPC build from [freepascal.org](http://www.freepascal.org/down/i386/macosx.var) or
  * `brew install fpc`
- Make sure the XCode command line tools are installed.
  * `xcode-select --install`
- Needed brew libraries can be installed using (ffmpeg up to 3.3 is supported):
  * `brew install sdl2 sdl2_image automake portaudio binutils sqlite freetype lua libtiff pkg-config ffmpeg@2.8` 

#### Instructions - Mac OSX (10.4 Mojave)
- Clone repo
  * `git clone https://github.com/andrewisen/USDX-MG-Edition.git`
- Navigate to repo
  * `cd USDX`
- Navigate to repo
  * `chmod 700 build.sh`
  * `chmod 700 run.sh`

## Compile Helper

- Compile the app using the 'build' bash script (make sure to close the app)
  * `./build.sh`
- Run the app (now with correct themes and settings)
  * `./run.sh`

## Configure

#### Chmod permissions
In order to run the dev file you might need to change Chmod permissions.<br>
Example: `chmod 700 dev.sh`

* `chmod 600 file – owner can read and write`
* `chmod 700 file – owner can read, write and execute`
* `chmod 666 file – all can read and write`
* `chmod 777 file – all can read, write and execute`

#### TODO

## Known Issues and Workarounds
- FPC version might not be correct.
  * `brew upgrade fpc`
- No levels on microphones (work outside USDX).
  * Goto Security settings. Disable microphone for USDX and then re-enable it.
