package torque.environment

import future.keywords.if

default status := "approval_required"
default reason := ""



result = { "decision": "Denied", "reason": "sandbox duration exceed max duration" } if {
    data.max_duration < input.duration_minutes
} 

result = { "decision": "Manual", "reason": "sandbox duration require approval" } if {
	data.max_duration > input.duration_minutes
    data.duration_for_manual < input.duration_minutes
} 

result = { "decision": "Approved" } if {
	data.max_duration > input.duration_minutes
    data.duration_for_manual > input.duration_minutes
}
