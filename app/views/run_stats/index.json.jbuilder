json.array!(@run_stats) do |run_stat|
  json.extract! run_stat, :id, :run_id, :live_answer, :machine_answer, :do_not_call, :no_answer, :carrier_error, :busy_signal, :total_cost, :total_called, :total_left_to_call, :successful_contacts, :unsuccessful_contacts
  json.url run_stat_url(run_stat, format: :json)
end
