include: "../raw/budget_non_optimized.view.lkml"
include: "../common/*.view.lkml"

view: +budget_non_optimized {
  derived_table: {
    sql: SELECT *, GENERATE_UUID() as primary_key FROM `@{PROJECT_ID}.@{MERIDIAN_DATASET}.budget_non_optimized` ;;
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

  dimension: spend {
  }

  dimension: spend_non_op{
    hidden: no
    sql: ${spend} ;;
    type: number
  }

  dimension: incremental_outcome {
  }

  dimension: revenue_non_op {
    hidden: no
    sql: ${incremental_outcome} ;;
    type: number
  }

  measure: total_revenue_non_op {
    type: sum
    sql: ${incremental_outcome} ;;
    value_format_name: usd_0
    label: "Non-optimized Revenue"
    group_label: "ROI non optimized"
    hidden: no
  }

  measure: total_spend_non_op {
    type: sum
    sql: ${spend_non_op} ;;
    value_format_name: usd_0
    label: "Non-optimized Spend"
    group_label: "ROI non optimized"
    hidden: no
  }

  measure: avg_roi_non_op {
    type: number
    sql: SAFE_DIVIDE(${total_revenue_non_op},${total_spend_non_op}) ;;
    value_format_name: decimal_1
    label: "Non-optimized ROI"
    group_label: "ROI non optimized"
    hidden: no
  }

  measure: spend_difference_non_op {
    type: number
    sql: ${budget_optimized.total_spend_op} - ${total_spend_non_op} ;;
    value_format_name: usd
    label: "Budget Change"
    group_label: "Comparison"
    hidden: no
  }

  measure: percent_spend_difference_non_op {
    type: number
    sql: SAFE_DIVIDE(${spend_difference_non_op},${total_spend_non_op}) ;;
    value_format_name: percent_1
    label: "% Budget change"
    group_label: "Comparison"
    hidden: no
  }

  measure: revenue_difference_non_op {
    type: number
    sql: ${budget_optimized.total_revenue_op} - ${total_revenue_non_op} ;;
    value_format_name: usd
    label: "Revenue Change"
    group_label: "Comparison"
    hidden: no
  }

  measure: percent_revenue_difference_non_op {
    type: number
    sql: SAFE_DIVIDE(${revenue_difference_non_op},${total_revenue_non_op}) ;;
    value_format_name: percent_1
    label: "% Revenue Change"
    group_label: "Comparison"
    hidden: no
  }

}
