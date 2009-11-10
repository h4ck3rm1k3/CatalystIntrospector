use strict;
use warnings;
use Test::More tests => 3;

BEGIN { use_ok 'Catalyst::Test', 'gdb' }
BEGIN { use_ok 'gdb::Controller::MopClassNewObject' }

ok( request('/mopclassnewobject')->is_success, 'Request should succeed' );


