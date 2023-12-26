my @answer = split //, <>;
my $found = 0;

while(!$found) {
  my $guess = <>;
  my $bulls = 0, my $cows = 0;
  my @guess = split //, $guess;

  for (my $i = 0; $i < 4; $i++) {
    if ($answer[$i] eq $guess[$i]) {
      $bulls++;
    } elsif ($guess =~ /$answer[$i]/) {
      $cows++;
    }
  }

  print $bulls, $cows;

  if ($bulls == 4) {
    $found++;
  }
}

print join(``, @answer);
