package gdb::Model::WikiPage;

use strict;
use base 'Catalyst::Model::DBIC::Schema';

__PACKAGE__->config(
    schema_class => 'MySchema',
    connect_info => [
        'dbi:SQLite:database.db',
        
    ],
);

=head1 NAME

gdb::Model::WikiPage - Catalyst DBIC Schema Model
=head1 SYNOPSIS

See L<gdb>

=head1 DESCRIPTION

L<Catalyst::Model::DBIC::Schema> Model using schema L<MySchema>

=head1 AUTHOR

James Michael DuPont,,,

=head1 LICENSE

This library is free software, you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
