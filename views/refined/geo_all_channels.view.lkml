include: "../raw/geo_all_channels.view.lkml"
include: "../common/*.view.lkml"

view: +geo_all_channels {
  derived_table: {
    sql: SELECT * FROM `@{PROJECT_ID}.@{MERIDIAN_DATASET}.geo_all_channels` ;;
  }
  extends: [sets]

  dimension: channel0_impression {
    type: number
    sql: ${TABLE}.channel0_impression ;;
    hidden: no
  }
}
