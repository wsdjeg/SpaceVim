local M = {}

local system = require('spacevim.api').import('system')

if system.isWindows then
    M.separator = '\\'
    M.pathSeparator = ';'
else
    M.separator = '/'
    M.pathSeparator = ':'
end

local file_node_extensions = {}
file_node_extensions['styl'] = ''
file_node_extensions['scss'] = ''
file_node_extensions['htm'] = ''
file_node_extensions['html'] = ''
file_node_extensions['erb'] = ''
file_node_extensions['slim'] = ''
file_node_extensions['ejs'] = ''
file_node_extensions['wxml'] = ''
file_node_extensions['css'] = ''
file_node_extensions['less'] = ''
file_node_extensions['wxss'] = ''
file_node_extensions['md'] = ''
file_node_extensions['markdown'] = ''
file_node_extensions['json'] = ''
file_node_extensions['js'] = ''
file_node_extensions['jsx'] = ''
file_node_extensions['rb'] = ''
file_node_extensions['php'] = ''
file_node_extensions['py'] = ''
file_node_extensions['pyc'] = ''
file_node_extensions['pyo'] = ''
file_node_extensions['pyd'] = ''
file_node_extensions['coffee'] = ''
file_node_extensions['mustache'] = ''
file_node_extensions['hbs'] = ''
file_node_extensions['conf'] = ''
file_node_extensions['ini'] = ''
file_node_extensions['yml'] = ''
file_node_extensions['bat'] = ''
file_node_extensions['jpg'] = ''
file_node_extensions['jpeg'] = ''
file_node_extensions['bmp'] = ''
file_node_extensions['png'] = ''
file_node_extensions['gif'] = ''
file_node_extensions['ico'] = ''
file_node_extensions['twig'] = ''
file_node_extensions['cpp'] = ''
file_node_extensions['c++'] = ''
file_node_extensions['cxx'] = ''
file_node_extensions['cc'] = ''
file_node_extensions['cp'] = ''
file_node_extensions['c'] = ''
file_node_extensions['hs'] = ''
file_node_extensions['lhs'] = ''
file_node_extensions['lua'] = ''
file_node_extensions['java'] = ''
file_node_extensions['sh'] = ''
file_node_extensions['fish'] = ''
file_node_extensions['ml'] = 'λ'
file_node_extensions['mli'] = 'λ'
file_node_extensions['diff'] = ''
file_node_extensions['db'] = ''
file_node_extensions['sql'] = ''
file_node_extensions['dump'] = ''
file_node_extensions['clj'] = ''
file_node_extensions['cljc'] = ''
file_node_extensions['cljs'] = ''
file_node_extensions['edn'] = ''
file_node_extensions['scala'] = ''
file_node_extensions['go'] = ''
file_node_extensions['dart'] = ''
file_node_extensions['xul'] = ''
file_node_extensions['sln'] = ''
file_node_extensions['suo'] = ''
file_node_extensions['pl'] = ''
file_node_extensions['pm'] = ''
file_node_extensions['t'] = ''
file_node_extensions['rss'] = ''
file_node_extensions['f#'] = ''
file_node_extensions['fsscript'] = ''
file_node_extensions['fsx'] = ''
file_node_extensions['fs'] = ''
file_node_extensions['fsi'] = ''
file_node_extensions['rs'] = ''
file_node_extensions['rlib'] = ''
file_node_extensions['d'] = ''
file_node_extensions['erl'] = ''
file_node_extensions['hrl'] = ''
file_node_extensions['vim'] = ''
file_node_extensions['ai'] = ''
file_node_extensions['psd'] = ''
file_node_extensions['psb'] = ''
file_node_extensions['ts'] = ''
file_node_extensions['tsx'] = ''
file_node_extensions['jl'] = ''
file_node_extensions['ex'] = ''
file_node_extensions['exs'] = ''
file_node_extensions['eex'] = ''
file_node_extensions['leex'] = ''

local file_node_exact_matches = {
    'exact-match-case-sensitive-1.txt'  = 'X1',
    'exact-match-case-sensitive-2'      = 'X2',
    'gruntfile.coffee'                  = '',
    'gruntfile.js'                      = '',
    'gruntfile.ls'                      = '',
    'gulpfile.coffee'                   = '',
    'gulpfile.js'                       = '',
    'gulpfile.ls'                       = '',
    'dropbox'                           = '',
    '.ds_store'                         = '',
    '.gitconfig'                        = '',
    '.gitignore'                        = '',
    '.bashrc'                           = '',
    '.bashprofile'                      = '',
    'favicon.ico'                       = '',
    'license'                           = '',
    'node_modules'                      = '',
    'react.jsx'                         = '',
    'Procfile'                          = '',
    '.vimrc'                            = '',
    'mix.lock'                          = '',
    }

local file_node_pattern_matches = {
    '.*jquery.*\.js$'       = '',
    '.*angular.*\.js$'      = '',
    '.*backbone.*\.js$'     = '',
    '.*require.*\.js$'      = '',
    '.*materialize.*\.js$'  = '',
    '.*materialize.*\.css$' = '',
    '.*mootools.*\.js$'     = ''
    }

function M.fticon(ft)
    
end




return M
