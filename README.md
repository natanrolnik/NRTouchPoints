NRTouchPoints
=============

UIWindow subclass that simulates users touches on screen
---------------------

I wanted to be able to record a tutorial for the users of my apps. When I had Jailbreak, that was possible, but with a non-jailbroken phone, this gets complicated. The solution I found was to user Reflector app to record, but this option would not show where exactly the user tapped. So what was the solution for my solution? To create a subclass of UIWindow that shows where the user is tapping in the moment.

Ah, don’t forget to remove them when sending your app to the AppStore!


Installation:
---------------------

+ Step 1: Use Cocoapods or copy the following files: NRWindow.h/m, NRTouchPoint.h/m and NRTouchImage/@2x.png

+ Step 2: In your AppDelegate file, initialize your app’s window with NRWindow. To see how you can do it with storyboards, check the AppDelegate in the example file, or [click here](http://stackoverflow.com/a/10580083/675486).

+ Step 3: There is no step 3! 