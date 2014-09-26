bash-fu
=======

Bash helpers and templates. Uses bash commands and POSIX utilities unless 
noted otherwise. 

Installation
------------
sudo mkdir -pv /opt/toggl 
sudo git clone https://github.com/toggl/scripting /opt/toggl/scripting

Files
-----

### Bin
 * `silencer` will run his argument and hide stderr and stdout, returning output
    lines only if argument exits with error. Designed to silence verbose things 
    in cron, to receive email only on error

### Shared
 * `gemeroc` Basic logging and error handling, used as default .sh file template
  
