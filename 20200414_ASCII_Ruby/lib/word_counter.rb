def word_counter(corpus, dictionnaire)
#   corpus = "" string dans lequel tu devras checker le nombre d'occurrences de différents strings
# le dictionnaire, une array de mots (strings) qui seront recherchés dans le corpus
  if (!empty($array) && is_array($array)
   {
      foreach($array as $value)
      {
         if(!in_array($value))
            $tmp_array[$value] = 1;
          else
             $tmp_array[$value]++;
      }

      foreach($tmp_array as $value => $occurence)
         print 'nombre de '.$value.' : '.$occurence.'<br/>';
   }
   else print 'Erreur';
end
