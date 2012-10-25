## [PureMVC](http://puremvc.github.com/) [ActionScript 3](https://github.com/PureMVC/puremvc-as3-standard-framework/wiki) Demo: HelloFlash (Flash)
This demo illustrates the use of the PureMVC framework within a Flash application. A lonlely little blue box appears, moving in a grey room. Interact with it.

* [Live Demo](http://darkstar.puremvc.org/content_header.html?url=http://puremvc.org/pages/demos/AS3/Demo_AS3_Flash_HelloFlash/&desc=PureMVC%20API%20Demo:%20Hello%20Flash)
* [Discussion](http://forums.puremvc.org/index.php?topic=268.0)

## Screenshot
![PureMVC AS3 Demo: Hello Flash](http://puremvc.org/pages/images/screenshots/PureMVC-Shot-AS3-Flash-HelloFlash.png)

## Status
Production - [Version 1.1](https://github.com/PureMVC/puremvc-as3-demo-flash-helloflash/blob/master/VERSION)

## Platforms / Technologies
* [ActionScript 3](http://en.wikipedia.org/wiki/ActionScript)
* [Flash](http://en.wikipedia.org/wiki/Adobe_flash)

## Techniques Illustrated 
* Starting the application via the !ApplicationFacade on a 1-Frame Flash Movie 
* Sending a Notification to trigger a Startup Command 
* Initilializing the Model and View from a Command
* Dynamically created View Components and Mediators with unique instance names
* View components communicating with their Mediators
* Mediators communicating with a Proxy
* Use of a Proxy to hold Model data 
* Mediators communicating with other Mediators via Notification

## Interaction
A lonlely little blue box appears, moving in a grey room. Interact with it. 
* When it hits a wall it changes direction and shrinks.
* If you grab it and drag it around, diffrently colored boxes trail out going the opposite of the direction you drag.
* The colors are from a short palette of about 5 colors and they cycle. 
* If you roll your mouse-wheel all the boxes scale up or down in size depending on the direction you scroll it. (Mac users use the two-finger downswipe to scale up and two-finger upswipe to scale down)
* When the boxes are all tiny, its hard to grab them, so you might scale them all up.
* Catch one and hold on to it. Allow the others to decay in size a bit by bouncing off the walls. Then drag around to emit some, let them decay, etc.
* Scale them up until they all look like a jigging mass of Jellotm. Then scroll farther, most wrap around and become small, but some stay large. Let them decay.

## License
* PureMVC AS3 / Flash Demo - HelloFlash - Copyright © 2008, Cliff Hall
* PureMVC - Copyright © 2007-2008 Futurescale, Inc.
* All rights reserved.

* Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

  * Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
  * Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
  * Neither the name of Futurescale, Inc., PureMVC.org, nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.