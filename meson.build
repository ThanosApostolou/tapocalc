project('tapocalc', 'cpp')

lib_src = ['src/libtapocalc/libtapocalc.cpp', 'src/libtapocalc/grammar.cpp']
lib = shared_library('tapocalc', sources : lib_src, version : '0.2', soversion : '0.2', install : true)
incdir = include_directories('src/libtapocalc')
exec_src = ['src/tapocalc-cli/tapocalc-cli.cpp']
executable('tapocalc-cli', sources : exec_src,  include_directories : incdir, link_with : lib, install : true)
install_data('README.md', install_dir : join_paths(get_option('datadir'), 'tapocalc'))
