# Valheim Rclone Backup
A simple backup script that runs via Cron, updating the data to a Google Drive or similar platform using rclone.

## Installation:

Download Rclone:
```bash
sudo -v ; curl https://rclone.org/install.sh | sudo bash
```

### Rclone config (For Google Drive):

```console
$ rclone config
n/r/c/s/q> n (New remote)

name> gdrive

Storage> 18

client_id> 
```
> [!NOTE]
> Leave client_id blank but if you get error "403:rate limit exceeded" you need to make a client_id to procced or try again later. This is bacouse of a problem with abuse of rclone's client ID which Google is cracking down on right now.

```console
client_secret>

scope> 1

Edit advanced config?
y/n> n

Use web browser to automatically authenticate rclone with remote?
y/n> n

config_token> Follow instructions from rclone and pass token here

Configure this as a Shared Drive (Team Drive)?
y/n> n

Configuration complete.
Keep this "gdrive" remote?
y/e/d> y

Current remotes:
e/n/d/r/c/s/q> q
```

### Cron config:

```console
$ crontab -e

Choose preferred editor

Edit when you want the script to run:

*   *   *   *   *  sh /path/to/script/script.sh
|   |   |   |   |              |
|   |   |   |   |      Command or Script to Execute        
|   |   |   |   |
|   |   |   |   |
|   |   |   |   |
|   |   |   | Day of the Week(0-6)
|   |   |   |
|   |   | Month of the Year(1-12)
|   |   |
|   | Day of the Month(1-31)  
|   |
| Hour(0-23)  
|
Min(0-59)

For example, I want to run it every night at 02:30:

30 2 * * * sh /home/krille/valheim-backup/rclone.sh
```

Save and exit Cron config.