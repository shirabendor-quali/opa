package torque.annotations

set_annotatoins = [{"key": "power", "value": "on"}] {
  resources_with_power_state_stopped = {r | r = input.Resources[_]; r.Attributes.power_state == "running"}
  count(resources_with_power_state_stopped) > 0
}
