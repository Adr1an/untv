###
UNTV - torrent-stream-search extension
Author: Gordon Hall

Enables user to search for torrents using the Yifi JSON API and
stream them directly to the global player instance
###

TorrentSearch = require "./torrent-search"

module.exports = (manifest, remote, player, view) ->
  # get torrent search interface
  torrents = new TorrentSearch()
  # default show list
  torrents.latest (list) -> view.html list