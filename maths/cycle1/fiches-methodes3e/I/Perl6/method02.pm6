unit module Method02;

sub put-up-method is export(:methodwording) {
    say q:to/EOM/;
###################################################################################
# Méthode 2. Comment utiliser la division euclidienne ?
###################################################################################
# Pour utiliser la division euclidienne :
# ▲ on s'appuie sur sa définition : a et b étant deux entiers naturels et b non nul,
# effectuer la division euclidienne de a par b, c'est trouver deux entiers naturels
# q et r tels que a = bq + r et r < b.
# a est le dividende, b le diviseur, q le quotient et r le reste.
###################################################################################

EOM
}

sub exercise_01 is export(:exe01) {
    say '# Exercice 1.';
    say '# ----------';
    say '# On effectue la division euclidienne d\'un entier a par 7, on trouve 23 comme';
    say '# quotient.';
    say '# a. Quels sont les restes possibles ?';
    say '# b. Trouver toutes les valeurs de a.';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_02 is export(:exe02) {
    say '# Exercice 2.';
    say '# ----------';
    say '# Dans un collège en rénovation, on a décidé de changer les tables de la cantine.';
    say '# Il y a deux cent soixante demi-pensionnaires et un seul service.';
    say '# Combien doit-on acheter de nouvelles tables de 8 ?';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_03 is export(:exe03) {
    say '# Exercice 3.';
    say '# ----------';
    say '# Dans une division euclidienne, le quotient est 19, le reste est 4 et le';
    say '# diviseur 6. Quel est le dividende ?';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_04 is export(:exe04) {
    say '# Exercice 4.';
    say '# ----------';
    say '# Quelles sont, parmi les égalités suivantes, celles qui traduisent une division';
    say '# euclidienne ? Si l\'égalité convient, donner le dividende, le diviseur, le quotient';
    say '# et le reste. Sinon expliquer pourquoi l\'égalité ne convient pas.';
    say '# a. 291 = 18 x 15 + 21; b. 102 = 6 x 16 + 6; c. 142 = 8 x 17 + 6';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_05 is export(:exe05) {
    say '# Exercice 5.';
    say '# ----------';
    say '# On distribue 52 cartes à jouer à trois personnes qui reçoivent chacune le même';
    say '# nombre de cartes. Combien de cartes recevra au maximum chaque personne ?';
    say '# Combien de cartes restera-t-il ?';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_06 is export(:exe06) {
    say '# Exercice 6.';
    say '# ----------';
    say '# Lors d\'un voyage scolaire à Millau, on doit répartir 22 garçons dans des chambres';
    say '# à 4 lits. Combien faudra-t-il au minimum de chambres pour que chacun dispose d\'un';
    say '# lit ?';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_07 is export(:exe07) {
    say '# Exercice 7.';
    say '# ----------';
    say '# Une fermière a récolté 59 œufs. Pour les transporter au marché et les vendre,';
    say '# elle les range dans des boîtes de 12. Combien lui faudra-t-il de boîtes ?';
    say '-----------------------------------------------------------------------------------';
}

sub exercise_08 is export(:exe08) {
    say '# Exercice 8.';
    say '# ----------';
    say '# Un confiseur a pu réaliser 346 chocolats. Il veut les présenter pour la vente';
    say '# dans des coffrets de 16. Combien pourra-t-il remplir de coffrets ?';
    say '-----------------------------------------------------------------------------------';
}
