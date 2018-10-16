# UltraStar MG Edition

Fork of the UltraStar Deluxe (USDX) karaoke game. 

#### Compiling on MacOS (High Sierra)
- USDX is built using _Homebrew_ and official _FreePascal build_ (using its compiler _FPC_)
- To install Homebrew, follow instructions from [brew.sh](http://brew.sh)
- You can get the FPC build from [freepascal.org](http://www.freepascal.org/down/i386/macosx.var) or
  * `brew install fpc`
- Make sure the XCode command line tools are installed.
  * `xcode-select --install`
- Needed brew libraries can be installed using (ffmpeg up to 3.3 is supported):
  * `brew install sdl2 sdl2_image automake portaudio binutils sqlite freetype lua libtiff pkg-config ffmpeg@2.8`
- Clone repo
  * `git clone https://github.com/UltraStar-Deluxe/USDX`
- Generate `configure` file and more
  * `./autogen.sh`
- Make sure that you have your build setup right
  * `./configure`
- Now build the UltraStar application
  * `make macosx-standalone-app`
- Run by clicking UltraStarDeluxe in your build folder or
  * `open UltraStarDeluxe.app`
