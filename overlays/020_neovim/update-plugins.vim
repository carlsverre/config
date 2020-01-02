let opts = {}
let opts.path_to_nixpkgs = '/nix/var/nix/profiles/per-user/carl/channels/nixpkgs'
let opts.cache_file = '.cache'
let opts.plugin_dictionaries = map(readfile("vim-plugins"), 'eval(v:val)')
call nix#ExportPluginsForNix(opts)
