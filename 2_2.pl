use v5.10;
use Data::Dumper;
# use warnings;

my @ids = ("qcsnyvpigkxmrdawlfdefotxbh", "qcsnyvligkymrdawljujfotxbh", "qmsnyvpigkzmrnawzjuefotxbh", "qosnyvpigkzmrnawljuefouxbh", "qcsnhlpigkzmrtawljuefotxbh", "qcsnyvpigkzmrdapljuyfotxih", "qcsnbvpiokzmrdawljuerotxbh", "qcfnyvmigkzmrdawljuefotdbh", "qcsnynpigkzmrdawljuefptxbp", "qcsgyapigkzmrdawljuafotxbh", "qcsnyvpigkzmrdapljueeotibh", "qcfnyvpigkzmndawljuwfotxbh", "qzsayvpigkzmrdawijuefotxbh", "qcsnsvpiekzmrdawljfefotxbh", "ncsnyvpigkzmrdaaljuefotxzh", "qssnyvpigkzmrdawljuefotobg", "qcshyipigkzmrdajljuefotxbh", "qcsnyvtigkzmrdawljgeaotxbh", "qcsnkvpxgkzmrdawljuefltxbh", "qcsnyvpiikzmrdawljuwfoqxbh", "qcsnybpigwzmqdawljuefotxbh", "qcsiyvpipkzbrdawljuefotxbh", "qldnyvpigkzmrdzwljuefotxbh", "qcsnyvpwgkzcrdawljuefmtxbh", "qcsnyvnigkzmrdahmjuefotxbh", "qcsnydpigkzmrdazljuefotxnh", "qcsqyvavgkzmrdawljuefotxbh", "ucsnyvpigkzmrdawljuefocxwh", "qcsnivpigrzmrdawljuefouxbh", "tcsnyvpibkzmrdawlkuefotxbh", "qcstytpigkzmrdawsjuefotxbh", "qcynyvpigkzmrdawlluefotjbh", "qcstyvpigkqrrdawljuefotxbh", "icsnyvpizkzmrcawljuefotxbh", "qcsnyvpimkzmrdavljuezotxbh", "qvsnoupigkzmrdawljuefotxbh", "qcsnyvpigkzmrdawwjuefftxgh", "qcpnyvpijkzmrdvwljuefotxbh", "qcsnyvpigkzmxdakdjuefotxbh", "jcsvyvpigkqmrdawljuefotxbh", "qcwnyvpigczmrsawljuefotxbh", "qcsnyvpdgkzmrdawljuefoixbm", "qysnyvpigkzmrdmwljuefotxbp", "qcsnavpigkzmrdaxajuefotxbh", "qcsfkvpigkzmrdawlcuefotxbh", "qcsnyvpigkvmrdawljcefotpbh", "qcsnyvpiqkkmrdawlvuefotxbh", "qhsnyvpigkzmrdawnjuedotxbh", "qasnlvpigkzmrdawljuefotxkh", "qgsnyvpigkzmrdabpjuefotxbh", "jcsnyvdigkzmrmawljuefotxbh", "qcsnivpigkzmrdawljuefonxth", "qcsnyjpigkzmrdawljgefotxmh", "qcstyvpigkzmrdacljuefovxbh", "qcsnvvpigkzmrdawljuewotrbh", "qcsnyvaigdzmrdawljueuotxbh", "qcsnyvpegkzmwdawljzefotxbh", "qcsnevpngkzmrdawlouefotxbh", "qcsnuvpigozmrdawljuefotdbh", "qgsnyvpigkzmqdayljuefotxbh", "qcsnyvpigkzmrdcwdjuofotxbh", "qcnnyvpigkzmrzawljuefstxbh", "qlsgyvpigkzmrdtwljuefotxbh", "qcsnyfpigkzlroawljuefotxbh", "qcsnkvwigkzmrdowljuefotxbh", "qcsnrvpigkzmrdawljuvfltxbh", "qcsnyvpigkzvreawljuefotxmh", "qcsrgvpigkzmrdawliuefotxbh", "qysnyvpigkzmrdawlxaefotxbh", "qcsnyvpigizmrdlwljuefotxbi", "qzsnyvpitkzmrdawljuefbtxbh", "qzgnyvpigkzmrdawljuefotxih", "qcsnyvpigkzmrdawlguefvtxbb", "qcsnyvpigkzmidawljuefouxjh", "qksnyvpigkzmrdawlruefotxhh", "qcsnyvpinkzmrdaaljuefotxah", "qcsnxvpigkzjrdawljuefhtxbh", "qcsnyvpigkzardawlgueuotxbh", "qcsnyvpiakzmrdpwljuefotxbt", "qcsnyvpigkzmrdawkjuefotxgb", "qcsnyvpigkzmrdawljuehocsbh", "qcsnsvpigktmrdawljuefotxvh", "qusnrvpigkzrrdawljuefotxbh", "qcsnyhiigkzmrdawrjuefotxbh", "qcsnavpigkzmrdawlfuefotxbz", "qcsnyvpigkzmmdamsjuefotxbh", "qcsnyvzigkzmrdcwljmefotxbh", "qcsnyvpigkzmriawljuefotbbe", "qcsnyvpigksmrdawljaefotxbd", "qcsnyvpigkzfrdawljuefoxxmh", "qcsnyvpygkrmrdawljuefotxbi", "qcsngvwigfzmrdawljuefotxbh", "qcsnyvpigkmkrdauljuefotxbh", "qcsnyvpigxzmrdgwljuefwtxbh", "qconyapigkzmrdaxljuefotxbh", "qcsnydpigkzwrdawljulfotxbh", "qcsnyvpimkzmmdawljuefotxch", "qcsnkspigkzmrdawgjuefotxbh", "qcsnyvpigkzmrdhwljfefbtxbh", "qcsnyipijkztrdawljuefotxbh", "qcseyvpigkrhrdawljuefotxbh", "qcsnyvpivkzmrdawljuefottbb", "qcsnyvpigkzmrdawlouefcjxbh", "qcsnyvpigkzmrgayljuefotxbm", "qcsnyvpvgkzmrdawrjujfotxbh", "qcsnyvpigkzmndawljuefqtxch", "qcsnyvpigbzmrdawljuefotibg", "qcsnyvpigkzmseawljuefotxbv", "qcsnwvpigkzmraawnjuefotxbh", "mcsnyvpiqkzmrdawljuefotlbh", "bcsnyvpigczmrdmwljuefotxbh", "qcsnyvpigkzmrtawljuegntxbh", "qcsnyvpijkzmrdawlmrefotxbh", "qdsnyvpfgkzmrdawljuekotxbh", "qcsnyvpigkzmrdawcjfegotxbh", "qcslyvphgkrmddawljuefotxbh", "qcsnyvpigkzmsdawkjuefojxbh", "qzsnyvpigkzmrzawljuefmtxbh", "qcsnyvpqgkzmcdawljuefttxbh", "qcsnyvpbgkpmrdawljuefoqxbh", "qcsnyvpigkemrdywljmefotxbh", "qcsnyypigkzmrdawljmefotxwh", "jcsnyvhwgkzmrdawljuefotxbh", "qcsnyvpigkzmrdawljurlotxwh", "qcsnnvpigzzmrdawljuefotwbh", "hcsnyvpigkzmrdarljuefitxbh", "qcsnyvpilkzmrfawljuefotsbh", "qcsnynpigkzmldawijuefotxbh", "qcsnyvpkgkjmrdawljuefotxlh", "qcsnylpigkzprdawljgefotxbh", "qcsnyvpigkzmrrawljnefohxbh", "qcsnivpigkzmrqawlbuefotxbh", "qcsgyvpigkzmrfawljuefotbbh", "qccuyvpigkzmrdawyjuefotxbh", "gcsnyvpigkzjrdawljuefotxby", "qcsmyvpiekzbrdawljuefotxbh", "qcsnyvpzgkrmrdawljuefotxbs", "qesnyvpigkzmpdqwljuefotxbh", "qcsnyvpigqzmrdawljuefutibh", "qcdnyvpigkzirdawljfefotxbh", "qcsnyvpiukzmrcrwljuefotxbh", "qcsnbvpickzmrdswljuefotxbh", "qcsnyvpighzmrpadljuefotxbh", "qccnyvpigkzmrdawljudxotxbh", "qcsnyvpigkzmrdabljuesotxlh", "qcsnyvpigkzmrrawlruefozxbh", "qconyzpigkzmrdawljuefotjbh", "qclnyvpigkzmrdxwljuefotbbh", "qcsnygpigkzmrdawlhuefooxbh", "qcsnyvpigkzmvdawljuefntxnh", "qcskyvpigkzmreawljuefotubh", "qrsnyvpxgkzmrdawljuefotxbz", "qclnyvpigtamrdawljuefotxbh", "qcsnyvpigkzmrdawojxefoyxbh", "qcsnyvpinkzmrdakljuwfotxbh", "qcsnyvpiykzmedawljuefgtxbh", "qcsayvpigkcmrdawijuefotxbh", "qcsnyvuiekzmrdamljuefotxbh", "qcdnyvpigkzmrdawnjuefoxxbh", "qcsnfvpwgszmrdawljuefotxbh", "qcsnycpigkzmrdawljqefotxih", "qcslyvphgkrmrdawljuefotxbh", "ecsnyvpigkzmrdawykuefotxbh", "qcsayvpigkzmraawljuekotxbh", "qcsnyvpigkdmrdawljuewofxbh", "qcznyvpigkzqrdawljuefotxnh", "qcsnyvplgkzmrdawljiefotlbh", "qcsnyvpigkzmroewljuefotbbh", "qcvnyvpigkzvrdawujuefotxbh", "qcanyypigkzmrdaeljuefotxbh", "qcsnyvwigkzmrdewljuefotxqh", "qcsryvpigkvmrdawljuefotabh", "pcsnyvpigkwmrdawljueforxbh", "qcsncvpigkzmrdawljuefotwmh", "qcsnyvpigozmrdawljudfozxbh", "qcsnynpigkzmrbawhjuefotxbh", "qcsnyvuigkzmrqawljuefotxch", "qcsnyvpickzmrdawljueeofxbh", "qcsnyvpigkzgrdawljueiouxbh", "qcsnyvpigkztrdawljuxnotxbh", "qcsnyvpigwzvrdawljfefotxbh", "qcsnyvpilkzmrdawljuefotxcz", "qcsnjvpigkzmrdawljuefoywbh", "qhsnyvpigyzmrdawljuhfotxbh", "qcsnyvpirkzmfdawljuffotxbh", "qcsjyvpigkzmvdawljuefotxzh", "qcszivpirkzmrdawljuefotxbh", "qwsnyvpigkzmtdawljuefetxbh", "qcrntvpigkzordawljuefotxbh", "qrsnyvpigkzmsdawljrefotxbh", "qcsnyviivkzmrdazljuefotxbh", "ecsnyvpigkzmrdawyjuefotxbw", "qnsnyvpkgkzmrdawljueqotxbh", "qcsyyppigkzmrdawljuefotxba", "qcsnyvpigkzhrdpwljuefouxbh", "ucsnyvpigkzmrdawojuefouxbh", "qysnyvpigkzmrdawljukfotxbd", "qcjnyvpigkzmrdalljfefotxbh", "fcsnyapigkmmrdawljuefotxbh", "qcnnkvpigkzmrdawljuefctxbh", "ocsnyvpigkzmsdawljuefotxbl", "qcsnyvpiakomrdawpjuefotxbh", "qcsnyvpigkzmrdawljvefbtxwh", "qcsnuvpigkzmvdfwljuefotxbh", "qcsnyapihkzmrdagljuefotxbh", "qzsnyvpigkzmrdawtjuefotxgh", "qcsnyvpigkzmrdawljuefomyah", "ocsnyvpigkzqrdawljuefotxbt", "qnsnyvpigkzmrdawljvevotxbh", "icsnyvpigkzmrdawljuefntxbt", "qcsnyvpigkzdrdawljuefotbbm", "scsnyvpigkzmrgawljuofotxbh", "qcsnydpigkzmrdowljuefotkbh", "qcsnyvtikkzmrdawljuefolxbh", "qcsiyvpigkcmrddwljuefotxbh", "qyrnyvpigkzmodawljuefotxbh", "pcsndvpfgkzmrdawljuefotxbh", "qcsnyvkigkhmriawljuefotxbh", "qcsnyvpigkzmsdmwlkuefotxbh", "dosnyvpigkzmrdawdjuefotxbh", "qcnnnvpigkzmrdzwljuefotxbh", "qcsnyvpivkumrdailjuefotxbh", "qcsnyvpigkzmrdswljuzfotxbz", "qcscynpigkzmrdawljuefotxbc", "qeanyvpigkzmrdawijuefotxbh", "qclnylpigkzmrdawljuefotxyh", "qcsnyvpigkzmrdawljbefowxbp", "qcsnyvpagkzmrdawljuefolebh", "qxsiyvpigkzmrdawljuefotxgh", "qcsnyvpigkynrdawljuefoqxbh", "qcsnevpigkzmrdxwgjuefotxbh", "qcsnyvpdgkzlrdawljeefotxbh", "qcsnyvpigkzmrgawljxbfotxbh", "ecsnyvpigkzmrdbwbjuefotxbh", "qcsnyvpigkzmraawujuefocxbh", "qcsnyvpihkzmrdawljuefouxbn", "fgsqyvpigkzmrdawljuefotxbh", "qcsnyvpigkmmrdawajuefotnbh", "qcsnyvvigkzmrdahljudfotxbh", "qcsnyvpixkzmrdqwljutfotxbh", "ncsnyvpickzmrdawljuehotxbh", "qcsnyvpizkzmrdawlpuefotxbp", "wcsnyvfigkzmrdakljuefotxbh", "qcsnyvpigkznrdhwljupfotxbh", "jcsnyvpigkpmzdawljuefotxbh", "qcsnyppigkkmrdawljujfotxbh", "qcsnyvpigkumrdaeljuefodxbh", "qcsnyvhigkzmrdrwljuefodxbh", "qcsnyvpigkacrdawtjuefotxbh", "qcsnyvpigkzmylawlquefotxbh");
my @test = ("abcdef", "fghij", "klmno", "pgrst", "fguij", "axcye", "wvxyz");

my $found = 0;
my $result = 0;
for(my $i = 0; $i < scalar @ids; $i++){
	if($found){ next; }
	my $word = shift(@ids);
	$result = wordDiff($word, \@ids);
	
	if($result){
		$found = 1;
	}
}

print "Result: $result";

sub wordDiff{
	my @word = split(//, $_[0]);
	my @compareWords = @{ $_[1] };
	
	for(my $i = 0; $i < scalar @compareWords; $i++){
		my @compare = split(//, $compareWords[$i]);
		my $diffs = 0; # number of letter difference
		my $diffAt; # index of the difference
		
		for(my $j = 0; $j < scalar @word; $j++){
			if($word[$j] ne $compare[$j]){
				$diffs++;
				$diffAt = $j;
			}
		}
		
		if($diffs != 1){
			next;
		}
		else{
			splice(@word, $diffAt, 1);
			return join("", @word);
		}
	}
	
	return undef;
}