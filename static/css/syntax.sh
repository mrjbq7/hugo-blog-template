#!/bin/bash

# hugo gen chromastyles --style=emacs > syntax-light.css
# hugo gen chromastyles --style=molokai > syntax-dark.css

# hugo gen chromastyles --style=solarized > syntax-light.css
# hugo gen chromastyles --style=solarized-dark > syntax-dark.css

cat syntax-light.css > syntax.css
echo "@media screen and (prefers-color-scheme: dark) {" >> syntax.css
cat syntax-dark.css >> syntax.css
echo "}" >> syntax.css
