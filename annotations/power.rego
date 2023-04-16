package torque.annotations

default set_annotations = [{"key": "power", "value": "off"}]

set_annotations = [{"key": "power", "value": "on"}] {
  resources_with_power_state_running = {r | r = input.introspection_resources[_]; r.attributes.power_state == "running"}
  count(resources_with_power_state_running) > 0
}
