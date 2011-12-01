
use strict;
use warnings;



use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Steroids for your perl one-liners.",
  "AUTHOR" => "Naveed Massjouni <naveedm9\@gmail.com>",
  "BUILD_REQUIRES" => {},
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "App-p",
  "EXE_FILES" => [
    "bin/p"
  ],
  "LICENSE" => "perl",
  "NAME" => "App::p",
  "PREREQ_PM" => {
    "Class::Autouse" => 0,
    "Data::Dump" => 0,
    "File::Slurp" => 0,
    "JSON::XS" => 0,
    "List::AllUtils" => 0,
    "XML::Hash::LX" => 0,
    "YAML::XS" => 0,
    "utf8::all" => 0
  },
  "VERSION" => "0.0100",
  "test" => {
    "TESTS" => ""
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



