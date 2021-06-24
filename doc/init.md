Sample init scripts and service configuration for 2chcoind
==========================================================

Sample scripts and configuration files for systemd, Upstart and OpenRC
can be found in the contrib/init folder.

    contrib/init/2chcoind.service:    systemd service unit configuration
    contrib/init/2chcoind.openrc:     OpenRC compatible SysV style init script
    contrib/init/2chcoind.openrcconf: OpenRC conf.d file
    contrib/init/2chcoind.conf:       Upstart service configuration file
    contrib/init/2chcoind.init:       CentOS compatible SysV style init script

Service User
---------------------------------

All three Linux startup configurations assume the existence of a "2chcoincore" user
and group.  They must be created before attempting to use these scripts.
The OS X configuration assumes 2chcoind will be set up for the current user.

Configuration
---------------------------------

At a bare minimum, 2chcoind requires that the rpcpassword setting be set
when running as a daemon.  If the configuration file does not exist or this
setting is not set, 2chcoind will shutdown promptly after startup.

This password does not have to be remembered or typed as it is mostly used
as a fixed token that 2chcoind and client programs read from the configuration
file, however it is recommended that a strong and secure password be used
as this password is security critical to securing the wallet should the
wallet be enabled.

If 2chcoind is run with the "-server" flag (set by default), and no rpcpassword is set,
it will use a special cookie file for authentication. The cookie is generated with random
content when the daemon starts, and deleted when it exits. Read access to this file
controls who can access it through RPC.

By default the cookie is stored in the data directory, but it's location can be overridden
with the option '-rpccookiefile'.

This allows for running 2chcoind without having to do any manual configuration.

`conf`, `pid`, and `wallet` accept relative paths which are interpreted as
relative to the data directory. `wallet` *only* supports relative paths.

For an example configuration file that describes the configuration settings,
see `contrib/debian/examples/2chcoin.conf`.

Paths
---------------------------------

### Linux

All three configurations assume several paths that might need to be adjusted.

Binary:              `/usr/bin/2chcoind`  
Configuration file:  `/etc/2chcoincore/2chcoin.conf`  
Data directory:      `/var/lib/2chcoind`  
PID file:            `/var/run/2chcoind/2chcoind.pid` (OpenRC and Upstart) or `/var/lib/2chcoind/2chcoind.pid` (systemd)  
Lock file:           `/var/lock/subsys/2chcoind` (CentOS)  

The configuration file, PID directory (if applicable) and data directory
should all be owned by the 2chcoincore user and group.  It is advised for security
reasons to make the configuration file and data directory only readable by the
2chcoincore user and group.  Access to 2chcoin-cli and other 2chcoind rpc clients
can then be controlled by group membership.

### Mac OS X

Binary:              `/usr/local/bin/2chcoind`  
Configuration file:  `~/Library/Application Support/2chcoincore/2chcoin.conf`  
Data directory:      `~/Library/Application Support/2chcoincore`  
Lock file:           `~/Library/Application Support/2chcoincore/.lock`  

Installing Service Configuration
-----------------------------------

### systemd

Installing this .service file consists of just copying it to
/usr/lib/systemd/system directory, followed by the command
`systemctl daemon-reload` in order to update running systemd configuration.

To test, run `systemctl start 2chcoind` and to enable for system startup run
`systemctl enable 2chcoind`

NOTE: When installing for systemd in Debian/Ubuntu the .service file needs to be copied to the /lib/systemd/system directory instead.

### OpenRC

Rename 2chcoind.openrc to 2chcoind and drop it in /etc/init.d.  Double
check ownership and permissions and make it executable.  Test it with
`/etc/init.d/2chcoind start` and configure it to run on startup with
`rc-update add 2chcoind`

### Upstart (for Debian/Ubuntu based distributions)

Upstart is the default init system for Debian/Ubuntu versions older than 15.04. If you are using version 15.04 or newer and haven't manually configured upstart you should follow the systemd instructions instead.

Drop 2chcoind.conf in /etc/init.  Test by running `service 2chcoind start`
it will automatically start on reboot.

NOTE: This script is incompatible with CentOS 5 and Amazon Linux 2014 as they
use old versions of Upstart and do not supply the start-stop-daemon utility.

### CentOS

Copy 2chcoind.init to /etc/init.d/2chcoind. Test by running `service 2chcoind start`.

Using this script, you can adjust the path and flags to the 2chcoind program by
setting the 2CHCOIND and FLAGS environment variables in the file
/etc/sysconfig/2chcoind. You can also use the DAEMONOPTS environment variable here.

### Mac OS X

Copy org.2chcoin.2chcoind.plist into ~/Library/LaunchAgents. Load the launch agent by
running `launchctl load ~/Library/LaunchAgents/org.2chcoin.2chcoind.plist`.

This Launch Agent will cause 2chcoind to start whenever the user logs in.

NOTE: This approach is intended for those wanting to run 2chcoind as the current user.
You will need to modify org.2chcoin.2chcoind.plist if you intend to use it as a
Launch Daemon with a dedicated 2chcoincore user.

Auto-respawn
-----------------------------------

Auto respawning is currently only configured for Upstart and systemd.
Reasonable defaults have been chosen but YMMV.
