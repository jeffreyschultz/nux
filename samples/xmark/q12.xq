(: Q12. More more group by. For each richer-than-average person, list the number of items :) 
(:       currently on sale whose price does not exceed 0.02% of the :) 
(:       person's income. :)

for $p in /site/people/person
let $l := for $i in /site/open_auctions/open_auction/initial
          where $p/profile/@income > (5000 * $i/text())
          return $i
where  $p/profile/@income > 50000
return <items person="{$p/name/text()}"> {count ($l)} </items>

