include: "../raw/response_curves_data.view.lkml"
include: "../common/*.view.lkml"

view: +response_curves_data {
  derived_table: {
    sql: SELECT *, GENERATE_UUID() as primary_key FROM `@{PROJECT_ID}.@{MERIDIAN_DATASET}.response_curves_data` ;;
  }

  extends: [sets]

  dimension: pk {
    sql: ${TABLE}.primary_key ;;
    primary_key: yes
  }

  dimension: channel {
    hidden: no
  }

  dimension: incremental_outcome {
    hidden: no
  }
  dimension: metric {
    hidden: no
  }
  dimension: spend {
    hidden: no
  }
  dimension: spend_multiplier {
    hidden: no
  }

  dimension: next_spend {
    sql: LEAD(${spend}) OVER(ORDER BY ${spend}) ;;
    hidden: no
    type: number
  }

  dimension: points {}
}
