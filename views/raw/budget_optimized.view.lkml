view: budget_optimized {

  fields_hidden_by_default: yes

  dimension: channel {
    type: string
    sql: ${TABLE}.channel ;;
  }
  dimension: cpik {
    type: number
    sql: ${TABLE}.cpik ;;
  }
  dimension: effectiveness {
    type: number
    sql: ${TABLE}.effectiveness ;;
  }
  dimension: incremental_outcome {
    type: number
    sql: ${TABLE}.incremental_outcome ;;
  }
  dimension: metric {
    type: string
    sql: ${TABLE}.metric ;;
  }
  dimension: mroi {
    type: number
    sql: ${TABLE}.mroi ;;
  }
  dimension: pct_of_contribution {
    type: number
    sql: ${TABLE}.pct_of_contribution ;;
  }
  dimension: pct_of_spend {
    type: number
    sql: ${TABLE}.pct_of_spend ;;
  }
  dimension: roi {
    type: number
    sql: ${TABLE}.roi ;;
  }
  dimension: spend {
    type: number
    sql: ${TABLE}.spend ;;
  }
  measure: count {
    type: count
  }
}
