Beeper: a RailsConf 2013 Tutorial
=================================

Overview
--------

Create a beeper alert program

* if alarm is critical, send SMS
* if alarm is warning, send email
* if alarm has not been fixed in 20 minutes, send SMS

##### To Send alarms to the service
```
rake alarm:warning service=email  
rake alarm:critical service=email
```

What To Do
---------

##### Section 1: 20 minutes

* use a before filter to prevent more than 1 notification from being sent
* still log that the alarm was received

##### Break: 5 minutes

##### Section 2: 20 minutes

* use a model `before_validation` callback to set severity depending on the
  service. If it's `shopping_cart` => critical, else warning
* use Proc to either send by SMS or send by Email depending on severity

Created By
=========

Jesse Wolgamott (@jwo) for RailsConf 2013 Intro Track

Copyright
=========

All materials licensed [Creative Commons Attribution-NonCommercial-ShareAlike 3.0](http://creativecommons.org/licenses/by-nc-sa/3.0/)
