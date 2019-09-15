#!/usr/bin/perl
 
#Get input
while(<>)
{
    $text = $text . $_;
}
#Removes parenthenticals
#$text =~ s/\([\w+ ]+\)//g;
 
#Adds ( and ) around voice overs
#$text =~ s/\(V\.O\.\) *\n*(.+)/\($1\)/g;
#If you just want the (V.O.) part removed but don't want the parentheses, comment the line above and uncomment the one below
# $text =~ s/\(V\.O\.\) *\n*(.+)/$1/g;
 
 
#Substitutes character names for aliases and quotes their dialogue.
#Simply change RILIANE to your character name and the r before "$1" to whichever alias you want
#If you need more characters, just copy and paste one of these lines and change it. Like this:
# $text =~ s/YOURCHARACTER *\n*(.+)/youralias "$1"/g;
$text =~ s/Capy/Capi/g;
$text =~ s/Capi/Yara/g;
$text =~ s/CAPY/CAPI/g;
$text =~ s/CAPI: (.+)/\tyara "$1"/g;
$text =~ s/CAPI_(\w+): (.+)/\tyara @ \L$1 "$2"/g;


$text =~ s/Tuca/Tuco/g;
$text =~ s/TOUCAN/TUCO/g;
$text =~ s/TUCA/TUCO/g;
$text =~ s/TUCO: (.+)/\ttuco "$1"/g;
$text =~ s/TUCO_(\w+): (.+)/\ttuco @ \L$1 "$2"/g;


$text =~ s/Taty/Tati/g;
$text =~ s/TATY/TATI/g;
$text =~ s/TATI: (.+)/\ttati "$1"/g;
$text =~ s/TATI_(\w+): (.+)/\ttati @ \L$1 "$2"/g;

$text =~ s/Xení/Xeni "$1"/g;
$text =~ s/XENI: (.+)/\txeni "$1"/g;
$text =~ s/XENI_(\w+): (.+)/\txeni @ \L$1 "$2"/g;

$text =~ s/VILLAGERS: (.+)/\tvillagers "$1"/g;
$text =~ s/VILLAGERS:(.+)/\tvillagers "$1"/g;

$text =~ s/\/\//\t\/\//g;

$text =~ s/SHOW/\tshow/g;
$text =~ s/AT/at/g;
$text =~ s/HIDE/\thide/g;
$text =~ s/PLAY MUSIC/\tplay music/g;
$text =~ s/PLAY SOUND/\tplay sound/g;
$text =~ s/LABEL (.+)/\treturn\n\nlabel $1:/g;
$text =~ s/CHOICE (.+)\nJUMP TO/\t\t"$1":\n\t\t\tjump/g;
$text =~ s/JUMP TO/\tjump/g;
$text =~ s/BEGIN.CHOICES?/\tmenu:/g;
$text =~ s/CHOICE (.+)/\t\t"$1":/g;
$text =~ s/END.CHOICES?/\n/g;






#Output result
print $text;