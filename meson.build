
project('com.github.stsdc.telefax', 'vala', 'c', version: '0.3.5')

gnome = import('gnome')
i18n = import('i18n')

conf = configuration_data()
conf.set_quoted('GETTEXT_PACKAGE', meson.project_name())
configure_file(output: 'config.h', configuration: conf)
config_h_dir = include_directories('.')

c_args = [
    '-include', 'config.h',
    '-w'
]

add_project_arguments(['--vapidir', join_paths(meson.current_source_dir(), 'vapi')], language: 'vala')

tdjson_lib = meson.get_compiler('c').find_library('libtdjson')
tdjson_vapi = meson.get_compiler('vala').find_library('libtdjson', dirs: join_paths(meson.current_source_dir(), 'vapi'))
tdjson_dep = declare_dependency(dependencies: [tdjson_lib, tdjson_vapi])

executable(
    meson.project_name(),
    'src/Telefax.vala',
    'src/MainWindow.vala',
    'src/Widgets/Welcome.vala',
    'src/Common/BaseMainWindow.vala',
    'src/Common/SavedState.vala',
    'src/Common/Settings.vala',
    c_args: c_args,
    dependencies: [
        dependency('glib-2.0'),
        dependency('granite'),
        dependency('gtk+-3.0'),
        dependency('gee-0.8'),
        dependency('gio-2.0'),
        dependency('gobject-2.0'),
        dependency('gio-unix-2.0'),

        tdjson_dep,
        
        meson.get_compiler('c').find_library('m', required : false),
        meson.get_compiler('vala').find_library('posix'),
    ],
    install: true
)

# Add in a post install script
meson.add_install_script('meson/post_install.py')

subdir('data')
subdir('po')