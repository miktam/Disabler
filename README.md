Disabler
========

Disabler allows to optimize, trace and modify Android project on the fly using code injection into existing project. 

Code is injected on the fly, no need to modify old functionality to add logging/profiling or disable portion of the flow.

Main functionality of the tool:

   - trace: entering/exiting to/from method, collecting parameters and exiting value)
   - profile: measuring the frequency and duration of method calls
   - disable: disabling/skipping part of the program flow by overriding returning value from methods defined by the user.

Running Disabler project hosted on Github
-
1. Clone Disabler project
2. Remove abstract keyword from any of existing aspects to make it work
 * Logger
 * Profiler
 * Sorter
 * Delayer
 * Disabler

Setup from the scratch
-
1. Create Android project
2. Add aspectjrt.jar as dependency
 * Project -> Java Build Path -> Libraries -> Add Jar
3. Modify .project file as displayed below
 * Note new build command - org.eclipse.ajdt.core.ajbuilder
 * New nature - org.eclipse.ajdt.ui.ajnature
4. Add aspect (check examples in Disabler project)
5. Run app on emulator or hardware 
---
Dependencies:
* [Eclipse](http://www.eclipse.org/)
* [AspectJ](http://www.eclipse.org/aspectj/)

---

Customized .project file for Eclipse
-
```xml
<?xml version="1.0" encoding="UTF-8"?>
<projectDescription>
    <name>Disabler</name>
    <comment></comment>
    <projects>
    </projects>
    <buildSpec>
        <buildCommand>
            <name>org.eclipse.ajdt.core.ajbuilder</name>
            <arguments>
            </arguments>
        </buildCommand>
        <buildCommand>
            <name>com.android.ide.eclipse.adt.ResourceManagerBuilder</name>
            <arguments>
            </arguments>
        </buildCommand>
        <buildCommand>
            <name>com.android.ide.eclipse.adt.PreCompilerBuilder</name>
            <arguments>
            </arguments>
        </buildCommand>
        <buildCommand>
            <name>org.eclipse.ajdt.core.ajbuilder</name>
            <arguments>
            </arguments>
        </buildCommand>
        <buildCommand>
            <name>com.android.ide.eclipse.adt.ApkBuilder</name>
            <arguments>
            </arguments>
        </buildCommand>
    </buildSpec>
    <natures>
        <nature>org.eclipse.ajdt.ui.ajnature</nature>
        <nature>com.android.ide.eclipse.adt.AndroidNature</nature>
        <nature>org.eclipse.jdt.core.javanature</nature>
    </natures>
</projectDescription>
```