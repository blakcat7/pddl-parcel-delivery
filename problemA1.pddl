(define (problem problemA1)
  (:domain domainA)
  
    (:objects
        robot1
        
        parcel1
        
        umbrella
        
        earl-mountbatten
        david-brewster
        lyell
        outside
    )

    (:init
        (object parcel1) (object umbrella)
        
        (robot robot1)
        
        (building earl-mountbatten)
        (building david-brewster)
        (building lyell)
        (building outside)
        
        (at robot1 earl-mountbatten)
        (is-at umbrella earl-mountbatten)
        (is-at parcel1 david-brewster)

        (can-move earl-mountbatten david-brewster)
        (can-move david-brewster outside)
        (can-move outside lyell)
        
        (is-raining outside)
    )
    
    (:goal
        (and
            (is-at parcel1 lyell)
            (is-holding robot1 umbrella)
        )
    )    
)        
   