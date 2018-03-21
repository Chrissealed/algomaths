unit module Prime-factors;

role PrimeFactors is export {

    method breakdown(Int $integer is copy --> Hash) {
        #my @prime = (2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79);
        my %prime;
        my Int $i = 2;
        loop {
            last if $integer == 1;
            if is-prime($i) {
                if ($integer %% $i) {
                    push %prime, ($integer => $i);
                    $integer = $integer div $i;
                    next;
                }
            }
            $i++;
        }
        return %prime;
    }

}