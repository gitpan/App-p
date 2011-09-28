use strict;
use warnings;
package App::p;

our $VERSION = '0.0001'; # VERSION

# ABSTRACT: Steroids for your perl one-liners.


1;

__END__
=pod

=head1 NAME

App::p - Steroids for your perl one-liners.

=head1 VERSION

version 0.0001

=head1 SYNOPSIS

    p 'dd [File::Spec->path]'   # dynamically load arbitrary modules
    p -pe 's/foo/bar/' foo.txt  # use your favorite options like -lane
    p 'say "hello world!"       # -E is assumed if no options are provided
    p 'dd yl r "config.yml"'    # chain commands
    p 'dd ExtUtils::Installed->new->modules' # list all installed modules

=head1 ACKNOWLEDGEMENTS

This is based on Randy Stauner's
L<http://blogs.perl.org/users/randy_stauner/2011/06/exploratory-one-liners-with-less-typing.html>
and Marco Fontani's L<https://gist.github.com/1042504>.

=head1 AUTHOR

Naveed Massjouni <naveedm9@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2011 by Naveed Massjouni.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

