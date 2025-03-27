include: "/views/refined/*.view.lkml"
include: "/views/pdt/*.view.lkml"

explore: geo_all_channels {}
explore: geo_media {}
explore: geo_media_rf {}
explore: goodness_of_metrics {}
explore: media_summary {}
explore: model_fit_data {}
explore: national_media {}

explore: response_curves_data {
  cancel_grouping_fields: [response_curves_data.next_spend]
  sql_always_where: ${metric} = 'mean' ;;
}

explore: response_curve {
  from: optimized_table
  join: spend_table {
    sql_on: ${response_curve.channel} = ${spend_table.channel} ;;
    relationship: one_to_one
  }
}
