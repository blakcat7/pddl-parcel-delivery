(define (domain domainA)
	(:requirements
		:strips
	)
	
	(:predicates
	    (is-wet ?robot)
	    (door-is-close ?building ?building)
	    (is-raining ?outside)
	    (is-holding ?robot ?object)
	    (is-at ?object ?building)
	    (at ?robot ?building)
	    (can-move ?from-building ?to-building)
	    (robot ?robot)
	    (building ?building)
	    (object ?object)
	    (umbrella ?umbrella)
	    (outside ?outside)
	)

	(:action pick-up
		:parameters
			(?robot ?object ?building)

		:precondition
			(and
			    (robot ?robot)
			    (object ?object)
			    (building ?building)
			    (at ?robot ?building)
			    (is-at ?object ?building)
			)
			
		:effect
			(and
				(is-holding ?robot ?object)
				(not (at ?object ?building))
			)
	)


	(:action put-down
		:parameters
			(?robot ?object ?building)

		:precondition
			(and
			    (robot ?robot)
			    (object ?object)
				(building ?building)
				(is-holding ?robot ?object)
				(at ?robot ?building)
			)

		:effect
			(and
				(not (is-holding ?robot ?object))
				(is-at ?object ?building)
			)
	)

	(:action move
		:parameters
			(?robot ?from-building ?to-building)

		:precondition
			(and
				(robot ?robot)
				(building ?from-building)
				(building ?to-building)
				(can-move ?from-building ?to-building)
				(at ?robot ?from-building)
			)

		:effect
			(and
				(not (at ?robot ?from-building))
				(at ?robot ?to-building)
			)
	)


	(:action get-wet
	    :parameters
	        (?robot ?umbrella ?building)
	    :precondition
	        (and
	            (robot ?robot)
	            (umbrella ?umbrella)
	            (building ?building)
	            (at ?robot ?building)
	            (not (is-holding ?robot ?umbrella))
	            (is-raining ?building)
	        )
	        
	    :effect
	        (and	            
	        	(is-wet ?robot)
	        )
	)
	
	(:action open-the-door
	    :parameters
	        (?robot ?object ?from-building ?to-building)
	        
	    :precondition
	        (and
	            (robot ?robot)
	            (object ?object)
	            (building ?from-building)
	            (building ?to-building)
	            (door-is-close ?from-building ?to-building)
	            (is-holding ?robot ?object)
	        )
	        
	    :effect
	        (and
	            (not (door-is-close ?from-building ?to-building))
	            (not (is-holding ?robot ?object))
	            (can-move ?from-building ?to-building)
	        )
	)
)