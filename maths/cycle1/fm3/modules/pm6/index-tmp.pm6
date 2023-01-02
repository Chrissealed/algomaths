#!/usr/bin/env perl6

use v6;

=begin pod
=NAME B<index.p6> : executable in B<algomaths>/maths/B<index.p6>
=AUTHOR  https://github.com/Chrissealed/algomaths.git
=VERSION 2019.01.17
=end pod

use teeput; 
use bbwxchoice-I;
use fm3xchoice-I;

class T does Teeput::Tput {}
my $t = T.new(
   writefile => True,
);

sub course-choice(--> Str:D) {
   my $course-choice-one-junction = 'bbw' ^ '1' ^ 'fm3' ^ '2' ^ 'ms3' ^ '3';
   my Str $course-choice = '';
   loop {
      $course-choice = prompt "Choisissez un cours : bbw ou 1, fm3 ou 2, ms3 ou 3 > ";
      if ($course-choice ne $course-choice-one-junction) {
         put "Saisie invalide!";
         redo;
      }
      else { return $course-choice; }
   }
}

my Str $course-choice = course-choice();

sub chapter-choice(Str $course --> Str:D) {
   my Str $chapter-choice = 'I';
   loop {
      given $course {
         when /bbw | 1/ {
            $chapter-choice = prompt "Choisissez un chapitre du cours $course : I (ou 1) > ";
            if ($chapter-choice ~~ / I | 1 /) { return $chapter-choice; }
            else { redo; }
         }
         when /fm3 | 2/ {
            $chapter-choice = prompt "Choisissez un chapitre du cours $course : I, II (ou 1, 2) > ";
            if ($chapter-choice ~~ / I | 1 | II | 2 /) { return $chapter-choice; }
            else { redo; }
         }
         when /ms3 | 3/ {
            $chapter-choice = prompt "Choisissez un chapitre du cours $course : I, II (ou 1, 2) > ";
            if ($chapter-choice ~~ / I | 1 | II | 2 /) { return $chapter-choice; }
            else { redo; }
         }
      }
   }
}

my Str $chapter-choice = chapter-choice($course-choice);

sub chapters-contents(Str:D $course, Str:D $chapter) {
   if ($course eq 'bbw' || $course eq '1') {
      if ($chapter-choice ~~ / <[I1]> /) {
         my Str $chapter-content = qq:to/EOF/;
         bbw − Aperçu de l'ensemble du chapitre I
         ----------------------------------------
         I - CALCULER AVEC DES NOMBRES ENTIERS

         1. Addition.
         2. Soustraction.
         3. Multiplication.
         4. Division avec reste.

         5. Décomposer un entier en facteurs premiers :
         501a 501b 501c 501d 501e.
         502a 502b 502c 502d 502e.
         503a 503b 503c 503d 503e.
         504a 504b 504c 504d 504e.
         505a 505b 505c 505d 505e.

         6. Déterminer tous les facteurs d'un entier :
         601a 601b 601c 601d 601e.
         602a 602b 602c 602d 602e.

         7. PGCD :
         701a 701b 701c 701d 701e.
         702a 702b 702c 702d 702e.
         703a 703b 703c 703d 703e.
         704a 704b 704c 704d 704e.

         8. PPCM :
         801a 801b 801c 801d 801e.
         802a 802b 802c 802d 802e.
         803a 803b 803c 803d 803e.
         804a 804b 804c 804d1 804d2 804d3 804e.
         
         9. PGCD et PPCM :
         901a 901b 901c 901d 901e
         902a 902b 902c 902d 902e.
         EOF

         $t.filepath = './bbw/wording/chapter-I.txt';
         $t.filemode = ':x'; # :mode<wo>, :create, :exclusive
         $t.writetty = True;
         $t.tput: $chapter-content;

         my $choice = BbwXchoice-I.new();
         $choice.x-choice;   
      }
   } 
   return;

   if ($course-choice eq 'fm3' || $course-choice eq '2') {
      if $chapter-choice ~~ / I | 1 / {
         my Str $chapter-content = qq:to/EOF/;
         fm3 − Aperçu de l'ensemble du CHAPITRE I.
         ----------------------------------------
         1. Comment utiliser la notion de multiple d'un entier naturel ?
         101 102 103 104 105 106 106+ 107 107+.";

         2. Comment utiliser la division euclidienne ?
         201 202 203 204 205 206 207 208.

         3. Comment établir la liste des diviseurs d'un entier non nul ?
         301 301+ 302 302+ 303 303+ 304 304+ 304++ 305 305+ 305++ 306 306+.

         4. Comment déterminer le PGCD de deux nombre entiers connaissant l'ensemble des diviseurs de chacun des deux nombres ?
         401 402 403 404 405 406 406+ 406++.

         5. Comment déterminer le PGCD de deux nombres entiers par l'algorithme des soustract
         501 502 503 504 505 506 506+ 507.

         6. Comment déterminer le PGCD de deux nombres entiers par l'algorithme des soustractions ?;
         601 602 603 604 605 606 607.

         7. Comment déterminer le PGCD de deux nombres entiers par l'algorithme d'Euclide ?
         701 702 703 704 705 706 706+ 707.

         8. Comment déterminer le PGCD de deux nombres entiers par l'algorithme d'Euclide à l'aide d'un tableur ?
         801 802 803 804 805 806 807 808.

         9. Comment déterminer tous les diviseurs communs à deux nombres avec leur PGCD ?
         901 902 903 904 905 906 907.

         10. Comment savoir si deux nombres entiers sont premiers entre eux ?
         1001 1001+ 1002 1003 1004 1004+ 1005 1006 1006+ 1007 1008 1009 1010 1011 1012 1013 1014 1015 1016.

         11. Comment déterminer la fraction irréductible égale à une fraction donnée ?
         1101a 1101b 1101c 1101d 1101e 1101f 1101h 1101i 1101j 1102 1103 1104a 1104b 1104c 1104d 1105 1106 1107.

         12. Comment résoudre un problème se ramenant au calcul du PGCD de deux nombres entiers ?
         1201 1202 1203 1204

         EOF

         $t.filepath = './fm3/wording/chapter-I.txt';
         $t.filemode = ':x'; # :mode<wo>, :create, :exclusive
         $t.writetty = True;
         $t.tput: $chapter-content;

         my $choice = Fm3Xchoice-I.new();
         $choice.x-choice;   
      }

   }
   return;
}

my Str $next-choice = '-1';
my $continue = 'n';
loop {
   if ($next-choice == '-1') {
      chapters-contents($course-choice, $chapter-choice);
      $continue = prompt "Suivant ? <O|n> : ";
      exit if $continue ~~ / <[nN]> /;
      chapters-contents($course-choice, $chapter-choice);
   }
   redo;
}

=begin pod
   loop {
      my Str $x-choice = prompt "Choisissez un exercice : (1,2,3 ou 4 puis chiffres et lettres accolés; ex: 504c) > ";
      if ($chapter-choice eq 'II' || $chapter-choice eq '2') {
         $t.tput: qq:to/EOF/;
         fm3
         CHAPITRE II
         -----------
         NOMBRES RELATIFS EN ÉCRITURE FRACTIONNAIRE : OPÉRATIONS

         1. Comment additionner ou soustraire des nombres relatifs en écriture fractionnaire ?

         2. Comment additionner ou soustraire des nombres relatifs l'un en écriture décimale,
            les autres en écriture fractionnaire ?

         3. Comment résoudre un problème conduisant au calcul d'une fraction restante ?

         4. Comment multiplier des nombres relatifs non nuls en écriture fractionnaire ?

         5. Comment résoudre un problème conduisant au calcul d'une fraction de fraction ?

         6. Comment diviser deux nombres relatifs non nuls en écriture fractionnaire ?

         7. Comment multiplier ou diviser deux nombres relatifs non nuls
            l'un en écriture fractionnaire, l'autre en écriture décimale ?

         8. Comment prendre une fraction d'un nombre, partager équitablement une fraction
            ou trouver un nombre dont on connaît une fraction ?

         9. Comment calculer une expression algébrique contenant des nombres
            relatifs en écriture fractionnaire ?

         10. Comment résoudre un problème mettant en œuvre des nombres relatifs
            en écriture fractionnaire ?
      EOF

         $t.filepath = './fm3-chapter-II.txt';
         $t.filemode = :x; # :mode<wo>, :create, :exclusive
         $t.writetty = False;
         $t.tput: $chapter-content;
      
      }

      if ($course-choice eq 'ms3' || $course-choice eq '3') {
         if $chapter-choice eq 'I' || $chapter-choice eq '1' {
            $chapter-content = qq:to/EOF/;
            ms3
            CHAPITRE I - MÉTHODES D'ARITHMÉTIQUE
            ------------------------------------
            CALCUL MENTAL

            1. Comment additionner rapidement ?

            2. Comment soustraire rapidement ?

            3. Comment multiplier rapidement ?

            4. Comment diviser rapidement ?
            EOF

            $t.filepath = './ms3-chapter-I.txt';
            $t.filemode = :x; # :mode<wo>, :create, :exclusive
            $t.writetty = False;
            $t.tput: $chapter-content;
      
            my $method-choice = prompt "Choisissez les exercices correspondant à la méthode : 1, 2, 3 ou 4 > ";
         }

         if ($chapter-choice eq 'II' || $chapter-choice eq '2') {
            $chapter-content = qq:to/EOF/;
            ms3
            CHAPITRE 2 - MÉTHODES SUR LES PGCD
            ----------------------------------
            1. Comment déterminer un PGCD ?

            MÉTHODE 1 : En listant la liste des diviseurs de chacun des deux.

            MÉTHODE 2 : En utilisant l'algorithme d'Euclide.

            2. Comment utiliser un PGCD ?

            MÉTHODE 3 : Pour simplifier des fractions.

            MÉTHODE 4 : Pour résoudre des problèmes.
         EOF

         $t.filepath = './ms3-chapter-II.txt';
         $t.filemode = :x; # :mode<wo>, :create, :exclusive
         $t.writetty = False;
         $t.tput: $chapter-content;
   
         my $method-choice = prompt "Choisissez les exercices correspondant à la méthode : 1, 2, 3 ou 4 > ";
      }
   }
=end pod
