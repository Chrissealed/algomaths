use v6;

unit module Index;

=begin pod
=NAME class B<BBW-Index> : Perl 6 module in B<algomaths>/maths/cycle1/bbw/modules/pm6/B<index.pm6>
=AUTHOR  https://github.com/Chrissealed/algomaths.git
=VERSION 2019.02.15
=end pod

use teeput; 
use bbwxchoice-I;

class T does Teeput::Tput {}
my $t = T.new(
   writefile => True,
);

class BBW-Index is export {

   method display-chapter-content(Str:D $chapter --> Bool:D) {
      state Int $firstcall = 0;
      my Str $chapter-content = '';
      my Bool $status = True;
      given $chapter {
         when 'I' {
            $chapter-content = qq:to/EOF/;
            bbw − Aperçu de l'ensemble du chapitre I
            ----------------------------------------
            I - CALCULER AVEC DES NOMBRES ENTIERS

            0. Les 4 opérations.
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
      my $path = "%*ENV<ALGOMATHS>/maths/cycle1/bbw";
      given $chapter {
         when 'I' { $t.filepath = "$path/I/chapter-I.txt"; }
         #when 'II' { $t.filepath = "$path/II/chapter-II.txt"; }
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
      # Attributs requis de  la classe BbwXChoice-I
      my $bbwx = BbwXChoice-I.new(
         chapter => $chapter,
         path => "%*ENV<ALGOMATHS>/maths/cycle1/bbw/$chapter/Perl6",
      );
      given $chapter {
         when 'I' { @status = $bbwx.x-choice(); if (@status[@status.end] eq '-1') { return @status; } } 
         #when 'II' { my $bbwx = BbwXChoice-II.new(); @!status = $bbwx.x-choice(); }
         #when 'III' { my $bbwx = BbwXChoice-III.new(); @!status = $bbwx.x-choice(); }
         default { put 'Chapitre non valide!'; push @status, '-1'; return @status; }
      }
      my Str $confirm = prompt "Essayer un autre exercice du chapitre $chapter ? O/n > ";
      if $confirm ~~ / <[nN]> / { @status = $bbwx.x-choice($put-empty-line, $last-x); return @status; }
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
         $chapter-ID = prompt "Choisissez un chapitre du cours 'bbw' : 'I' (ou '1') (tapez 'q' si vous voulez fermer le programme) > ";
         given $chapter-ID {
            when / <[qQ]> / {
               $chapter-ID = '-1';
               my Bool $confirm = self.stop();
               if $confirm { return $chapter-ID; }
            }
            when / <[I1]> / { $chapter-ID = 'I'; succeed; }
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
