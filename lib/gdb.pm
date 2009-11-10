package gdb;

use strict;
use warnings;

use Catalyst::Runtime 5.70;


# Set flags and add plugins for the application
#
#         -Debug: activates the debug mode for very useful log messages
#   ConfigLoader: will load the configuration from a Config::General file in the
#                 application's home directory
# Static::Simple: will serve static files from the application's root
#                 directory

use parent qw/Catalyst/;
use Catalyst qw/-Debug
    ConfigLoader
    Prototype 
    Static::Simple/;

#use Catalyst qw/-Debug Prototype Textile/;
our $VERSION = '0.01';

# Configure the application.
#
# Note that settings in gdb.conf (or other external
# configuration file that you set up manually) take precedence
# over this when using ConfigLoader. Thus configuration
# details given here can function as a default configuration,
# with an external configuration file acting as an override for
# local deployment.

__PACKAGE__->config( name => 'gdb' );

# Start the application
__PACKAGE__->setup();


=head1 NAME

gdb - Catalyst based application

=head1 SYNOPSIS

    script/gdb_server.pl

=head1 DESCRIPTION

[enter your description here]

=head1 SEE ALSO

L<gdb::Controller::Root>, L<Catalyst>

=head1 AUTHOR

James Michael DuPont,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

sub end  {
    my ( $self, $c ) = @_;
    $c->forward('gdb::V::TT') unless $c->res->output;
}
sub default  {
    my ( $self, $c ) = @_;
    $c->forward('/page/show');
}

1;
