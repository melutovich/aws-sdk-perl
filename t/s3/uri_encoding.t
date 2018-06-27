#!/usr/bin/env perl

use strict;
use warnings;

use lib 't/lib';

use English qw(-no-match-vars);
use Data::Printer;
use Data::Dumper;
use Carp;
use Test::More;
use URI::Escape;

use Paws;
use TestRequestCaller;

Paws->default_config->caller(TestRequestCaller->new);
Paws->default_config->credentials('Test::CustomCredentials');

my $bucketname = 'test-uri-paws';
my $s3 = Paws->service('S3', region => 'us-west-2');

my @to_encode = ('&',
                 '$',
                 '@',
                 '=',
                 ':',
                 ';',
                 '+',
                 ',',
                 '?',
                 ' ',
                 (map { chr($_) } (0..31)),
                 chr(127),
    );

foreach my $char (@to_encode) {
  my $response;
  eval { $response = $s3->PutObject(
    "Key"    => "test$char",
    "Bucket" => $bucketname,
    "Body"   => 'Blub',
      );
  } or do {
    diag qq[Error creating object: $@];
  };

 TODO: {
     local $TODO = 'Remove when URI encoding is sorted';
## The URI should contain a once-encoded character:
     is($response->url, 'https://s3-us-west-2.amazonaws.com/test-uri-paws/test' . uri_escape($char), "S3 uri encoded correctly");
  };
}

done_testing;
