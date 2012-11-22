#!/usr/bin/env coffee
# -*- mode: coffeescript -*-

trash = new (require("trash"))()
fs = require "fs"
path = require "path"

errcallback = (item, err) -> console.log "Error processing #{item}: #{err}"

emptyfilecheck = () -> fs.existsSync(path.resolve("empty"))

if process.argv[2] is "empty" and not emptyfilecheck()
	trash.emptyTrash null, errcallback
	console.log "Trash emptied."
else
	trash.throwAway garbage, errcallback for garbage in process.argv[2..]

