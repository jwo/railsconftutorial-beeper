Beeper: a RailsConf 2013 Tutorial
=================================

Overview
--------

Create a beeper alert program

* if alarm is critical, send SMS
* if alarm is warning, send email


##### To Send alarms to the service
```
rake alarm:report service=email
rake alarm:report service=redis
```

What To Do
---------

### Section 1: 20 minutes

* Send notifications via SMS Text
* Get setup on Twilio

### Section 2: 20 minutes

* use a model before_validation callback to set severity depending on the service. If it’s redis, treat it as critical, else warning
* Either send by SMS or send by Email depending on severity
* Add a controller before_filter to easily have some security

Created By
=========

Jesse Wolgamott (@jwo) for RailsConf 2013 Intro Track

Copyright
=========

All materials licensed [Creative Commons Attribution-NonCommercial-ShareAlike 3.0](http://creativecommons.org/licenses/by-nc-sa/3.0/)
