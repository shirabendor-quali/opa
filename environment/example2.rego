package torque.environment

deny[reason] {
  not contains(data.allowed_regions4, "gamal")
  reason:= "Some random reason"
}
