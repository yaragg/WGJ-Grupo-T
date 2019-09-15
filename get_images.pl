#perl 5.22.1 
while(<>)
{
    $text = $text . $_;
}

$text =~ s/CAPY/CAPI/g;
$text =~ s/TOUCAN/TUCO/g;
$text =~ s/TUCA/TUCO/g;
$text =~ s/TATY/TATI/g;

@matches = $text =~ /([A-Z]+_[A-Z]+):/g;
my %map;
foreach $item (@matches) {
    $map{lc($item)}++;
}

@matches = $text =~ /SHOW (\w+)/g;
foreach $item (@matches) {
    $map{lc($item)}++;
}

my @keys = sort { $a cmp $b } keys %map;

foreach $key (@keys) {
print $key . " " . $map{$key} . "\n"
}
