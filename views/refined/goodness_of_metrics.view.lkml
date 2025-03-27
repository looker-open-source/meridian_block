include: "../raw/goodness_of_metrics.view.lkml"
include: "../common/*.view.lkml"

view: +goodness_of_metrics {
  derived_table: {
    sql: SELECT * FROM `@{PROJECT_ID}.@{MERIDIAN_DATASET}.goodness_of_metrics` ;;
  }
  extends: [sets]

  dimension: geo_granularity {
    hidden: no
  }

  dimension: metric {
    hidden: no
  }
  dimension: value {
    hidden: no
  }
  measure: avg_value_mape {
    type: average
    sql: ${value} ;;
    filters: [metric: "MAPE"]
    label: "MAPE"
    hidden: no
    value_format_name: percent_1
  }

  measure: avg_value_r_squared {
    type: average
    sql: ${value} ;;
    filters: [metric: "R_Squared"]
    label: "R Squared"
    hidden: no
    value_format_name: decimal_1
  }

  measure: avg_value_wmape {
    type: average
    sql: ${value} ;;
    filters: [metric: "wMAPE"]
    label: "wMAPE"
    hidden: no
    value_format_name: percent_1
  }
}
