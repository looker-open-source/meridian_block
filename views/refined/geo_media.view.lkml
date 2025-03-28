include: "../raw/geo_media.view.lkml"
include: "../common/*.view.lkml"

view: +geo_media {
  derived_table: {
    sql: SELECT * FROM `@{PROJECT_ID}.@{MERIDIAN_DATASET}.geo_media` ;;
  }
  extends: [sets]

  dimension: channel0_impression {
    type: number
    sql: ${TABLE}.channel0_impression ;;
    hidden: no
  }
}
