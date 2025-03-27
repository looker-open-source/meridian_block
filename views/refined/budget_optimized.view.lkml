include: "../raw/budget_optimized.view.lkml"
include: "../common/*.view.lkml"
include: "budget_non_optimized.view"

view: +budget_optimized {
  derived_table: {
    sql: SELECT *, GENERATE_UUID() as primary_key FROM `@{PROJECT_ID}.@{MERIDIAN_DATASET}.budget_optimized` ;;
  }
  extends: [sets]

  dimension: pk {
    sql: ${TABLE}.primary_key ;;
    primary_key: yes
  }

  dimension: channel {
    hidden: no
  }

  dimension: metric {
    hidden: no
  }

  dimension: roi {
    hidden: no
  }

  dimension: spend {}

  dimension: spend_op {
    hidden: no
    sql: ${spend} ;;
    type: number
  }

  dimension: revenue_op {
    hidden: no
    sql: ${incremental_outcome} ;;
    type: number
  }

  dimension: incremental_outcome {
  }

  measure: total_revenue_op {
    type: sum
    sql: ${incremental_outcome} ;;
    value_format_name: usd_0
    label: "Optimized Revenue"
    group_label: "ROI optimized"
    hidden: no
  }

  measure: total_spend_op {
    type: sum
    sql: ${spend_op} ;;
    value_format_name: usd_0
    label: "Optimized Spend"
    group_label: "ROI optimized"
    hidden: no
  }

  measure: avg_roi_op {
    type: number
    sql: SAFE_DIVIDE(${total_revenue_op},${total_spend_op}) ;;
    value_format_name: decimal_1
    label: "Optimized ROI"
    group_label: "ROI optimized"
    hidden: no
  }


}
