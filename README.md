DemoPySide2Qml
==================

A really simple PySide2 application using QtQuick and Material style.
(it should work on PySide6 too)


In order to set a global theme for QtQuick you can use options as described below in the __main__.
You can override style properties in single qml files, if you want.

To change the Material theme (_dark_, _light_, _system_) or other material properties you can use a
configuration file called qtquickcontrols2.conf

See also: 
- https://doc.qt.io/qt-5/qtquickcontrols2-configuration.html
- https://doc.qt.io/qt-5/qtquickcontrols2-material.html#material-theme-attached-prop

To make it working you need to add it to a resource file and then compile it to a python file that you need 
to include in your main.py

## Recap:
1. create a qtquickcontrols2.conf file:
```
[Controls]
Style=Material


[Material]
Theme=Dark
Accent=Teal
Primary=BlueGrey
```

2. create a resources.qrc file containing qtquickcontrols2.conf
```
<RCC>
    <qresource prefix="/">
        <file>qtquickcontrols2.conf</file>
    </qresource>
</RCC>
```

3. compile qrc file to py file using pyside2 utility
```
pyside2-rcc resources.qrc -o rc_main.py
```

4. import rc_main in your python application

5. set the application to use Material theme with one of the following alternative options:

    - setting the style in the [Controls] section of qtquickcontrols2.conf file
    - passing or overriding the --style argument (see code below)
    - using QtQuickStyle module (see code below)
    - using QT_QUICK_CONTROLS_STYLE environment variable


