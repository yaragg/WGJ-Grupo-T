#perl 5.22.1 
while(<>)
{
    $text = $text . $_;
}


@matches = $text =~ /PLAY SOUND (\w+)/g;

foreach $item (@matches) {
    print $item . "\n"
}
