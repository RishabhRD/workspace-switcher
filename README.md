### WORKSPACE-SWITCHER
This program helps you to switch workspace using 3-finger mouse swiping
like Mac-OS. This provides you easy way to switch workspace.
This internally uses `libinput-gestures` source code.
I am not sure how well this will work on all distros and DE's etc.


### INSTALLATION

You need python 3.4 or later, python2 is not supported. You also need
libinput release 1.0 or later. Install prerequisites:

    # E.g. On Arch:
    sudo pacman -S xdotool wmctrl

    # E.g. On Debian based systems, e.g. Ubuntu:
    sudo apt-get install xdotool wmctrl

    # E.g. On Fedora:
    sudo dnf install xdotool wmctrl

Debian and Ubuntu users may also need to install `libinput-tools` if
that package exists in your release:

    sudo apt-get install libinput-tools

Install this software:

    git clone https://github.com/RishabhRD/workspace-switcher.git
    cd workspace-switcher
**If `libinput-gestures` is not installed:**

    ./install.sh

**If `libinput-gestures` is already installed(and you are using its configuration file):
(if not using configuration file use above command only)**

    ./already_install.sh

After executing the above command, **log out of your session
completely**, and then log back in to assign this group (or just
reboot).

## Configuration
After installing this repository `libinput-gestures` is also installed. So, you can use 
its configuration file to provide additional configuration in `/etc/libinput-gestures.conf`

To stop this feature:
    libinput-gestures-setup stop
To restart this:
    libinput-gestures-setup restart
To start this:
    libinput-gestures-setup start


Program should automatically work for each session in most of desktop environments.
However, I don't gurantee its running for all desktop environments and window managers.
For window manager it is not running automatically you need to add `libinput-gestures`
to autostart script according to your window manager/desktop environment
