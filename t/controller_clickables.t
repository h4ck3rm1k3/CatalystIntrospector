use strict;
use warnings;
use Test::More tests => 3;

BEGIN { use_ok 'Catalyst::Test', 'gdb' }
BEGIN { use_ok 'gdb::Controller::clickables' }

ok( request('/clickables')->is_success, 'Request should succeed' );


