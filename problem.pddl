(define (problem turmultimodal-adl-1)
  	(:domain turmultimodal-adl)
    
    (:objects
    	Jose Maria Joao - pessoa
    	PR CA PD A SJ SR - estacoes 
    	PRp BBp PAp SJp NSRp - pontos
        bike-1 bike-2 bike-3 bike-4 bike-5 bike-6 bike-7 bike-8 - bicicleta
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
        (free bike-1 PR)
        (free bike-2 CA)
        (free bike-3 PD)
        (free bike-4 SJ)
        (free bike-5 SJ)
        (free bike-6 SR)
        (free bike-7 SR)
        (free bike-8 SR)
    	
    )

    (:goal (and 
    (visit Jose PRp) (visit Jose BBp) (visit Jose PAp) (visit Jose SJp) (visit Jose NSRp) 
    (visit Maria PRp) (visit Maria BBp) (visit Maria PAp) (visit Maria SJp) (visit Maria NSRp) 
    (visit Joao PRp) (visit Joao BBp) (visit Joao PAp) (visit Joao SJp) (visit Joao NSRp) 
    (not (with Jose)) (not (with Maria)) (not (with Joao))
    )
)
)