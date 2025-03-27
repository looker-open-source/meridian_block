# If necessary, uncomment the line below to include explore_source.
# include: "meridian_explores.explore.lkml"

view: spend_table {
  derived_table: {
    explore_source: response_curves_data {
      column: pk {}
      column: channel {}
      column: incremental_outcome {}
      column: spend {}
      column: next_spend {}
      filters: {
        field: response_curves_data.metric
        value: "mean"
      }
    }
  }

  dimension: pk {
    primary_key: yes
    hidden: yes
  }
  dimension: channel {
    description: ""
  }
  dimension: incremental_outcome {
    type:number
  }
  dimension: spend {
    description: ""
    type: number
  }
  dimension: next_spend {
    description: ""
    type: number
  }
  measure: total_io {
    type: sum_distinct
    sql: ${incremental_outcome} ;;
    label: "Revenue"
  }
}

view: optimized_table {
  derived_table: {
    explore_source: budget_optimization {
      column: channel {}
      column: spend_non_op {}
      column: spend_op { field: budget_optimized.spend_op }
      column: revenue_non_op {}
      column: revenue_op {field: budget_optimized.revenue_op}
      filters: {
        field: budget_optimization.metric
        value: "mean"
      }
    }
  }
  dimension: channel {
    description: ""
  }
  dimension: spend_non_op {
    description: ""
    type: number
    hidden: yes
  }
  dimension: spend_op {
    description: ""
    type: number
    hidden: yes
  }

  dimension: revenue_non_op {
    hidden: yes
  }

  dimension: revenue_op {
    hidden: yes
  }

  dimension: matched_non_op {
    type:number
    sql: CASE WHEN ${spend_non_op} >= ${spend_table.spend} AND ${spend_non_op} < ${spend_table.next_spend}
                THEN ${revenue_non_op}
              ELSE NULL
              END;;
    hidden: yes
  }
  dimension: matched_op {
    type:number
    sql: CASE WHEN ${spend_op} >= ${spend_table.spend} AND ${spend_op} < ${spend_table.next_spend}
                THEN ${revenue_op}
              ELSE NULL
              END;;
    hidden: yes
  }

  measure: non_optimized {
    type: average
    sql: ${matched_non_op} ;;
  }

  measure: optimized {
    type: average
    sql: ${matched_op} ;;
  }
}
