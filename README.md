# hide-episode-spoilers

Modified JBOPS `hide_episode_spoilers.py` script to fit my needs for actively hiding spoilers by thumbnails and descriptions

---

Setup:
- Have your media library mounted locally to your system
- Put the `posters/` directory in the root of your media drive mount, so that symbolic links can be used instead of individual repeated photos

---

Usage:
- Build the container with `docker build -t tautulli .`
- Run with...
```
docker run -d --restart always \
    -v $PWD/config/:/config/ \
    -v {media_location}:/media/ \
    --name tautulli \
    --network host \
    tautulli
```

Your own posters can be added to `posters/`

---

Example Tautulli config to replace episode art with anti-spoiler art...

> Script location: `/scripts/JBOPS/utility/`
> 
> Script: `hide_episode_spoilers.py`
> 
> Script timeout: `0`
> 
> Triggers: `Recently added`
> 
> Conditions:
> - Media type... is... `show` or `season` or `episode`
> - Show name... is... `Big Brother Canada`
> 
> Arguments: Recently added: `--rating_key {parent_rating_key} --image bbcan_poster.jpg --summary_remove`

The container can be easily updated to the newest tautulli image and apt packages by running `update_tautulli.sh` in the root directory.
