package torque.environment

deny[reason] {
  not contains(data.allowed_regions4, region)
  reason:= "Some random reason"
}
