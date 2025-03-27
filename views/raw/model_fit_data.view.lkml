view: model_fit_data {

  fields_hidden_by_default: yes

  dimension: actual {
    type: number
    sql: ${TABLE}.actual ;;
  }
  dimension: baseline {
    type: number
    sql: ${TABLE}.baseline ;;
  }
  dimension: expected {
    type: number
    sql: ${TABLE}.expected ;;
  }
  dimension: geo {
    type: string
    sql: ${TABLE}.geo ;;
  }
  dimension: metric {
    type: string
    sql: ${TABLE}.metric ;;
  }
  dimension_group: time {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.time ;;
  }
  measure: count {
    type: count
  }
}
