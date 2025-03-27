view: goodness_of_metrics {

  fields_hidden_by_default: yes

  dimension: geo_granularity {
    type: string
    sql: ${TABLE}.geo_granularity ;;
  }
  dimension: int64_field_0 {
    type: number
    sql: ${TABLE}.int64_field_0 ;;
  }
  dimension: metric {
    type: string
    sql: ${TABLE}.metric ;;
  }
  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }
  measure: count {
    type: count
  }
}
