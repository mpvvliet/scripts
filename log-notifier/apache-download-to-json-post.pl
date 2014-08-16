#!/usr/bin/perl

use JSON;
use LWP::UserAgent;
use HTTP::Request;

$URL = "https://dexter.xebialabs.com/hubot/xl-download-notify?room=Downloads";
$REGEXP = "([a-z]+) .* \"GET /download/(.*\.(zip|jar)) HTTP/...\" 200 ";

sub post {
  my $payload = shift;
  print $payload . "\n";

  my $ua      = LWP::UserAgent->new();
  my $request = HTTP::Request->new(POST => $URL);
  $request->content_type("application/json");
  $request->content($payload);
  print $ua->request($request)->as_string();
}

%event = ( "name", "xl-download-notifier" );

while(<>) {
  if($_ =~ /$REGEXP/) {
    $event{"artifact"} = $2;
    $event{"user"} = $1;
    my $output = to_json(\%event);
    post($output);
  }
}

