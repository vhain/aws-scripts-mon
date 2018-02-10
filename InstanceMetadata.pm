use Compress::Zlib;
use LWP 6;
use JSON;
use Data::Dumper;

sub instance_metadata{
    my ($role) = @_;
    use LWP::Simple qw($ua get);
    $ua->timeout(2); # timeout for meta-data calls
    my $user_agent = new LWP::UserAgent(agent => "perl");
    $user_agent->timeout($http_request_timeout);
    $url = "http://169.254.169.254/latest/meta-data/iam/security-credentials/$role";
    my $request = new HTTP::Request "GET", $url;
    $response = $user_agent->request($request);
    return  decode_json($response->content);
}
$creds =  instance_metadata("ec2-test-cloudwatch-access");
print $creds->{'SecretAccessKey'};

1
