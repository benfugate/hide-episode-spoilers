# hide-episode-spoilers

Modified JBOPS `hide_episode_spoilers.py` script to fit my needs.

This project expects this project to be located in `/home/pi/Documents/Tautulli/`.
If it is going to be in another location, some of the Docker statements will need be modified.

Usage:
- Build the container with `docker build . -t tautulli`
- Run with `docker run -d --restart always -v $PWD/config/:/config --name tautulli --privileged --network host tautulli`
> `update_tautulli.sh` can also be used to start the container from scratch

If current config is wiped, then notification triggers will have to be set up again...

Example config:
> Script timeout: 0
> 
> Triggers: Recently added
> 
> Conditions:
> - Media type... is... `show` or `season` or `episode`
> - Show name... is... `Big Brother Canada`
> 
> Arguments: Recently added: `--rating_key {rating_key} --image bbcan_poster.jpg --summary_remove`

The container can be easily updated by running `update_tautulli.sh` in the root directory.

`.smbcredentials` will have to be created in `config/` with the servers media access credentials for docker to be able to mount the media folder.
