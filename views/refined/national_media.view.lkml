include: "../raw/national_media.view.lkml"
include: "../common/*.view.lkml"

view: +national_media {
  derived_table: {
    sql: SELECT * FROM `@{PROJECT_ID}.@{MERIDIAN_DATASET}.national_media` ;;
  }
  extends: [sets]

  dimension: channel0_impression {
    type: number
    sql: ${TABLE}.Channel0_impression ;;
  }
}
