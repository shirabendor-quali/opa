package torque.environment

deny[reason] {
  not contains(data.test_data, "xxx")
  reason:= "Some random reason"  
}
