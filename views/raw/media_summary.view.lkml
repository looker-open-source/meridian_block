view: media_summary {

  fields_hidden_by_default: yes

  dimension: _contribution {
    type: string
    sql: ${TABLE}.`% contribution` ;;
  }
  dimension: _impressions {
    type: number
    sql: ${TABLE}.`% impressions` ;;
  }
  dimension: _spend {
    type: number
    sql: ${TABLE}.`% spend` ;;
  }
  dimension: channel {
    type: string
    sql: ${TABLE}.channel ;;
  }
  dimension: cpik {
    type: string
    sql: ${TABLE}.cpik ;;
  }
  dimension: cpm {
    type: number
    sql: ${TABLE}.cpm ;;
  }
  dimension: distribution {
    type: string
    sql: ${TABLE}.distribution ;;
  }
  dimension: effectiveness {
    type: string
    sql: ${TABLE}.effectiveness ;;
  }
  dimension: impressions {
    type: number
    sql: ${TABLE}.impressions ;;
  }
  dimension: incremental_outcome {
    type: string
    sql: ${TABLE}.`incremental outcome` ;;
  }
  dimension: mroi {
    type: string
    sql: ${TABLE}.mroi ;;
  }
  dimension: roi {
    type: string
    sql: ${TABLE}.roi ;;
  }
  dimension: spend {
    type: number
    sql: ${TABLE}.spend ;;
  }
}
