(define (problem CrewPlanning_1crew_1day)
(:domain CrewPlanning)
(:objects
	d1 d2 - Day

	c1 - CrewMember
	mcs1 - MedicalState

	spaceshipFilter - FilterState

	pa1 pa2 pa3 pa4 pa5 - PayloadAct
)
(:init
	(= (total-cost) 0)
	(currentday d1)
	(next d1 d2)

	(active c1 d1)
	(= (available_time c1 d1) 1440)

	(= (crew_efficiency c1 d1) 8)

	(= (achieve_time_discount d1) 0)

	(= (payloadact_length pa1) 150)
	(= (payloadact_length pa2) 140)
	(= (payloadact_length pa3) 150)
	(= (payloadact_length pa4) 90)
	(= (payloadact_length pa5) 160)

)

(:goal
(and
	(preference dr (currentday d2))
	(preference mcs1_1 (mcs_finished mcs1 d1))



	(preference pref_pa1 (payload_act_completed pa1))
	(preference pref_pa2 (payload_act_completed pa2))
	(preference pref_pa3 (payload_act_completed pa3))
	(preference pref_pa4 (payload_act_completed pa4))
	(preference pref_pa5 (payload_act_completed pa5))
)
)
(:metric maximize
	( - 3615
	(+ (total-cost)
	(* (is-violated dr) 2745)
	    (* (is-violated mcs1_1) 180)
	    (* (is-violated pref_pa1) 150)
	    (* (is-violated pref_pa2) 140)
	    (* (is-violated pref_pa3) 150)
	    (* (is-violated pref_pa4) 90)
	    (* (is-violated pref_pa5) 160)
)))
)
