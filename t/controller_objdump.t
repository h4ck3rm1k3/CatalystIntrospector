use strict;
use warnings;
use Test::More tests => 3;

BEGIN { use_ok 'Catalyst::Test', 'gdb' }
BEGIN { use_ok 'gdb::Controller::objdump' }

ok( request('/objdump')->is_success, 'Request should succeed' );


