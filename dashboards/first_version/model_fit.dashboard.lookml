---
- dashboard: model_fit
  title: Model Fit
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: jamB3iRPzJNUYGOBvgm5Qf
  elements:
  - title: Model Fit
    name: Model Fit
    model: meridian_model
    explore: goodness_of_metrics
    type: looker_grid
    fields: [goodness_of_metrics.geo_granularity, goodness_of_metrics.metric, average_of_value]
    pivots: [goodness_of_metrics.metric]
    sorts: [goodness_of_metrics.metric, goodness_of_metrics.geo_granularity]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      based_on: goodness_of_metrics.value
      expression: ''
      label: Average of Value
      measure: average_of_value
      type: average
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
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      average_of_value: Value
    series_cell_visualizations:
      average_of_value:
        is_active: true
    hidden_pivots: {}
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
    listen: {}
    row: 2
    col: 14
    width: 10
    height: 7
  - title: Expected Revenue vs Actual Revenue
    name: Expected Revenue vs Actual Revenue
    model: meridian_model
    explore: model_fit_data
    type: looker_line
    fields: [model_fit_data.time_date, average_of_actual, average_of_baseline, average_of_expected]
    sorts: [model_fit_data.time_date]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      based_on: model_fit_data.actual
      expression: ''
      label: Average of Actual
      measure: average_of_actual
      type: average
    - _kind_hint: measure
      _type_hint: number
      based_on: model_fit_data.baseline
      expression: ''
      label: Average of Baseline
      measure: average_of_baseline
      type: average
    - _kind_hint: measure
      _type_hint: number
      based_on: model_fit_data.expected
      expression: ''
      label: Average of Expected
      measure: average_of_expected
      type: average
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: average_of_actual, id: average_of_actual,
            name: Average of Actual}, {axisId: average_of_baseline, id: average_of_baseline,
            name: Average of Baseline}, {axisId: average_of_expected, id: average_of_expected,
            name: Average of Expected}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_labels:
      average_of_actual: Actual
      average_of_baseline: Baseline
      average_of_expected: Expected
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen: {}
    row: 2
    col: 0
    width: 13
    height: 12
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <div style="border-bottom: solid 1px #4285F4;">

      <nav style="font-size: 18px; padding: 5px 10px 0 10px; height: 60px">

      <a style="padding: 5px 15px; border-top: solid 1px #4285F4; border-left: solid 1px #4285F4; border-right: solid 1px #4285F4; border-radius: 5px 5px 0 0; float: left; line-height: 40px; font-weight: bold; background-color: #eaf1fe;" href="/dashboards/meridian_model::model_fit"> Model Fit and Diagnostics </a>

      <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="/dashboards/meridian_model::model_summary_results" > Model Summary Results </a>

      <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="/dashboards/meridian_model::budget_planner_and_scenario_optimizer"> Budget Optimization </a>

      </nav>

      </div>
    row: 0
    col: 0
    width: 24
    height: 2
