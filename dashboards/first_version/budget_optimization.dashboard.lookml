---
- dashboard: budget_planner_and_scenario_optimizer
  title: Budget planner and Scenario optimizer
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: EHlll3tZat12UemC2JPYfv
  elements:
  - title: Optimized Spend Allocation
    name: Optimized Spend Allocation
    model: meridian_model
    explore: budget_optimized
    type: looker_pie
    fields: [budget, budget_optimized.channel]
    sorts: [average_of_spend desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression: ''
      label: Budget
      based_on: budget_optimized.spend
      _kind_hint: measure
      measure: budget
      type: average
      _type_hint: number
    value_labels: legend
    label_type: labPer
    start_angle: 93
    defaults_version: 1
    listen: {}
    row: 6
    col: 14
    width: 10
    height: 8
  - title: Optimized incremental sales delta across all channels
    name: Optimized incremental sales delta across all channels
    model: meridian_model
    explore: budget_optimized
    type: looker_waterfall
    fields: [budget_optimized.channel, incremental_outcome]
    sorts: [budget_optimized.channel]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression: ''
      label: Incremental Outcome
      based_on: budget_optimized.incremental_outcome
      _kind_hint: measure
      measure: incremental_outcome
      type: average
      _type_hint: number
    up_color: false
    down_color: false
    total_color: false
    show_value_labels: false
    show_x_axis_ticks: true
    show_x_axis_label: true
    x_axis_scale: auto
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_gridlines: true
    color_application:
      collection_id: google
      palette_id: google-diverging-0
      options:
        steps: 5
    defaults_version: 1
    hidden_pivots: {}
    hidden_series: []
    listen: {}
    row: 14
    col: 0
    width: 12
    height: 9
  - title: Change in optimized spend for each channel
    name: Change in optimized spend for each channel
    model: meridian_model
    explore: budget_optimized
    type: looker_column
    fields: [budget_optimized.channel, spend]
    sorts: [budget_optimized.channel]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      based_on: budget_optimized.incremental_outcome
      expression: ''
      label: Average of Incremental Outcome
      measure: average_of_incremental_outcome
      type: average
    - category: measure
      expression: ''
      label: Spend
      based_on: budget_optimized.spend
      _kind_hint: measure
      measure: spend
      type: average
      _type_hint: number
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: google
      palette_id: google-diverging-0
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: average_of_spend, id: average_of_spend,
            name: Average of Spend}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 0, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_series: []
    show_dropoff: false
    up_color: false
    down_color: false
    total_color: false
    defaults_version: 1
    hidden_pivots: {}
    listen: {}
    row: 6
    col: 0
    width: 12
    height: 8
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <div style="border-bottom: solid 1px #4285F4;">

      <nav style="font-size: 18px; padding: 5px 10px 0 10px; height: 60px">

      <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="/dashboards/meridian_model::model_fit"> Model Fit and Diagnostics </a>

      <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="/dashboards/meridian_model::model_summary_results" > Model Summary Results </a>

      <a style="padding: 5px 15px; border-top: solid 1px #4285F4; border-left: solid 1px #4285F4; border-right: solid 1px #4285F4; border-radius: 5px 5px 0 0; float: left; line-height: 40px; font-weight: bold; background-color: #eaf1fe;" href="/dashboards/meridian_model::budget_planner_and_scenario_optimizer"> Budget Optimization </a>

      </nav>

      </div>
    row: 0
    col: 0
    width: 24
    height: 2
  - title: Optimized Budget
    name: Optimized Budget
    model: meridian_model
    explore: budget_optimized
    type: single_value
    fields: [sum_of_spend_2]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      based_on: budget_optimized.spend
      expression: ''
      label: Average of Spend
      measure: average_of_spend
      type: average
    - _kind_hint: measure
      _type_hint: number
      based_on: budget_optimized.spend
      expression: ''
      label: Sum of Spend
      measure: sum_of_spend
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: budget_optimized.spend
      expression: ''
      label: Average of Spend
      measure: average_of_spend_2
      type: average
    - _kind_hint: measure
      _type_hint: number
      based_on: budget_optimized.spend
      expression: ''
      label: Median of Spend
      measure: median_of_spend
      type: median
    - _kind_hint: measure
      _type_hint: number
      based_on: budget_optimized.spend
      expression: ''
      label: Max of Spend
      measure: max_of_spend
      type: max
    - _kind_hint: measure
      _type_hint: number
      based_on: budget_optimized.spend
      expression: ''
      label: Sum of Spend
      measure: sum_of_spend_2
      type: sum
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: 0.0,, "M"
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    hidden_pivots: {}
    defaults_version: 1
    listen: {}
    row: 2
    col: 0
    width: 4
    height: 4
  - title: Current Budget
    name: Current Budget
    model: meridian_model
    explore: budget_non_optimized
    type: single_value
    fields: [sum_of_spend_2]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      based_on: budget_non_optimized.spend
      expression: ''
      label: Sum of Spend
      measure: sum_of_spend
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: budget_non_optimized.spend
      expression: ''
      label: Average of Spend
      measure: average_of_spend
      type: average
    - _kind_hint: measure
      _type_hint: number
      based_on: budget_non_optimized.spend
      expression: ''
      label: Sum of Spend
      measure: sum_of_spend_2
      type: sum
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: 0.0,, "M"
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    defaults_version: 1
    hidden_pivots: {}
    listen: {}
    row: 2
    col: 4
    width: 4
    height: 4
  - title: Current ROI
    name: Current ROI
    model: meridian_model
    explore: budget_non_optimized
    type: single_value
    fields: [sum_of_roi]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      based_on: budget_non_optimized.spend
      expression: ''
      label: Sum of Spend
      measure: sum_of_spend
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: budget_non_optimized.spend
      expression: ''
      label: Average of Spend
      measure: average_of_spend
      type: average
    - _kind_hint: measure
      _type_hint: number
      based_on: budget_non_optimized.spend
      expression: ''
      label: Sum of Spend
      measure: sum_of_spend_2
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: budget_non_optimized.roi
      expression: ''
      label: Sum of Roi
      measure: sum_of_roi
      type: sum
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: '0.00'
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    defaults_version: 1
    hidden_pivots: {}
    listen: {}
    row: 2
    col: 8
    width: 4
    height: 4
  - title: Optimized ROI
    name: Optimized ROI
    model: meridian_model
    explore: budget_optimized
    type: single_value
    fields: [sum_of_roi]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      based_on: budget_optimized.roi
      expression: ''
      label: Sum of Roi
      measure: sum_of_roi
      type: sum
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: '0.00'
    hidden_pivots: {}
    defaults_version: 1
    listen: {}
    row: 2
    col: 12
    width: 4
    height: 4
  - title: Optimized Incremental Outcome
    name: Optimized Incremental Outcome
    model: meridian_model
    explore: budget_optimized
    type: single_value
    fields: [sum_of_incremental_outcome]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      based_on: budget_optimized.roi
      expression: ''
      label: Sum of Roi
      measure: sum_of_roi
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: budget_optimized.incremental_outcome
      expression: ''
      label: Sum of Incremental Outcome
      measure: sum_of_incremental_outcome
      type: sum
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: 0.000,, "M"
    hidden_pivots: {}
    defaults_version: 1
    listen: {}
    row: 2
    col: 20
    width: 4
    height: 4
  - title: Incremental Output non optimized
    name: Incremental Output non optimized
    model: meridian_model
    explore: budget_non_optimized
    type: single_value
    fields: [sum_of_incremental_outcome]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      based_on: budget_non_optimized.spend
      expression: ''
      label: Sum of Spend
      measure: sum_of_spend
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: budget_non_optimized.spend
      expression: ''
      label: Average of Spend
      measure: average_of_spend
      type: average
    - _kind_hint: measure
      _type_hint: number
      based_on: budget_non_optimized.spend
      expression: ''
      label: Sum of Spend
      measure: sum_of_spend_2
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: budget_non_optimized.roi
      expression: ''
      label: Sum of Roi
      measure: sum_of_roi
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: budget_non_optimized.incremental_outcome
      expression: ''
      label: Sum of Incremental Outcome
      measure: sum_of_incremental_outcome
      type: sum
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: 0.000,, "M"
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    defaults_version: 1
    hidden_pivots: {}
    listen: {}
    row: 2
    col: 16
    width: 4
    height: 4
  - name: Optimized Spend Allocation (2)
    title: Optimized Spend Allocation
    merged_queries:
    - model: meridian_model
      explore: budget_non_optimized
      type: looker_grid
      fields: [budget_non_optimized.channel, non_optimized_budget]
      sorts: [budget_non_optimized.channel]
      limit: 500
      column_limit: 50
      dynamic_fields:
      - category: measure
        expression: ''
        label: Non Optimized Budget
        based_on: budget_non_optimized.spend
        _kind_hint: measure
        measure: non_optimized_budget
        type: average
        _type_hint: number
      show_view_names: false
      show_row_numbers: true
      transpose: false
      truncate_text: true
      hide_totals: false
      hide_row_totals: false
      size_to_fit: true
      table_theme: white
      limit_displayed_rows: false
      enable_conditional_formatting: false
      header_text_alignment: left
      header_font_size: 12
      rows_font_size: 12
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      hidden_pivots: {}
      defaults_version: 1
    - model: meridian_model
      explore: budget_optimized
      type: looker_grid
      fields: [budget_optimized.channel, optimized_budget]
      sorts: [budget_optimized.channel]
      limit: 500
      column_limit: 50
      dynamic_fields:
      - category: measure
        expression: ''
        label: Optimized Budget
        based_on: budget_optimized.spend
        _kind_hint: measure
        measure: optimized_budget
        type: average
        _type_hint: number
      show_view_names: false
      show_row_numbers: true
      transpose: false
      truncate_text: true
      hide_totals: false
      hide_row_totals: false
      size_to_fit: true
      table_theme: white
      limit_displayed_rows: false
      enable_conditional_formatting: false
      header_text_alignment: left
      header_font_size: 12
      rows_font_size: 12
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      y_axis_scale_mode: linear
      x_axis_reversed: false
      y_axis_reversed: false
      plot_size_by_field: false
      trellis: ''
      stacking: ''
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      defaults_version: 1
      join_fields:
      - field_name: budget_optimized.channel
        source_field_name: budget_non_optimized.channel
    type: table
    row: 14
    col: 15
    width: 7
    height: 4
