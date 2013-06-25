transformer = require('transformers')['stylus']
_ = require 'underscore'

exports.settings =
	file_type: 'styl'
	target: 'css'

exports.compile = (file, options={}, cb) ->
	_.defaults(options,
		minify: global.options.compress
		filename: file.path
	)

	transformer.render(file.contents, options, cb)
	return
