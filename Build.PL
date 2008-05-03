use Module::Build;

my $build = Module::Build->new(
    module_name        => 'Encode::ZapCP1252',
    license            => 'perl',
    create_makefile_pl => 'passthrough',
    create_readme      => 1,
    requires           => { 'perl'          => '5.6.2'  },
    configure_requires => { 'Module::Build' => '0.2701' },
    recommends         => {
        'Test::Pod' => '1.20',
        'Encode'    => 0,
    },
    build_requires     => {
        'Test::More'    => '0.17',
        'Module::Build' => '0.2701',
    },
);
$build->create_build_script;
