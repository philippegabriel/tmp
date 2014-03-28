#!/usr/bin/perl
@files=glob "*.csv";
my %seen;
foreach (@files) {
	open my $fd, $_ or die("Couldn't open $file");
	while(<$fd>){
		chomp;
		s/^\s+//;
#		print ;
		my ($sum,$month) = split(/ /);
		$seen{$month} += $sum;
	}
	close $fd;
}
#output the total
foreach my $key (sort keys %seen){
	print "$key $seen{$key}\n";
}

