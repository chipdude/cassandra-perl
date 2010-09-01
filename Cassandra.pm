package Cassandra;
use warnings;
use strict;

=head1 NAME

Cassandra - Fast and complete interface to Cassandara database

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';
our $XS_VERSION = $VERSION;

if (eval { require XSLoader }) {
    XSLoader::load('Cassandra', $XS_VERSION);
}
else {
    require DynaLoader;
    local @Cassandra::ISA = qw(DynaLoader);
    Cassandra->bootstrap($XS_VERSION);
}

=head1 SYNOPSIS

    use Cassandra;

    my $foo = Cassandra->new(server => $server, keyspace => $ks);
    ...

=head1 EXPORT

None - this is all OO baby.

=head1 METHODS

=head2 function1

=cut

sub function1 {
}

=head2 function2

=cut

sub function2 {
}

1;
__END__

=head1 AUTHOR

Chip Salzenberg, C<< <chip@pobox.com> >>

=head1 BUGS

Please report any bugs or feature requests to C<bug-cassandra at rt.cpan.org>, or through
the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Cassandra>.
I will be notified, and then you'll automatically be notified of progress on your bug as I make changes.

=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Cassandra

You can also look for information at:

=over 4

=item * RT: CPAN's request tracker

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=Cassandra>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/Cassandra>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/Cassandra>

=item * Search CPAN

L<http://search.cpan.org/dist/Cassandra/>

=back


=head1 ACKNOWLEDGEMENTS


=head1 LICENSE AND COPYRIGHT

Copyright 2010 Topsy Labs.

This program is free software; you can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

See http://dev.perl.org/licenses/ for more information.


=cut
