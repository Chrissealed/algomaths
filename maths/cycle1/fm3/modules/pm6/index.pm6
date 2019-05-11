unit module Index;

use v6;

=begin pod
=NAME class B<Index::FM3-Index> : Perl 6 module in B<algomaths>/maths/cycle1/fm3/modules/pm6/B<index.pm6>
=AUTHOR  https://github.com/Chrissealed/algomaths.git
=VERSION 2019.02.11
=end pod

use teeput; 
use fm3xchoice-I;

class T does Teeput::Tput {}
my $t = T.new(
   writefile => True,
);

class FM3-Index is export { 

   method display-chapter-content(Str:D $chapter --> Bool:D) {
      state Int $firstcall = 0;
      my Str $chapter-content = '';
      my Bool $status = True;
      given $chapter {
         when 'I' {
            $chapter-content = qq:to/EOF/;
            fm3 − Aperçu de l'ensemble du chapitre I
            ----------------------------------------
            CHAPITRE I -- ARITHMÉTIQUE

            1. Comment utiliser la notion de multiple d'un entier naturel ?
               101 102 103 104 105 106 106+ 107 107+ 108 109

            2. Comment utiliser la division euclidienne ?
               201 202 203 204 205 206 207 208

            3. Comment établir la liste des diviseurs d'un entier non nul ?
               301 301+ 302 302+ 303 303+ 304 304+ 304++ 305

            4. Comment déterminer le PGCD de deux nombre entiers connaissant
               l'ensemble des diviseurs de chacun des deux nombres ?
               401 402 403 404 405 406 406+ 406++

            5. Comment déterminer le PGCD de deux nombres entiers par l'algorithme des soustractions ?
               501 502 503 504 505 506 506+ 507

            6. Comment déterminer le PGCD de deux nombres entiers
               par l'algorithme des soustractions à l'aide d'un tableur ?
               601 602 603 604 605 606 607 608

            7. Comment déterminer le PGCD de deux nombres entiers par l'algorithme d'Euclide ?
               701 702 703 704 705 706 706+ 707

            8. Comment déterminer le PGCD de deux nombres entiers
               par l'algorithme d'Euclide à l'aide d'un tableur ?
               801 802 803 804 805 806 807 808

            9. Comment déterminer tous les diviseurs communs à deux nombres avec leur PGCD ?
               901 902 903 904 905 906 907

            10. Comment savoir si deux nombres entiers sont premiers entre eux ?
                1001 1002 1003 1004 1004+ 1005 1006 1006+ 1007 1008 1009 1010 1011 1012 1013 1014 1015 1016 

            11. Comment déterminer la fraction irréductible égale à une fraction donnée ?
                1101a 1101b 1101c 1101d 1101e 1101f 1101g 1101h 1101i 1101j 1102 1103 1104a 1104b 1104c 1104d 115 1106 1107

            12. Comment résoudre un problème se ramenant au calcul du PGCD de deux nombres entiers ?
                1201 1202 1203 1204
         EOF
         }
         when 'II' {
            $chapter-content = qq:to/EOF/;
            fm3 − CHAPITRE II
            -----------------
            NOMBRES RELATIFS EN ÉCRITURE FRACTIONNAIRE : OPÉRATIONS

            1. Comment additionner ou soustraire des nombres relatifs en écriture fractionnaire ?
               101a 101b 101c 101d 102a 102b 102c 102d 103a 103b 103c 103d 104a 104b 104c 104d 104d+ 105a 105a+ 105b 105c 105d 106a 106b 106c 106d

            2. Comment additionner ou soustraire des nombres relatifs l'un en écriture décimale,
               02a 02b 02c 02d 02e 02f 02g 02h 02i 02j 02k 02l 02m 02n 02o 02p 02q 02r 02s 

            3. Comment résoudre un problème conduisant au calcul d'une fraction restante ?
               301 302 303 304 305 306

            4. Comment multiplier des nombres relatifs non nuls en écriture fractionnaire ?
               04a 04b 04c 04d 04e 04f 04g 04h 04i 04j 04k 04l 04m 04n 04o 04p 04q 04r 04s 04t

            5. Comment résoudre un problème conduisant au calcul d'une fraction de fraction ?
               501 502 503 504 505 506

            6. Comment diviser deux nombres relatifs non nuls en écriture fractionnaire ?
               06a 06b 06c 06d 06e 06f 06g 06h 06i 06j 06k 06l 06m 06n 06o 06p 06q 06r 06s 06t

            7. Comment multiplier ou diviser deux nombres relatifs non nuls
               l'un en écriture fractionnaire, l'autre en écriture décimale ?
               07a 07b 07c 07d 07e 07f 07g 07h 07i 07j 07k 07l 07m 07n 07o 07p 07q 07r 07s 07t

            8. Comment prendre une fraction d'un nombre, partager équitablement une fraction
               ou trouver un nombre dont on connaît une fraction ?

            9. Comment calculer une expression algébrique contenant des nombres
               relatifs en écriture fractionnaire ?

            10. Comment résoudre un problème mettant en œuvre des nombres relatifs
               en écriture fractionnaire ?
            EOF
         }
         default { put 'No de chapitre invalide!'; return $status = False; }
      }
      if ($firstcall == 0) {
         $t.tput: $chapter-content;
         $firstcall++;
      } else {
         put $chapter-content;
      }
      return $status;
   } 

   method chapter-content-output-filepath(Str $chapter --> Bool:D) {
      my Bool $status = True;
      my $path = "%*ENV<ALGOMATHS>/maths/cycle1/fm3";
      given $chapter {
         when 'I' { $t.filepath = "$path/I/chapter-I.txt"; }
         when 'II' { $t.filepath = "$path/II/chapter-II.txt"; }
         #when 'III' { $t.filepath = "$path/III/chapter-III.txt"; }
         default { put 'Choix de chapitre invalide!'; return $status = False; }
      }
      $t.filemode = ':x'; # :mode<wo>, :create, :exclusive
      $t.writetty = True;
      $status = self.display-chapter-content($chapter);
      return $status;
   }

   method pick-exe(Str:D $chapter --> Array:D) {
      state Int $firstcall = 0;
      state Str $last-chapter = '';
      state Str @status = ();
      # Paramètres facultatifs ignorés par défaut (leur valeur est False)
      my Bool $put-empty-line = True;
      my Bool $last-x = True;
      if ($firstcall == 0) || ($last-chapter ne $chapter) {
         self.chapter-content-output-filepath($chapter);
         $firstcall++;
         $last-chapter = $chapter;
      } else {
         self.display-chapter-content($chapter);
      }
      # Attributs requis de  la classe Fm3XChoice-I
      my $fm3x = Fm3XChoice-I.new(
         chapter => $chapter,
         path => "%*ENV<ALGOMATHS>/maths/cycle1/fm3/$chapter/Perl6",
      );
      given $chapter {
         when 'I' { @status = $fm3x.x-choice(); if (@status[@status.end] eq '-1') { return @status; } } 
         when 'II' { @status = $fm3x.x-choice(); if (@status[@status.end] eq '-1') { return @status; } } 
         #when 'III' { my $fm3x = Fm3XChoice-III.new(); @!status = $fm3x.x-choice(); }
         default { put 'Chapitre non valide!'; push @status, '-1'; return @status; }
      }
      my Str $confirm = prompt "Essayer un autre exercice du chapitre $chapter ? O/n > ";
      if $confirm ~~ / <[nN]> / { @status = $fm3x.x-choice($put-empty-line, $last-x); return @status; }
      self.pick-exe($chapter);
      return @status;
   }

   method stop(--> Bool:D) {
      my Bool $confirm = False;
      my $answer = prompt "Voulez-vous vraiment quitter ? O/n > ";
      if $answer ~~ / <[oO]> / { $confirm = True; }
      return $confirm;
   }

   method chapter-choice(--> Str:D) {
      my Str $chapter-ID = '';
      loop {
         $chapter-ID = prompt "Choisissez un chapitre du cours 'fm3' : 'I' ou 'II' (ou '1', '2') (tapez 'q' pour fermer le programme) > ";
         given $chapter-ID {
            when / <[qQ]> / {
               $chapter-ID = '-1';
               my Bool $confirm = self.stop();
               if $confirm { return $chapter-ID; }
            }
            when / <[I1]> / { $chapter-ID = 'I'; succeed; }
            when / II | '2' / { $chapter-ID = 'II'; succeed; }
            default { put "Saisie invalide!"; redo; }
         }
         return $chapter-ID;
      }
   }

   method select(--> Array:D) {
      state Str @status = ();
      my Bool $confirm-exit = False;
      my Str $chapter-choice = self.chapter-choice();
      if ($chapter-choice eq '-1') { $confirm-exit = True; }
      if $confirm-exit {
         push @status, '-1';
         put 'Fin des exercices.';
         return @status;
      } else {
         @status = self.pick-exe($chapter-choice);
         if (@status[@status.end] eq '-1') {
            put 'Fin des exercices.';
            return @status;
         }
      }
   }
}
