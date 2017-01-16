(define (problem problemA2)
  (:domain domainA)
  
    (:objects
        robot1
        
        parcel1
        parcel2
        parcel3
        
        umbrella
        
        earl-mountbatten
        david-brewster
        lyell
        outside
    )

    (:init
        (object parcel1) (object parcel2) (object umbrella)
        
        (umbrella umbrella)
    
        (robot robot1)
        
        (building earl-mountbatten) (building david-brewster)
        (building lyell) (building outside)
        
        (at robot1 lyell)
        (is-at parcel1 lyell) (is-at parcel2 david-brewster) (is-at umbrella earl-mountbatten)
        
        (door-is-close david-brewster earl-mountbatten)
        
        (is-raining outside)
        
        (can-move lyell outside)
        (can-move outside david-brewster)
        (can-move outside lyell)
        (can-move david-brewster outside)
        (can-move earl-mountbatten outside)

    )
    
    (:goal
        (and
            (is-wet robot1)
            (is-at parcel1 earl-mountbatten)
            (is-holding robot1 umbrella)
            (at robot1 lyell)
        )
    )    
)        
   