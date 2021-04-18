#Test2P3 Hash Code

use Time::HiRes qw( time );
my @letters = ('a'..'z');
%names;
@keys = keys %names;
$size = @keys;
my $start = time();
TOP:
for (my $i = 0; $i < 1000 ; $i++){
my $random_age = int(rand(100));
my $random_letter = $letters[int rand @letters];
    #print $random_letter;
my $random_letter2 = $letters[int rand @letters];
    #print $random_letter2;
my $random_letter3 = $letters[int rand @letters];
my $finalname = join($random_letter , $random_letter2, $random_letter3);
    
if(exists($names{$finalname} ) ) {
   print "$finalname is already in the Hash\n";
   redo; 
} else{
   
$names{$finalname} = $random_age;
@keys = keys %names;
$size = @keys;
@ages = values %names;
@names = keys %names;

print "$names[$i]";
print " - ";
print "$ages[$i]";
print "\n"; 
}

}
my $end = time();
printf("Execution Time: %0.02f s\n", $end - $start);