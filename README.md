# hide-episode-spoilers

Modified JBOPS `hide_episode_spoilers.py` script to fit my needs for actively hiding spoilers

---

Setup:
- Put your smb media mount location in `config/plex_server_ip`
- Put your smb mount credentials in `config/.smbcredentials`

---

Usage:
- Build the container with `docker build --build-arg media_mount_location=$(sed '1q;d' config/media_mount_location) -t tautulli .`
- Run with `docker run -d --restart always -v $PWD/config/:/config --name tautulli --privileged --network host tautulli`

> `update_tautulli.sh` can also be used to start the container for the first time

Your own posters can be added to `config/scripts/JBOPS/utility/posters/`

---

Example Tautulli config to replace episode art with anti-spoiler art...

> Script timeout: 0
> 
> Triggers: Recently added
> 
> Conditions:
> - Media type... is... `show` or `season` or `episode`
> - Show name... is... `Big Brother Canada`
> 
> Arguments: Recently added: `--rating_key {rating_key} --image bbcan_poster.jpg --summary_remove`

The container can be easily updated to the newest tautulli image and apt packages by running `update_tautulli.sh` in the root directory.
