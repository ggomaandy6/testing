//1

ScriptEditor = Application("Script Editor");
ScriptEditor.includeStandardAdditions = true;

app = Application("Contacts"); // or e.g. "Calendar", "System Events", "Finder"
app.includeStandardAdditions = true;

// -- testing: displayAlert()
ScriptEditor.displayAlert("Hello world!"); 
app.displayAlert("Hello world!"); // success, no privilege error

// -- testing: displayNotification()
ScriptEditor.displayNotification("Hello world!"); 
//app.displayNotification("Hello world!"); // Error -10004: A privilege violation occurred.

// --- testing: say()
ScriptEditor.say("Hello world!");
//app.say("Hello world"); // Error -10004: A privilege violation occurred.

// --- testing: beep()
ScriptEditor.beep(1);
//app.beep(1); // Error -10004: A privilege violation occurred.