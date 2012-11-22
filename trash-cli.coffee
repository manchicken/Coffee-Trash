#!/usr/bin/env coffee
# -*- mode: coffeescript -*-

trash = new (require("trash"))()

errcallback = (item, err) -> console.log "Error processing #{item}: #{err}"

if process.argv[2] is "empty"
	trash.emptyTrash null, errcallback
	console.log "Trash emptied."
else
	trash.throwAway garbage, errcallback for garbage in process.argv[2..]

