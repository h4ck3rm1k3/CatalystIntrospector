use strict;
use warnings;
use Test::More tests => 3;

BEGIN { use_ok 'Catalyst::Test', 'gdb' }
BEGIN { use_ok 'gdb::Controller::MopClassCreate' }

ok( request('/mopclasscreate')->is_success, 'Request should succeed' );


