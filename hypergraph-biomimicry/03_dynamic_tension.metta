(= (update-tension $atom1 $atom2 $new-weight)
   (let $link (match &self (TensionLink $atom1 $atom2 $old-weight) $link)
        (if $link
            (do
                (remove-atom $link)
                (add-atom (TensionLink $atom1 $atom2 $new-weight)))
            (add-atom (TensionLink $atom1 $atom2 $new-weight)))))

(update-tension Stone1 Stone2 0.95)
