(define (problem problemA3)
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
        (object parcel1) (object parcel2) (object parcel3)
        (object umbrella) (umbrella umbrella)
        
        (robot robot1)
        
        (building earl-mountbatten)
        (building david-brewster)
        (building lyell)
        (building outside)
        
        (at robot1 david-brewster)
        (is-at parcel1 lyell) (is-at parcel2 david-brewster)
        (is-at parcel3 earl-mountbatten) (is-at umbrella earl-mountbatten)
        
        (door-is-close david-brewster earl-mountbatten)
        
        (can-move earl-mountbatten outside)
        (can-move lyell outside)
        (can-move outside lyell)
        (can-move outside david-brewster)

    )
    
    (:goal
        (and
            (is-at parcel1 earl-mountbatten)
            (is-at parcel3 lyell)
            (at robot1 david-brewster)
        )
    )    
)        
   