#!/usr/bin/perl

use JSON;
use LWP::UserAgent;
use HTTP::Request;
use URI;
use URI::QueryParam;

$DEBUG = 1;

$URL = "https://dexter.xebialabs.com/hubot/xl-download-notify?room=Downloads";
$XLD_TRIAL_REGEXP = "\"GET (/xldownload/license\?.*) HTTP/...\" 200 ";
$XLR_TRIAL_REGEXP = "\"GET (/xldownload/get-download-link\?.*) HTTP/...\" 200 ";

sub post {
  my $payload = shift;
  print $payload . "\n";

  if (! $DEBUG) {
    my $ua      = LWP::UserAgent->new();
    my $request = HTTP::Request->new(POST => $URL);
    $request->content_type("application/json");
    $request->content($payload);
    print $ua->request($request)->as_string();
  }
}

sub fill_and_post_event {
    my $string = shift;
    my $url = URI->new($string);

#    for my $key ($url->query_param) {
#      print "$key: ", join(", ", $url->query_param($key)), "\n";
#    }

    $event{"user"} = $url->query_param("name") . " (" . $url->query_param("company") . ")";
    my $output = to_json(\%event);
    post($output);
}

%event = ( "name", "xl-download-notifier" );

while(<>) {
  if($_ =~ /$XLD_TRIAL_REGEXP/) {
    $event{"artifact"} = "XLD trial";
    fill_and_post_event($1);
  } elsif($_ =~ /$XLR_TRIAL_REGEXP/) {
    $event{"artifact"} = "XLR trial";
    fill_and_post_event($1);
  }
}

