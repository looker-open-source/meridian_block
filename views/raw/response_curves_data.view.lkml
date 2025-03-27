view: response_curves_data {

  fields_hidden_by_default: yes

  dimension: channel {
    type: string
    sql: ${TABLE}.channel ;;
  }
  dimension: incremental_outcome {
    type: number
    sql: ${TABLE}.incremental_outcome ;;
  }
  dimension: metric {
    type: string
    sql: ${TABLE}.metric ;;
  }
  dimension: spend {
    type: number
    sql: ${TABLE}.spend ;;
  }
  dimension: spend_multiplier {
    type: number
    sql: ${TABLE}.spend_multiplier ;;
  }
  measure: count {
    type: count
  }
}
