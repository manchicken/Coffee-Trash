#!/usr/bin/env coffee
# -*- mode: coffeescript -*-

trash = new (require("trash"))()
fs = require "fs"
path = require "path"
err = require "err"

errcallback = (item, err) -> err.byebye "Error processing #{item}: #{err}"

emptyfilecheck = () -> fs.existsSync(path.resolve("empty"))

if process.argv[2] is "empty" and not emptyfilecheck()
	trash.emptyTrash null, errcallback
	err.notice "Trash emptied."
else
	trash.throwAway garbage, errcallback for garbage in process.argv[2..]
