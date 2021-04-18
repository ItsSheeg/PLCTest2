use Time::HiRes qw( time );
my $start = time();
my @letters = ("a".."z"); 
my @data;   
my $st = time;   
for(my $i = 0; $i < 200 ; $i++){ 
    my $random_letter = $letters[int rand @letters];
   
    my $random_letter2 = $letters[int rand @letters];
    
    my $random_letter3 = $letters[int rand @letters];
    my $name = join($random_letter , $random_letter2, $random_letter3 );
    my $age=int(rand(100));   
    my $duplicate=0;   
    for($j=0;$j<$i;$j++){
        my $check =$data[$j][0];
        if($name ~~ @data ){    
            $duplicate=1;   
            break;
        }
    }
    if($duplicate==0){ 
        $data[$i][0] = $name;  
        $data[$i][1] = $age;    
    }else{
    print "$name is already in the array";
    print "\n";
    redo;
    }
    print "$name";
    print "  -  ";
    print "$age";
    print "\n";
}

my $end = time();
printf("Execution Time: %0.02f s\n", $end - $start);