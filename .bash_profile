# Export the JAVA_HOME location
JAVA_HOME=/usr/bin/java

# Setting PATH for Python 3.5
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH

# Setup the sexy-bash colors
# PROMPT_USER_COLOR="\033[1;38;2;175;220;165;m"  
PROMPT_USER_COLOR="$(tput bold)$(tput setaf 149)"   # Medium Green
PROMPT_DEVICE_COLOR="$(tput bold)$(tput setaf 39)"  # Medium Blue
PROMPT_DIR_COLOR="\033[1;38;2;206;171;106;m"        # Medium Orange  (206,171,106)
PROMPT_GIT_STATUS_COLOR="\033[1;38;2;222;124;122;m" # Medoum Pinkish (222,124,122)

# Source the bash prompt style
source ~/.bash_prompt
