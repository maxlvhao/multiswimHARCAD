#/usr/bin/perl

# pattern for tex files to compile
@default_files = ('multiswim');

print "latexmkrc: pdf mode\n";
$pdf_mode = 1;

# pdf previewer
if ( $^O eq "linux") {
  if ( `which atril` ) {
    print "latexmkrc: atril found\n";
    $pdf_previewer = "atril %O %S &";
  } 
  elsif ( `which evince` ) {
    print "latexmkrc: evince found\n";
    $pdf_previewer = "evince %O %S &";
  }
  elsif ( `which gv` ) {
    print "latexmkrc: gv found\n";
    $pdf_previewer = "gv %O %S &";
  }
}
