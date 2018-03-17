# simplelogging
# Copyright Laura Schäfer
# Logging library for Nim

# Imports
import times
import terminal

type
    LogLevel = enum
        ERROR = "Error", WARN = "Warn", INFO = "Info", DEBUG = "Debug"
    
proc output(line: string, color: ForegroundColor) =
    setForegroundColor(stdout, color);
    stdout.write(line & "\n");
    resetAttributes();

            

proc log(level: LogLevel, line: string) {.exportc.} =
    let time = $now();
    case level:
        of DEBUG:
            let outline = time & " | DEBUG | " & line;
            output(outline, fgWhite);
        of INFO:
            let outline = time & " | INFO  | " & line;
            output(outline, fgGreen);
        of WARN:
            let outline = time & " | WARN  | " & line;
            output(outline, fgYellow);
        of ERROR:
            let outline = time & " | ERROR | " & line;
            output(outline, fgRed);