bash-fu
=======

Bash helpers and templates. Uses bash commands and POSIX utilities unless 
noted otherwise. It is assumed that all files from this repository can be
found in `/opt/toggl/scripting`

Installation
------------

Use git:

    sudo mkdir -pv /opt/toggl
    sudo git clone https://github.com/toggl/scripting /opt/toggl/scripting

curl + tar:

    curl --location --silent  https://api.github.com/repos/toggl/scripting/tarball -o /tmp/toggl_scripting.tar.gz
    sudo mkdir -pv /opt/toggl/scripting
    tar --strip 1 -xzvf /tmp/toggl_scripting.tar.gz -C /opt/toggl/scripting
    rm -vf /tmp/toggl_scripting.tar.gz
    
bootstrap (using curl+tar version above):   

    curl https://raw.githubusercontent.com/toggl/scripting/master/bin/bootstrap | sh

Files
-----

### Bin
  Ready to run scripts.

 * `silencer`  
    will run his argument and hide stderr and stdout, returning output
    lines only if argument exits with error. Designed to silence verbose things
    in cron, to receive email only on error
 * `bootstrap`  
    easy install/update this repository in local `/opt/toggl/scripting`

### Shared
  Files meant to be sourced by other scripts

 * `generic`  
   Basic logging and error handling, default script template
 
 * `role_helper`  
   Helper functions for server service/role manager