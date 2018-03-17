## Simple Logging

Just another simple logging library for nim.

Example Use:

```nim
import simplelogging

# Normal logging method 
log(DEBUG, "Debug test");
log(INFO, "Info test");
log(WARN, "Warn test");
log(ERROR, "Error test");

# Shortcut methods
debug("Test");
info("Test");
warn("Test");
error("Test");

```

Result:

![Example](/images/example.png)

Author: Laura Schäfer <elerianae@gmail.com>
License: MIT
