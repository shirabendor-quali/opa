package torque.environment

import future.keywords.if

result = { "decision": "Denied", "reason": "sandbox duration exceed max duration" } if {
    data.extend_max_duration <= input.extend_duration_minutes
} 

result = { "decision": "Manual", "reason": "sandbox duration require approval" } if {
	data.extend_max_duration > input.extend_duration_minutes
    data.extend_duration_for_manual <= input.extend_duration_minutes
} 

result = { "decision": "Approved" } if {
	data.extend_max_duration > input.extend_duration_minutes
    data.extend_duration_for_manual > input.extend_duration_minutes
}
