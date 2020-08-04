# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

#Greeting
set fish_greeting "╭∩╮（︶︿︶）╭∩╮"

# Theme
set fish_theme robbyrussell

# All built-in plugins can be found at ~/.oh-my-fish/plugins/
# Custom plugins may be added to ~/.oh-my-fish/custom/plugins/
# Enable plugins by adding their name separated by a space to the line below.
set fish_plugins theme git-flow brew python node

# Env Variables
set -x DEV_LOGGING 1
set -gx PATH ~/bin $PATH

# BS to allow me to not enter my git password everytime
ssh-add -K ~/.ssh/id_rsa

# Load Java 11 for now...
set -gx JAVA_HOME (/usr/libexec/java_home -v 11); java -version

# XSS safe Chrome
alias chrome-xss "open -a Google\ Chrome --args --disable-web-security --user-data-dir"

# Gradle Aliases
alias ktLint "./gradlew ktlintFormat"
alias ktLintCheck "./gradlew ktlintCheck"
alias ktCleanTest "./gradlew clean test ktlintCheck"

# Java Aliases
alias j8 "set -gx JAVA_HOME (/usr/libexec/java_home -v 1.8); java -version"
alias j11 "set -gx JAVA_HOME (/usr/libexec/java_home -v 11); java -version"
alias j13 "set -gx JAVA_HOME (/usr/libexec/java_home -v 13); java -version"

# Other Aliases
alias forklift_startup "cd ~/git/forklift/server; sbt 'run -url tcp://localhost:61616 -monitor1 /Users/jlivingston/git/sofi-forklift-consumers/alltheconsumers'"
alias branchdump "git branch --merged master | grep -v '\* master' | xargs -n 1 git branch -d"
alias jvmdebug "~/bin/sbt -jvm-debug 8000"
alias gitbest "git shortlog -s -n"
alias clear_orig "find . -name '*.orig' -delete "
alias nowMS "gdate '+%s%3N'"
