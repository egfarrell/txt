dbeaver universal database GUI

# Ubuntu Config file
    - $HOME/.local/share/DBeaverData/workspace6/General/.dbeaver/data-sources.json

### Don't format numbers into 'thousands'
    - untick 'grouping'
    - $MY_IMAGES/cs/dbeaver-dont-format-thousands.jpg

### Remove resulset column header icons
    - Editors -> Data Editor -> Appearance -> Grid 
      - -> Show column type icons

### EXPORT: 
    - without running query twice
    - you can select the SQL code that you want to run
      (in the editor), then right click the selected code
      `> Execute > Export From Query` 
      - Running the query first is no longer necessary.

### Change error log icon
    name:     error_log.png
    location: ...\dbeaver\configuration\org.eclipse.osgi\152\0\.cp\icons\eview16

### dont remember editor state
    - Database -> Editors -> Object Editor -> "Reopen Database Editors After Restart" <--- doesnt work?
    - Database -> Editors -> "Close editors automatically [Number of opened editors before closing: 1]" 
    - This one finally does roughly what I want!
        > - Database -> Editors -> "Auto-sync editor connection with navigator selection"

### Resultset: Fetch all rows
    - Database -> Editors -> Data Editor -> "ResultSet fetch size"
    - click "Fetch all rows" button () in the bottom toolbar
    - right-click results table and click `Navigate` -> `Fetch All Data` on context menu.
    - In the Resultset Fetch-size "box": set a large value like 100000

### "gotcha": CSV export
    - CSV export: dbeaver includes a "BOM" (Byte Order Marker) 
    - casues problems when printing in Python/Pandas
    - so for CSV exports, untick "BOM" box

### "gotcha": edit existing SQL scripts
    - To edit external files you must _LINK_ them.
    - Right-click on "Scripts" node in project explorer
    - click on "Link Folder"
    - (doesn't matter anymore, I use vim + ahk)

### Results: side-by-side "vertical" layout
    global settings:
        Preferences -> General -> Editors -> SQL Editor
            Results orientation: [VERTICAL]

    individual window:
        - right-click in SQL editor
        - choose "layout" (context menu)
        - choose "vertical"

### SQL Editor: Current Line Highlight
    - Window -> Preferences -> General -> Editors -> Text Editors.
    - Enable option: 'Highlight current line'.

# GUI table
    - switch data views: press `<TAB>` (shows individual records)
    - add new row:       press "+"

### dbeaver - manually setup sqlite driver
    sqlite3.{def, dll}      http://www.sqlite.org/download.html
    sqlite-jdbc-3.19.3.jar  https://bitbucket.org/xerial/sqlite-jdbc/downloads/

    1.  goto "edit driver"
    2.  __DELETE TOP ENTRY!__: something about jdbc, sqlite org etc
    3.  click 'add file': sqlite3.def
    4.  click 'add file': sqlite3.dll
    5.  click 'add file': sqlite-jdbc-3.19.3.jar
