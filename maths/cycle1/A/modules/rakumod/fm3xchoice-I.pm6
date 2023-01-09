unit module fm3xchoice-I;

use v6;

=begin pod
=NAME class B<Fm3XChoice-I> in B<algomaths>/maths/fm3/modules/pm6/B<fm3xchoice-I.pm6>
=AUTHOR  https://github.com/Chrissealed/algomaths.git
=VERSION 2019.02.17
=end pod

use teeput;

class Fm3XChoice-I does Teeput::Tput is export {
    has Str $.chapter is required;
    has Str $.path is required;

    method stop(--> Bool:D) {
        my Bool $confirm = False;
        my $answer = prompt "Voulez-vous vraiment quitter ? O/n > ";
        if $answer ~~ / <[oO]> / { $confirm = True; }
        return $confirm;
    }

    method x-choice(Bool $put-blank-line = False, Bool $last = False --> Array:D) {
        my $stats-file1 = 'I-statistics.txt';
        state Str @status = ();
        my $t = Tput.new(
            writefile => True,
            filemode => ':a', # :mode<wo>, :create, :append
            writetty => False,
            closefile => True,
            filepath => "%*ENV<ALGOMATHS>/maths/cycle1/fm3/stats/$stats-file1",
        );
        if ($!chapter ~~ / I | 1 /) {
            my Str $method01 = '1. Comment utiliser la notion de multiple d\'un entier naturel ?';
            my Str $method02 = '2. Comment utiliser la division euclidienne ?';
            my Str $method03 = '3. Comment établir la liste des diviseurs d\'un entier non nul ?';
            my Str $method04 = '4. Comment déterminer le PGCD de deux nombre entiers connaissant l\'ensemble des diviseurs de chacun des deux nombres ?';
            my Str $method05 = '5. Comment déterminer le PGCD de deux nombres entiers par l\'algorithme des soustractions ?';
            my Str $method06 = '6. Comment déterminer le PGCD de deux nombres entiers par l\'algorithme des soustractions à l\'aide d\'un tableur ?';
            my Str $method07 = '7. Comment déterminer le PGCD de deux nombres entiers par l\'algorithme d\'Euclide ?';
            my Str $method08 = '8. Comment déterminer le PGCD de deux nombres entiers par l\'algorithme d\'Euclide à l\'aide d\'un tableur ?';
            my Str $method09 = '9. Comment déterminer tous les diviseurs communs à deux nombres avec leur PGCD ?';
            my Str $method10 = '10. Comment savoir si deux nombres entiers sont premiers entre eux ?';
            my Str $method11 = '11. Comment déterminer la fraction irréductible égale à une fraction donnée ?';
            my Str $method12 = '12. Comment résoudre un problème se ramenant au calcul du PGCD de deux nombres entiers ?';
            my Str $pseudopath = '$ALGOMATHS/maths/cycle1/fm3/I/Perl6';
            my Bool $confirm = False;

            if $put-blank-line { $t.tprint: "\n" }
            if $last { push @status, '-1'; return @status; }
            my Str $xchoice = prompt "Choisissez l'ID d'un exercice : (chiffres et/ou lettres; ex: 107+); (q ou Q pour quitter) > ";
            my $time = DateTime.new("yyyy-mm-ddThh:mm:ssZ");
            given $xchoice {
                when / <[qQ]> /
                {
                    $confirm = self.stop(); 
                    if ($confirm) {
                        $t.tprint: "\n";
                        push @status, '-1';
                        return @status;
                    }
                    else { @status = self.x-choice; }
                }
                when '101' { $t.tput: "101. $method01 ($pseudopath/output/m0101.txt) -- $time"; shell "perl6 -I $!path $!path/m0101.p6"; push @status, '101'; }
                when '102' { $t.tput: "102. $method01 ($pseudopath/output/m0102.txt) -- $time"; shell "perl6 -I $!path $!path/m0102.p6"; push @status, '102'; }
                when '103' { $t.tput: "103. $method01 ($pseudopath/output/m0103.txt) -- $time"; shell "perl6 -I $!path $!path/m0103.p6"; push @status, '103'; }
                when '104' { $t.tput: "104. $method01 ($pseudopath/output/m0104.txt) -- $time"; shell "perl6 -I $!path $!path/m0104.p6"; push @status, '104'; }
                when '105' { $t.tput: "105. $method01 ($pseudopath/output/m0105.txt) -- $time"; shell "perl6 -I $!path $!path/m0105.p6"; push @status, '105'; }
                when '106' { $t.tput: "106. $method01 ($pseudopath/output/m0106.txt) -- $time"; shell "perl6 -I $!path $!path/m0106.p6"; push @status, '106'; }
                when '106+' { $t.tput: "106+. $method01 ($pseudopath/output/m0106+.txt) -- $time"; shell "perl6 -I $!path $!path/m0106+.p6"; push @status, '106+'; }
                when '107' { $t.tput: "107. $method01 ($pseudopath/output/m0107.txt) -- $time"; shell "perl6 -I $!path $!path/m0107.p6"; push @status, '107'; }
                when '107+' { $t.tput: "107+. $method01 ($pseudopath/output/m0107+.txt) -- $time"; shell "perl6 -I $!path $!path/m0107+.p6"; push @status, '107+'; }
                when '108' { $t.tput: "108. $method01 ($pseudopath/output/m0108.txt) -- $time"; shell "perl6 -I $!path $!path/m0108.p6"; push @status, ' 108'; }
                when '109' { $t.tput: "109. $method01 ($pseudopath/output/m0109.txt) -- $time"; shell "perl6 -I $!path $!path/m0109.p6"; push @status, '109'; }
                
                when '201' { $t.tput: "201. $method02 ($pseudopath/output/m0201.txt) -- $time"; shell "perl6 -I $!path $!path/m0201.p6"; push @status, '201'; }
                when '202' { $t.tput: "202. $method02 ($pseudopath/output/m0202.txt) -- $time"; shell "perl6 -I $!path $!path/m0202.p6"; push @status, '202'; }
                when '203' { $t.tput: "203. $method02 ($pseudopath/output/m0203.txt) -- $time"; shell "perl6 -I $!path $!path/m0203.p6"; push @status, '203'; }
                when '204' { $t.tput: "204. $method02 ($pseudopath/output/m0204.txt) -- $time"; shell "perl6 -I $!path $!path/m0204.p6"; push @status, '204'; }
                when '205' { $t.tput: "205. $method02 ($pseudopath/output/m0205.txt) -- $time"; shell "perl6 -I $!path $!path/m0205.p6"; push @status, '205'; }
                when '206' { $t.tput: "206. $method02 ($pseudopath/output/m0206.txt) -- $time"; shell "perl6 -I $!path $!path/m0206.p6"; push @status, '206'; }
                when '207' { $t.tput: "207. $method02 ($pseudopath/output/m0207.txt) -- $time"; shell "perl6 -I $!path $!path/m0207.p6"; push @status, '207'; }
                when '208' { $t.tput: "208. $method02 ($pseudopath/output/m0208.txt) -- $time"; shell "perl6 -I $!path $!path/m0208.p6"; push @status, '208'; }
                
                when '301' { $t.tput: "301. $method03 ($pseudopath/output/m0301.txt) -- $time"; shell "perl6 -I $!path $!path/m0301.p6"; push @status, '301'; }
                when '301+' { $t.tput: "301+. $method03 ($pseudopath/output/m0301+.txt) -- $time"; shell "perl6 -I $!path $!path/m0301+.p6"; push @status, '301+'; }
                when '302' { $t.tput: "302. $method03 ($pseudopath/output/m0302.txt) -- $time"; shell "perl6 -I $!path $!path/m0302.p6"; push @status, '302'; }
                when '302+' { $t.tput: "302+. $method03 ($pseudopath/output/m0302+.txt) -- $time"; shell "perl6 -I $!path $!path/m0302+.p6"; push @status, '302+'; }
                when '303' { $t.tput: "303. $method03 ($pseudopath/output/m0303.txt) -- $time"; shell "perl6 -I $!path $!path/m0303.p6"; push @status, '303'; }
                when '303+' { $t.tput: "303+. $method03 ($pseudopath/output/m0303+.txt) -- $time"; shell "perl6 -I $!path $!path/m0303+.p6"; push @status, '303+'; }
                when '304' { $t.tput: "304. $method03 ($pseudopath/output/m0304.txt) -- $time"; shell "perl6 -I $!path $!path/m0304.p6"; push @status, '304'; }
                when '304+' { $t.tput: "304+. $method03 ($pseudopath/output/m0304+.txt) -- $time"; shell "perl6 -I $!path $!path/m0304+.p6"; push @status, '304+'; }
                when '304++' { $t.tput: "304++. $method03 ($pseudopath/output/m0304++.txt) -- $time"; shell "perl6 -I $!path $!path/m0304++.p6"; push @status, '304++'; }
                when '305' { $t.tput: "305. $method03 ($pseudopath/output/m0305.txt) -- $time"; shell "perl6 -I $!path $!path/m0305.p6"; push @status, '305'; }
                when '305+' { $t.tput: "305+. $method03 ($pseudopath/output/m0305+.txt) -- $time"; shell "perl6 -I $!path $!path/m0305+.p6"; push @status, '305+'; }
                when '305' { $t.tput: "305++. $method03 ($pseudopath/output/m0305++.txt) -- $time"; shell "perl6 -I $!path $!path/m030++5.p6"; push @status, '305++'; }
                
                when '401' { $t.tput: "401. $method04 ($pseudopath/output/m0401.txt) -- $time"; shell "perl6 -I $!path $!path/m0401.p6"; push @status, '401'; }
                when '402' { $t.tput: "402. $method04 ($pseudopath/output/m0402.txt) -- $time"; shell "perl6 -I $!path $!path/m0402.p6"; push @status, '402'; }
                when '403' { $t.tput: "403. $method04 ($pseudopath/output/m0403.txt) -- $time"; shell "perl6 -I $!path $!path/m0403.p6"; push @status, '403'; }
                when '404' { $t.tput: "404. $method04 ($pseudopath/output/m0404.txt) -- $time"; shell "perl6 -I $!path $!path/m0404.p6"; push @status, '404'; }
                when '405' { $t.tput: "405. $method04 ($pseudopath/output/m0405.txt) -- $time"; shell "perl6 -I $!path $!path/m0405.p6"; push @status, '405'; }
                when '406' { $t.tput: "406. $method04 ($pseudopath/output/m0406.txt) -- $time"; shell "perl6 -I $!path $!path/m0406.p6"; push @status, '406'; }
                when '406+' { $t.tput: "406+. $method04 ($pseudopath/output/m0406+.txt) -- $time"; shell "perl6 -I $!path $!path/m0406+.p6"; push @status, '406+'; }
                when '406++' { $t.tput: "406++. $method04 ($pseudopath/output/m0406++.txt) -- $time"; shell "perl6 -I $!path $!path/m0406++.p6"; push @status, '406++'; }
                
                when '501' { $t.tput: "501. $method05 ($pseudopath/output/m0501.txt) -- $time"; shell "perl6 -I $!path $!path/m0501.p6"; push @status, '501'; }
                when '502' { $t.tput: "502. $method05 ($pseudopath/output/m0502.txt) -- $time"; shell "perl6 -I $!path $!path/m0502.p6"; push @status, '502'; }
                when '503' { $t.tput: "503. $method05 ($pseudopath/output/m0503.txt) -- $time"; shell "perl6 -I $!path $!path/m0503.p6"; push @status, '503'; }
                when '504' { $t.tput: "504. $method05 ($pseudopath/output/m0504.txt) -- $time"; shell "perl6 -I $!path $!path/m0504.p6"; push @status, '504'; }
                when '505' { $t.tput: "505. $method05 ($pseudopath/output/m0505.txt) -- $time"; shell "perl6 -I $!path $!path/m0505.p6"; push @status, '505'; }
                when '506' { $t.tput: "506. $method05 ($pseudopath/output/m0506.txt) -- $time"; shell "perl6 -I $!path $!path/m0506.p6"; push @status, '506'; }
                when '506+' { $t.tput: "506+. $method05 ($pseudopath/output/m0506+.txt) -- $time"; shell "perl6 -I $!path $!path/m0506+.p6"; push @status, '506+'; }
                when '507' { $t.tput: "507. $method05 ($pseudopath/output/m0507.txt) -- $time"; shell "perl6 -I $!path $!path/m0507.p6"; push @status, '507'; }

                when '601' { $t.tput: "601. $method06 ($pseudopath/output/m0601.txt) -- $time"; shell "perl6 -I $!path $!path/m0601.p6"; push @status, '601'; }
                when '602' { $t.tput: "602. $method06 ($pseudopath/output/m0602.txt) -- $time"; shell "perl6 -I $!path $!path/m0602.p6"; push @status, '602'; }
                when '601' { $t.tput: "603. $method06 ($pseudopath/output/m0603.txt) -- $time"; shell "perl6 -I $!path $!path/m0603.p6"; push @status, '603'; }
                when '601' { $t.tput: "604. $method06 ($pseudopath/output/m0604.txt) -- $time"; shell "perl6 -I $!path $!path/m0604.p6"; push @status, '604'; }
                when '601' { $t.tput: "605. $method06 ($pseudopath/output/m0605.txt) -- $time"; shell "perl6 -I $!path $!path/m0605.p6"; push @status, '605'; }
                when '601' { $t.tput: "606. $method06 ($pseudopath/output/m0606.txt) -- $time"; shell "perl6 -I $!path $!path/m0606.p6"; push @status, '606'; }
                when '601' { $t.tput: "607. $method06 ($pseudopath/output/m0607.txt) -- $time"; shell "perl6 -I $!path $!path/m0607.p6"; push @status, '607'; }
                when '601' { $t.tput: "608. $method06 ($pseudopath/output/m0608.txt) -- $time"; shell "perl6 -I $!path $!path/m0608.p6"; push @status, '608'; }

                when '701' { $t.tput: "701. $method07 ($pseudopath/output/m0701.txt) -- $time"; shell "perl6 -I $!path $!path/m0701.p6"; push @status, '701'; }
                when '702' { $t.tput: "702. $method07 ($pseudopath/output/m0702.txt) -- $time"; shell "perl6 -I $!path $!path/m0702.p6"; push @status, '702'; }
                when '703' { $t.tput: "703. $method07 ($pseudopath/output/m0703.txt) -- $time"; shell "perl6 -I $!path $!path/m0703.p6"; push @status, '703'; }
                when '704' { $t.tput: "704. $method07 ($pseudopath/output/m0704.txt) -- $time"; shell "perl6 -I $!path $!path/m0704.p6"; push @status, '704'; }
                when '705' { $t.tput: "705. $method07 ($pseudopath/output/m0705.txt) -- $time"; shell "perl6 -I $!path $!path/m0705.p6"; push @status, '705'; }
                when '706' { $t.tput: "706. $method07 ($pseudopath/output/m0706.txt) -- $time"; shell "perl6 -I $!path $!path/m0706.p6"; push @status, '706'; }
                when '706+' { $t.tput: "706+. $method07 ($pseudopath/output/m0706+.txt) -- $time"; shell "perl6 -I $!path $!path/m0706+.p6"; push @status, '706+'; }
                when '707' { $t.tput: "707. $method07 ($pseudopath/output/m0707.txt) -- $time"; shell "perl6 -I $!path $!path/m0707.p6"; push @status, '707'; }

                when '801' { $t.tput: "801. $method08 ($pseudopath/output/m0801.txt) -- $time"; shell "perl6 -I $!path $!path/m0801.p6"; push @status, '801'; }
                when '802' { $t.tput: "802. $method08 ($pseudopath/output/m0802.txt) -- $time"; shell "perl6 -I $!path $!path/m0802.p6"; push @status, '802'; }
                when '803' { $t.tput: "803. $method08 ($pseudopath/output/m0803.txt) -- $time"; shell "perl6 -I $!path $!path/m0803.p6"; push @status, '803'; }
                when '804' { $t.tput: "804. $method08 ($pseudopath/output/m0804.txt) -- $time"; shell "perl6 -I $!path $!path/m0804.p6"; push @status, '804'; }
                when '805' { $t.tput: "805. $method08 ($pseudopath/output/m0805.txt) -- $time"; shell "perl6 -I $!path $!path/m0805.p6"; push @status, '805'; }
                when '806' { $t.tput: "806. $method08 ($pseudopath/output/m0806.txt) -- $time"; shell "perl6 -I $!path $!path/m0806.p6"; push @status, '806'; }
                when '807' { $t.tput: "807. $method08 ($pseudopath/output/m0807.txt) -- $time"; shell "perl6 -I $!path $!path/m0807.p6"; push @status, '807'; }
                when '808' { $t.tput: "808. $method08 ($pseudopath/output/m0808.txt) -- $time"; shell "perl6 -I $!path $!path/m0808.p6"; push @status, '808'; }

                when '901' { $t.tput: "901. $method09 ($pseudopath/output/m0901.txt) -- $time"; shell "perl6 -I $!path $!path/m0901.p6"; push @status, '901'; }
                when '902' { $t.tput: "902. $method09 ($pseudopath/output/m0902.txt) -- $time"; shell "perl6 -I $!path $!path/m0902.p6"; push @status, '902'; }
                when '903' { $t.tput: "903. $method09 ($pseudopath/output/m0903.txt) -- $time"; shell "perl6 -I $!path $!path/m0903.p6"; push @status, '903'; }
                when '904' { $t.tput: "904. $method09 ($pseudopath/output/m0904.txt) -- $time"; shell "perl6 -I $!path $!path/m0904.p6"; push @status, '904'; }
                when '905' { $t.tput: "905. $method09 ($pseudopath/output/m0905.txt) -- $time"; shell "perl6 -I $!path $!path/m0905.p6"; push @status, '905'; }
                when '906' { $t.tput: "906. $method09 ($pseudopath/output/m0906.txt) -- $time"; shell "perl6 -I $!path $!path/m0906.p6"; push @status, '906'; }
                when '907' { $t.tput: "907. $method09 ($pseudopath/output/m0907.txt) -- $time"; shell "perl6 -I $!path $!path/m0907.p6"; push @status, '907'; }

                default  { $t.tput: "Saisie invalide!"; push @status, '-1'; }
            }
        }
        return @status;
    }
}
