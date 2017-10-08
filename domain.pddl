(define (domain turmultimodal-adl)
	(:requirements :adl :typing) 
  (:types pessoa bicicleta estacoes pontos)
  (:predicates
    (adj ?estacao-1 ?estacao-2 - estacoes)
    (adj-2 ?estacao-1 - estacoes ?ponto-1 - pontos)
    (at ?who - pessoa ?where)
    (howMany ?estacao-1 - estacao)
    (visit ?who - pessoa ?which - pontos)
    (with ?who - pessoa) ;esta com bicicleta
  )
  (:action pegar-bicicleta
  	:parameters (?who - pessoa ?where - estacoes)
    :precondition (and  (not (with ?who))
                        (not (= (howMany ?where) 0))
                        (at ?who ?where)
                  )
    :effect (and  (with ?who)
                  (at ?who ?where)
                  (- (howMany ?where) 1) ;como subtrai??

            )
  )
  (action entregar-bicicleta
  	:parameters(?who - pessoa ?where - estacoes)
    :precondition(and (with ?who)
                      (at ?who ?where)
                  )
    :effect(and (not (with ?who))
                (at ?who ?where)
                (+ (howMany ?where) 1) ;como soma??

            )
  )
  
  (action esperar5min
  	:parameters()
    :precondition()
    :effect()
  )
  
  (action caminhar
  	:parameters(?who - pessoa ?where - estacoes ?which - pontos)
    :precondition((and (not (with ?who)
                  )
                  (or (at ?who ?where)
                      (at ?who ?which)
                  )
                  )
    :effect((or (and (not (at ?who ?where))
                     (adj-2 ?where ?which) 
                     (at ?who ?which)
                )
                (and  (not (at ?who ?which))
                      (adj-2 ?where ?which)
                      (at ?who ?where)
                )
            )
          )
  )
  
  (action visitar-ponto
  	:parameters(?who - pessoa ?where - estacoes ?which - pontos)
    :precondition(and (not (with ?who))
                      (not (visit ?who ?which))
                      (at ?who ?where)
                      (adj-2 ?where ?which)
                  )
    :effect(and (visit ?who ?which)
                (not (at ?who ?where))
                (at ?who ?which)
                ;gastou 5 minutos??
          )
  )
  
  (action pedalar
  	:parameters()
    :precondition()
    :effect()
  )
) 