test_propensity_calculation <- function(
  comp_reac,
  params,
  state,
  sim_time
) {
  test_propensity_cpp(
    comp_reac$function_pointers,
    params,
    comp_reac$buffer_size,
    length(comp_reac$reaction_ids),
    state,
    sim_time
  )
}
