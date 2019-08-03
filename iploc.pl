#!/usr/bin/perl
# <-----( IP-Loc )----->
# Author : WenDev89
# Tool ini uda diverifikasi Github, jadi jangan coba-coba Recode
# Niat saya baik, biar kita bisa menghargai karya orang lain ^_^
#

use Socket;
use Term::ANSIColor;
use WWW::Mechanize;
use JSON;

@iphost=$ARGV[0];
my @ip = inet_ntoa(scalar gethostbyname("@iphost")or die "\n\n\n  Error! IP or Host invalid or you did not input it\n\n\n");
my @hn = scalar gethostbyaddr(inet_aton(@ip),AF_INET);
 
my $GET=WWW::Mechanize->new();
    $GET->get("http://ip-api.com/json/@ip");
    my $json = $GET->content();
 
my $info = decode_json($json);

print color 'bold bright_blue';

print "\n";
print "\n";
print "⊙==========[ IP-Loc ]==========⊙\n";
print " Official Site :  wendev89.site\n";
print " ⊙========[ WenDev89 ]========⊙\n";
print "\n";
print color 'bold bright_red';
print "  [⊙]  IP ▶️ ", $info->{'query'}, "\n";
print color 'bold white';
print "═══════════════════════════════════════\n"; 
print "\n";
print color 'bold bright_green';
print "  [✔️] Organization ▶️ ", $info->{'org'}, "\n";
print "      Provider: ", $info->{'isp'}, "\n";
print "\n";
print "  [✔️] Country ▶️ ", $info->{'country'}," (", $info->{'countryCode'},")", "\n";
print "      Region: ", $info->{'regionName'}, " (" , $info->{'region'},")", "\n";
print "      City: ", $info->{'city'}, "\n";
print "\n";
print color 'bold bright_red';
print "  [✔️] Geolocation ▶️ ", "Latitude: " , $info->{'lat'}, "\n";
print "      ", "Longitude ▶️ ", $info->{'lon'}, "\n";
print "\n";
print color 'bold bright_green';
print "  [✔️] Timezone ▶️ ", $info->{'timezone'}, "\n";
print "\n";
print color 'bold bright_blue';
print "© Profile wendev89\n";
print "█║▌│█│║▌█║▌║││█║▌║▌║▌║▌▌║▌\n";
print "Verified Tool by Github ®\n";
print "\n";
print "\n";

print color 'reset';
