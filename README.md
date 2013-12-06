NRTouchPoints
=============

I wanted to be able to record a tutorial for the users of my apps. When I had Jailbreak, that was possible, but with a non-jailbroken phone, this gets complicated. The solution I found was to use [Reflector App](http://www.airsquirrels.com/reflector/) to record the screen, but this option would not show where exactly the user tapped. So what was the solution for my solution? To create a subclass of UIWindow that shows where the user is tapping in the moment.

Ah, don’t forget to remove them when sending your app to the AppStore!

**[Check the demo here! http://www.youtube.com/watch?v=V_sGsIWSTBQ](http://www.youtube.com/watch?v=V_sGsIWSTBQ)**

## Installation
---------------------

+ Step 1: Use Cocoapods (NRTouchPoints) or copy the following files: NRWindow.h/m, NRTouchPoint.h/m and NRTouchImage/@2x.png

+ Step 2: In your AppDelegate file, initialize your app’s window with NRWindow. To see how you can do it with storyboards, check the AppDelegate in the example file, or [click here](http://stackoverflow.com/a/10580083/675486).

+ Step 3: There is no step 3! 

## License
---------------------

NRTouchPoints is available under the MIT license. See the LICENSE file for more info.