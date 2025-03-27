include: "../raw/media_summary.view.lkml"
include: "../common/*.view.lkml"

view: +media_summary {
  derived_table: {
    sql: SELECT * FROM `@{PROJECT_ID}.@{MERIDIAN_DATASET}.media_summary` ;;
  }
  extends: [sets]

  dimension: _contribution {
    label: "Percent Contribution Value"
    value_format: "0.00\%"
    description: "Raw percent contribution values as a string."
    hidden: no
  }

  dimension: contribution_first {
    label: "Percentage Contribution Value"
    type: number
    sql: SAFE_CAST(
           REGEXP_EXTRACT(${TABLE}.`% contribution`, r'(\d+\.\d{1,2})')
           AS FLOAT64
       )/100;;
    value_format_name: percent_1
    description: "Extracted contribution value percentage as a number."
    hidden: no
  }

  dimension: contribution_second {
    label: "Percentage Contribution Lower Confidence Interval"
    type: number
    sql: SAFE_CAST(
           REGEXP_EXTRACT(${TABLE}.`% contribution`, r'\((\d+\.\d{1,2})')
           AS FLOAT64
       )/100;;
    value_format_name: percent_1
    description: "Extracted lower bound contribution percentage as a number."
    hidden: no
  }

  dimension: contribution_third {
    label: "Percentage Contribution Upper Confidence Interval"
    type: number
    sql: SAFE_CAST(
           REGEXP_EXTRACT(${TABLE}.`% contribution`, r', (\d+\.\d{1,2})')
           AS FLOAT64
       )/100;;
    value_format_name: percent_1
    description: "Extracted upper bound contribution percentage as a number."
    hidden: no
  }

  dimension: _impressions {
    label: "Percent Impressions"
    value_format: "0.00\%"
    description: "Percentage of impressions relative to total."
    hidden: no
  }
  dimension: _spend {
    label: "Percent Spend"
    value_format_name: percent_1
    description: "Percentage of spend relative to total."
    hidden: no
  }
  dimension: channel {
    label: "Channel Name"
    description: "The name of the marketing channel."
    hidden: no
  }

  dimension: cpik {
    label: "CPIK"
    description: "Cost per incremental KPI as a string."
    hidden: no
  }

  dimension: cpik_first {
    label: "Cost per incremental KPI"
    type: number
    sql: SAFE_CAST(
           REGEXP_EXTRACT(${TABLE}.cpik, r'\$(\d+\.\d{1,2})')
           AS FLOAT64
       );;
    value_format: "$0.00"
    description: "Extracted CPIK value as a number."
    hidden: no
  }

  dimension: cpik_second {
    label: "CPIK Upper Confidence Interval"
    type: number
    sql: SAFE_CAST(
           REGEXP_EXTRACT(${TABLE}.cpik, r'\(\$(\d+\.\d{1,2})')
           AS FLOAT64
       );;
    value_format: "$0.00"
    description: "Extracted lower bound CPIK value as a number."
    hidden: no
  }

  dimension: cpik_third {
    type: number
    sql: SAFE_CAST(
           REGEXP_EXTRACT(${TABLE}.cpik, r', \$(\d+\.\d{1,2})')
           AS FLOAT64
       );;
    value_format: "$0.00"
    description: "Extracted upper bound CPIK value as a number."
    hidden: no
  }


  dimension: cpm {
    label: "Cost Per Mille"
    value_format: "$0"
    description: "Cost per thousand impressions (CPM)."
    hidden: no
  }
  dimension: distribution {
    description: "Type of distribution used."
    hidden: no
  }
  dimension: effectiveness {
    description: "Effectiveness value as a string."
    hidden: no
  }

  dimension: effect_first {
    label: "Effectiveness Value"
    type: number
    sql: SAFE_CAST(
           REGEXP_EXTRACT(${TABLE}.effectiveness, r'(\d+\.\d{2})') AS FLOAT64
       );;
    value_format: "0.00"
    description: "Extracted effectiveness value."
    hidden: no
  }

  dimension: effect_second {
    label: "Effectiveness Lower Bound Value"
    type: number
    sql: SAFE_CAST(
           REGEXP_EXTRACT(${TABLE}.effectiveness, r'\((\d+\.\d{2})')
           AS FLOAT64
       );;
    value_format: "0.00"
    description: "Extracted Lower Bound effectiveness value."
    hidden: no
  }

  dimension: effect_third {
    label: "Effectiveness Upper Bound Value"
    type: number
    sql: SAFE_CAST(
           REGEXP_EXTRACT(${TABLE}.effectiveness, r', (\d+\.\d{2})')
           AS FLOAT64
       );;
    value_format: "0.00"
    description: "Extracted Upper Bound effectiveness value."
    hidden: no
  }

  dimension: impressions {
    description: "Total number of impressions."
    hidden: no
  }
  dimension: incremental_outcome {
    description: "Incremental outcome value as a string."
    hidden: no
  }


  dimension: outcome {
    label: "Incremental Outcome Value"
    type: number
    sql: SAFE_CAST(
           REGEXP_REPLACE(
               REGEXP_EXTRACT(${TABLE}.`incremental outcome`, r'\$(\d{1,3}(?:,\d{3})*)'),
               r',',
               ''
           ) AS INT64);;
    value_format_name: usd_0
    description: "Extracted incremental outcome value."
    hidden: no
  }
  dimension: outcome_min {
    label: "Incremental Outcome Lower Bound Value"
    type: number
    sql: SAFE_CAST(
           REGEXP_REPLACE(
               REGEXP_EXTRACT(${TABLE}.`incremental outcome`, r'\(\$(\d{1,3}(?:,\d{3})*)'),
               r',',
               ''
           ) AS INT64);; # Or BIGNUMERIC or FLOAT64 as needed
    value_format_name: usd_0
    description: "Extracted incremental outcome lower bound value."
    hidden: no
  }

  dimension: outcome_max {
    label: "Incremental Outcome Upper Bound Value"
    type: number  # Or appropriate number type (int, float, big_numeric)
    sql: SAFE_CAST(
           REGEXP_REPLACE(
               REGEXP_EXTRACT(
                   (
                       SELECT value
                       FROM UNNEST(ARRAY_REVERSE(SPLIT(REGEXP_EXTRACT(${TABLE}.`incremental outcome`, r'\((.*)\)'), ', '))) AS value
                       LIMIT 1
                   ),
                   r'\$(\d{1,3}(?:,\d{3})*)'
               ),
               r',',
               ''
           ) AS INT64);; # Or BIGNUMERIC or FLOAT64 as needed
    value_format_name: usd_0
    description: "Extracted incremental outcome upper bound value."
    hidden: no
  }


  dimension: mroi {
    label: "Marginal ROI Value "
    description: "Marginal Return on Investment, measuring the additional return per additional dollar spent as a string"
    hidden: yes
  }


  dimension: mroi_first {
    type: number
    label: "Marginal ROI Value"
    description: "Extracted numerical value from Marginal ROI field."
    sql: SAFE_CAST(
           REGEXP_EXTRACT(${TABLE}.mroi, r'(\d+\.\d{1,2})') AS FLOAT64
       );;
    hidden: no
  }

  dimension: mroi_second {
    label: "Marginal ROI Lower Bound Value"
    description: "Extracted Lower Bound numerical value from Marginal ROI field."
    type: number
    sql: SAFE_CAST(
           REGEXP_EXTRACT(${TABLE}.mroi, r'\((\d+\.\d{1,2})')
           AS FLOAT64
       );;
    hidden: no
  }
  dimension: mroi_third {
    label: "Marginal ROI Upper Bound Value"
    description: "Extracted Upper Bound numerical value from Marginal ROI field."
    type: number
    sql: SAFE_CAST(
           REGEXP_EXTRACT(${TABLE}.mroi, r', (\d+\.\d{1,2})')
           AS FLOAT64
       );;
    hidden: no
  }

  dimension: roi {
    label: "ROI"
    description: "Return on Investment, measuring the additional return per additional dollar spent as a string."
  }


  dimension: roi_first {
    label: "ROI Value"
    description: "Extracted numerical value from ROI field."
    type: number
    sql: SAFE_CAST(
           REGEXP_EXTRACT(${TABLE}.roi, r'(\d+\.\d{1,2})') AS FLOAT64
       );;
    hidden: no
  }
  dimension: roi_second {
    label: "ROI Lower Bound Value"
    description: "Extracted Lower Bound numerical value from ROI field."
    type: number
    sql: SAFE_CAST(
           REGEXP_EXTRACT(${TABLE}.roi, r'\((\d+\.\d{1,2})')
           AS FLOAT64
       );;
    hidden: no

  }
  dimension: roi_third {
    label: "ROI Upper Bound Value"
    description: "Extracted Lower Bound numerical value from ROI field."
    type: number
    sql: SAFE_CAST(
           REGEXP_EXTRACT(${TABLE}.roi, r', (\d+\.\d{1,2})')
           AS FLOAT64
       );;
    hidden: no
  }

  dimension: spend {
    value_format: "$0"
    description: "Total spend in dollars."
    hidden: no
  }


  ### MEASURES ###

  measure: percentage_outcome_from_total {
    label: "% Revenue from Total"
    type: number
    sql: ( SUM(${outcome}) / SUM(SUM(${outcome})) OVER() ) ;;
    value_format_name: percent_1
    hidden: no
  }

  measure: percentage_spend {
    label: "% Spend from Total"
    type: average
    sql: ${_spend} ;;
    value_format_name: percent_1
    hidden: no
  }

  measure: avg_roi {
    label: "ROI Average"
    group_label: "ROI"
    type: average
    sql: ${roi_first} ;;
    value_format_name: decimal_1
    hidden: no
  }
  measure: avg_roi_lower {
    label: "ROI Lower"
    group_label: "ROI"
    type: average
    sql: ${roi_second} ;;
    value_format_name: decimal_1
    hidden: no
  }

  measure: avg_roi_upper {
    label: "ROI Upper"
    group_label: "ROI"
    type: average
    sql: ${roi_third} ;;
    value_format_name: decimal_1
    hidden: no
  }

  measure: roi_min {
    label: "ROI Min"
    group_label: "ROI"
    type: min
    sql: ${roi_first} ;;
    value_format_name: decimal_1
    hidden: no
  }

  measure: roi_25th {
    label: "ROI 25th Percentile"
    group_label: "ROI"
    type: percentile
    percentile: 25
    sql: ${roi_first} ;;
    value_format_name: decimal_1
    hidden: no
  }

  measure: roi_median {
    label: "ROI Median"
    group_label: "ROI"
    type: median
    sql: ${roi_first} ;;
    value_format_name: decimal_1
    hidden: no
  }

  measure: roi_75th {
    label: "ROI 75th Percentile"
    group_label: "ROI"
    type: percentile
    percentile: 75
    sql: ${roi_first} ;;
    value_format_name: decimal_1
    hidden: no
  }

  measure: roi_max {
    label: "ROI Max"
    group_label: "ROI"
    type: max
    sql: ${roi_first} ;;
    value_format_name: decimal_1
    hidden: no
  }

  measure: rest_of_contribution {
    label: "Baseline"
    type: average
    sql: 1 - (${contribution_first}) ;;
    value_format_name: percent_1
    description: "The remaining contribution percentage from all marketing channels."
    hidden: no
  }

  measure: marginal_roi {
    label: "Marginal ROI"
    group_label: "ROI"
    description: "Measures the additional return generated for every additional dollar spent."
    type: average
    sql: ${mroi_first};;
    value_format: "0.00"
    hidden: no
  }

  measure: avg_effectiveness {
    group_label: "Effectiveness"
    label: "Effectiveness AVG"
    type: average
    sql: ${effect_first} ;;
    hidden: no
  }

  measure: avg_effectiveness_lower {
    group_label: "Effectiveness"
    label: "Effectiveness Lower"
    type: average
    sql: ${effect_second} ;;
    hidden: no
  }

  measure: avg_effectiveness_upper {
    group_label: "Effectiveness"
    label: "Effectiveness Upper"
    type: average
    sql: ${effect_third} ;;
    hidden: no
  }

  measure: incremental_revenue {
    type: sum
    sql: ${outcome} ;;
    hidden: no
  }

  measure: current_spend {
    type: max
    sql: ${_spend};;
    hidden: no
  }

  measure: contribution_percentage {
    type: average
    sql: ${contribution_first} ;;
    hidden: no
    value_format_name: percent_1
  }

}
