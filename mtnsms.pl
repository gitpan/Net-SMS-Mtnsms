#!/usr/bin/perl

#------------------------------------------------------------------------------
#
# Standard pragmas
#
#------------------------------------------------------------------------------

use strict;
require v5.6.0;

use lib 'blib/lib';
use Net::SMS::Mtnsms;

my $sms = Net::SMS::Mtnsms->new(
    username    => 'Ave.Wrigley@itn.co.uk',
    password    => 'warthog',
    recipient   => '447713986247',
    message     => 'hello world',
    signature   => 'foobar',
    verbose     => 1,
);

$sms->verbose( 1 );
$sms->send_sms();
