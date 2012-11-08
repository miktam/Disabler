Disabler
========

Disabler allows to optimize, trace and modify Android project on the fly using code injection into existing project.

Code is injected on the fly, no need to modify old functionality to add logging/profiling or disable portion of the flow.

Main functionality of the tool:
-

   - trace: entering/exiting to/from method, collecting parameters and exiting value)
   - profile: measuring the frequency and duration of method calls
   - disable: disabling/skipping part of the program flow by overriding returning value from methods defined by the user.

Dependencies:
* [Eclipse]
* [AspectJ]