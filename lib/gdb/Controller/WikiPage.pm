package gdb::Controller::WikiPage;

use strict;
use warnings;
use parent 'Catalyst::Controller';

=head1 NAME

gdb::Controller::WikiPage - Catalyst Controller

=head1 DESCRIPTION

Catalyst Controller.

=head1 METHODS

=cut


=head2 index

=cut

sub index :Path :Args(0) {
    my ( $self, $c ) = @_;

    $c->response->body('Matched gdb::Controller::WikiPage in WikiPage.');
}

sub show : Regex('^(\w+)\.html$') {
    my ( $self, $c ) = @_;
    $c->stash->{template} = 'view.tt';
    $c->forward('page');
}


=head1 AUTHOR

James Michael DuPont,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
