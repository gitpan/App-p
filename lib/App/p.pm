use strict;
use warnings;
package App::p;

our $VERSION = '0.0304'; # VERSION

# ABSTRACT: Steroids for your perl one-liners.


1;

__END__

=pod

=head1 NAME

App::p - Steroids for your perl one-liners.

=head1 VERSION

version 0.0304

=head1 SYNOPSIS

    Usage: p [-lneE etc] 'code'
        The code can make use of:
        r   to File::Slurp::read_file()
        w   to File::Slurp::write_file()
        S   to say()
        p   to print()
        dd  to Data::Dump::dd()
        jd  to JSON::XS::encode (utf8/pretty)
        jl  to JSON::XS::decode (utf8/allow nonref) a thing
        xd  to XML::Hash::LX::hash2xml()
        xl  to XML::Hash::LX::xml2hash()
        yd  to YAML::Dump()
        yl  to YAML::Load()
        get,head,getprint,getstore,mirror from LWP::Simple
        sum,first,min,max,zip,uniq,any,all,none ... all of List::AllUtils

    Examples:

    p 'dd [File::Spec->path]'   # dynamically load arbitrary modules
    p -pe 's/foo/bar/' foo.txt  # use your favorite options like -lane
    p 'say "hello world!"'      # -E is assumed if no options are provided
    p 'dd yl r "config.yml"'    # chain commands
    p 'S sum 1,2,3,4'           # all of List::AllUtils is at your fingertips
    p 'dd ExtUtils::Installed->new->modules' # list all installed modules
    p '  dd xl r "/etc/xml/xml-core.xml"'    # print dump of hash converted xml
    p 'p xd xl r "/etc/xml/xml-core.xml"'    # print xml converted from hash
    p 'p get "http://icanhazip.com"'         # print contents of url
    p 'dd uniq map $_->{ostext}, @{ jl get "http://www.cpantesters.org/distro/A/App-p.json" }' # have fun!

=head1 CONTRIBUTORS

=over 4

=item *

datamuc <L<https://github.com/datamuc>>

=item *

Stanislaw Pusep <L<https://github.com/creaktive>>

=item *

Stefan Corneliu Petrea <L<https://github.com/wsdookadr>>

=item *

Tommy Stanton <L<https://github.com/tommystanton>>

=back

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
