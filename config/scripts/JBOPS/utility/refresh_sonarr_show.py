import sys
from pyarr import SonarrAPI

sonarr_host_url = sys.argv[1]
sonarr_api_key = sys.argv[2]
show_name = sys.argv[3]

sonarr = SonarrAPI(sonarr_host_url, sonarr_api_key)

show = 0
request = sonarr.get_series()
for series in request:
    if show_name == series["title"]:
        show = series["id"]
        break

if not show:
    exit(0)

request = {"seriesId": show}
sonarr.post_command("RescanSeries", **request)
