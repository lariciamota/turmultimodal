(define (turmultimodal-adl-1)
  	(:domain turmultimodal-adl)
    (:objects
    	Jose Maria Joao - pessoa
    	PR CA PD A SJ SR - estacoes 
    	PRp BBp PAp SJp NSRp - pontos

    )
    (:init
    	(adj PR CA) (adj CA PR)
    	(adj PR PD) (adj PD PR)
    	(adj PD SJ) (adj SJ PD)
    	(adj PD SR) (adj SR PD)
    	(adj SJ SR) (adj SR SJ)
    	(adj SR A) (adj A SR)
    	(adj A CA) (adj CA A)
    	(adj-2 PR PRp) 
    	(adj-2 CA BBp) 
    	(adj-2 A PAp)
    	(adj-2 SJ SJp) 
    	(adj-2 PD NSRp)
    	(at Jose CA)
    	(at Maria A)
    	(at Joao PD)
    	(= (howMany A) 0)
    	(= (howMany PR) 1)
    	(= (howMany CA) 1)
    	(= (howMany PD) 1)
    	(= (howMany SJ) 2)
    	(= (howMany SR) 3)
    )
    (:goal (and 
    (visit Jose PRp) (visit Jose BBp) (visit Jose PAp) (visit Jose SJp) (visit Jose SRp) 
    (visit Maria PRp) (visit Maria BBp) (visit Maria PAp) (visit Maria SJp) (visit Maria SRp) 
    (visit Joao PRp) (visit Joao BBp) (visit Joao PAp) (visit Joao SJp) (visit Joao SRp) 
    (not (with Jose)) (not (with Maria)) (not (with Joao))
    
    )
    )
)