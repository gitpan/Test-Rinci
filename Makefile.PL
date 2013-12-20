
use strict;
use warnings;

use 5.010001;

use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Test Rinci metadata",
  "AUTHOR" => "Steven Haryanto <stevenharyanto\@gmail.com>",
  "BUILD_REQUIRES" => {},
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "Test-Rinci",
  "EXE_FILES" => [
    "bin/test-rinci"
  ],
  "LICENSE" => "perl",
  "NAME" => "Test::Rinci",
  "PREREQ_PM" => {
    "Log::Any::App" => 0,
    "Perinci::Access::Perl" => "0.55",
    "Perinci::Sub::GetArgs::Argv" => "0.21",
    "Rinci" => "v1.1.40",
    "Test::More" => "0.98",
    "experimental" => 0
  },
  "TEST_REQUIRES" => {
    "File::Spec" => 0,
    "IO::Handle" => 0,
    "IPC::Open3" => 0,
    "Test::More" => "0.98"
  },
  "VERSION" => "0.07",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


my %FallbackPrereqs = (
  "File::Spec" => 0,
  "IO::Handle" => 0,
  "IPC::Open3" => 0,
  "Log::Any::App" => 0,
  "Perinci::Access::Perl" => "0.55",
  "Perinci::Sub::GetArgs::Argv" => "0.21",
  "Rinci" => "v1.1.40",
  "Test::More" => "0.98",
  "experimental" => 0
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  delete $WriteMakefileArgs{TEST_REQUIRES};
  delete $WriteMakefileArgs{BUILD_REQUIRES};
  $WriteMakefileArgs{PREREQ_PM} = \%FallbackPrereqs;
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



