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

Default .project file for Eclipse for default Android project
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
        <nature>com.android.ide.eclipse.adt.AndroidNature</nature>
        <nature>org.eclipse.jdt.core.javanature</nature>
    </natures>
</projectDescription>
```