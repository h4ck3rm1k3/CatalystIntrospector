use strict;
use warnings;
use Test::More tests => 3;

BEGIN { use_ok 'Catalyst::Test', 'gdb' }
BEGIN { use_ok 'gdb::Controller::synchronize' }

ok( request('/synchronize')->is_success, 'Request should succeed' );


