include: "../raw/model_fit_data.view.lkml"
include: "../common/*.view.lkml"

view: +model_fit_data {
  derived_table: {
    sql: SELECT * FROM `@{PROJECT_ID}.@{MERIDIAN_DATASET}.model_fit_data` ;;
  }
  extends: [sets]

  dimension: actual {
    hidden: no
  }

  dimension_group: time {
    hidden: no
  }

  dimension: baseline {
    hidden: no
  }

  dimension: expected {
    hidden: no
  }

  dimension: geo {
    hidden: no
  }

  dimension: metric {
    hidden: no
  }

  ### MEASURES ###

  ## Actual ##

  measure: sum_actual {
    type: sum
    sql: ${actual} ;;
    hidden: no
  }

  measure: actual_mean {
    type: sum
    filters: [metric: "mean"]
    sql: ${actual} ;;
    hidden: no
  }

  ## Expected ##

  measure: sum_expected {
    type: sum
    sql: ${expected} ;;
    hidden: no
  }

  measure: expected_mean {
    type: sum
    sql: ${expected} ;;
    filters: [metric: "mean"]
    hidden: no
  }

  measure: expected_lo {
    type: sum
    sql: ${expected} ;;
    filters: [metric: "ci_lo"]
    hidden: no
  }

  measure: expected_hi {
    type: sum
    sql: ${expected} ;;
    filters: [metric: "ci_hi"]
    hidden: no
  }

  ## Base line ###
  measure: sum_baseline {
    type: sum
    sql: ${baseline} ;;
    hidden: no
  }

  measure: baseline_mean {
    type: sum
    sql: ${baseline} ;;
    filters: [metric: "mean"]
    hidden: no
  }

}
