package gdb::Model::Firefox;

use strict;
use warnings;
##use parent 'Catalyst::Model';
#use Moose;
#use MooseX::Types::Path::Class;
#use Cwd;
#use Moose::Autobox;
#use MooseX::Types::Moose qw/ HashRef ArrayRef ClassName Object Str /;
#use MooseX::Types::Common::String qw/ NonEmptySimpleStr /;
#use namespace::autoclean;
use WWW::Mechanize::FireFox;
use Catalyst::Model::Adaptor;

#package MyApp::Model::SomeClass;
use base 'Catalyst::Model::Adaptor';
__PACKAGE__->config( class => 'WWW::Mechanize::FireFox' );


=head1 NAME

gdb::Model::Firefox - Catalyst Model

=head1 DESCRIPTION

Catalyst Model.

=head1 AUTHOR

James Michael DuPont,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

# sub BUILD {
#     my $self = shift;

# #    my $mech = WWW::Mechanize::FireFox->new();
# #    $self->stash->{mech}=$mech;

    
# }

# sub get  
# {
#     my ( $self, $c , $url) = @_;

# #    my $mech = $c->stash->{mech};
# #    $c->response->body('no mech!  ') unless $mech;
   
# #    $mech->get($url);


# #    Dumper()$mech

# }

# #has root =>
# #    is       => "ro",
# #    isa      => "WWW::Mechanize::FireFox",
# #    required => 1,
# #    coerce   => 1,
# #    ;

# sub getfile : method {
#     my $self = shift;
#     my $path = Cwd::abs_path(shift);
#     my $file = Path::Class::File->new( $self->root, $path );
#     -r $file or confess qq{File "$file" is unreadable or non-existent};
#     return $file;
# }

# sub slurpfile : method {
#     +shift->get(+shift)->slurp;
# }

# __PACKAGE__->meta->make_immutable;

    1;
