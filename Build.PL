
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  "build_requires" => {
    "Module::Build" => "0.3601"
  },
  "configure_requires" => {
    "Module::Build" => "0.3601"
  },
  "dist_abstract" => "Test Rinci metadata",
  "dist_author" => [
    "Steven Haryanto <stevenharyanto\@gmail.com>"
  ],
  "dist_name" => "Test-Rinci",
  "dist_version" => "0.01",
  "license" => "perl",
  "module_name" => "Test::Rinci",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "Log::Any::App" => 0,
    "Perinci::Access::InProcess" => "0.36",
    "Perinci::Sub::GetArgs::Argv" => "0.21",
    "Test::More" => "0.98",
    "perl" => "5.010001"
  },
  "script_files" => [
    "bin/test-rinci"
  ]
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
