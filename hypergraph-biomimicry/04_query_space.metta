(= (find-strong-connections $atom)
   (match &self (TensionLink $atom $other $weight)
                (if (> $weight 0.75)
                    ($other $weight)
                    [])))

(find-strong-connections Stone1)
