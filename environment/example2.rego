package torque.environment

deny[reason] {
  reason:= "Some random reason"
  not contains(data.allowed_regions4, reason)
}
