let opts = {}
let opts.path_to_nixpkgs = '/etc/nixos/nixpkgs'
let opts.cache_file = '/tmp/export-vim-plugin-for-nix-cache-file'
let opts.plugin_dictionaries = map(readfile("vim-plugins"), 'eval(v:val)')
call nix#ExportPluginsForNix(opts)
