use strict;
use warnings;
use Test::More tests => 3;

BEGIN { use_ok 'Catalyst::Test', 'gdb' }
BEGIN { use_ok 'gdb::Controller::invoke' }

ok( request('/invoke')->is_success, 'Request should succeed' );


