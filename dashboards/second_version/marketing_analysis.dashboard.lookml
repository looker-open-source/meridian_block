---
- dashboard: marketing_analysis
  title: Marketing analysis
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: yJzsCz9R2enkPpfsBrMdii
  elements:
  - title: Expected vs actual revenue
    name: Expected vs actual revenue
    model: meridian_model
    explore: model_fit_data
    type: looker_line
    fields: [model_fit_data.time_date, average_of_expected, average_of_actual, average_of_baseline]
    sorts: [average_of_actual]
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
    interpolation: monotone
    y_axes: [{label: '', orientation: left, series: [{axisId: average_of_actual, id: average_of_actual,
            name: Actual}, {axisId: average_of_baseline, id: average_of_baseline,
            name: Baseline}, {axisId: average_of_expected, id: average_of_expected,
            name: Expected}], showLabels: true, showValues: true, unpinAxis: true,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      average_of_actual: "#34A853"
      average_of_baseline: "#FBBC04"
      average_of_expected: "#4285F4"
    series_labels:
      average_of_actual: Actual
      average_of_baseline: Baseline
      average_of_expected: Expected
    reference_lines: [{reference_type: range, line_value: mean, range_start: min,
        range_end: max, margin_top: deviation, margin_value: mean, margin_bottom: deviation,
        label_position: right, color: "#4285F4"}]
    trend_lines: []
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen: {}
    row: 2
    col: 0
    width: 24
    height: 8
  - title: New Tile
    name: New Tile
    model: meridian_model
    explore: goodness_of_metrics
    type: looker_grid
    fields: [goodness_of_metrics.geo_granularity, goodness_of_metrics.avg_value_r_squared,
      goodness_of_metrics.avg_value_mape, goodness_of_metrics.avg_value_wmape]
    sorts: [goodness_of_metrics.avg_value_r_squared desc 0]
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
    table_theme: gray
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
    series_cell_visualizations:
      goodness_of_metrics.avg_value_r_squared:
        is_active: true
        palette:
          palette_id: google-diverging-0
          collection_id: google
      goodness_of_metrics.avg_value_mape:
        is_active: true
        palette:
          palette_id: google-diverging-0
          collection_id: google
      goodness_of_metrics.avg_value_wmape:
        is_active: true
        palette:
          palette_id: google-diverging-0
          collection_id: google
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
    title_hidden: true
    listen: {}
    row: 10
    col: 0
    width: 11
    height: 5
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"h1","children":[{"text":"Note: Correlation measures the
      strength of the relationship between predicted and actual revenue. R-squared
      measures the amount of variation in the data that is explained by the model.
      The closer to 1 in both R-squared and correlation the more accurate the model. ","fontSize":"16px","backgroundColor":"rgb(240,
      244, 249)","color":"rgb(65, 69, 73)"}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 10
    col: 11
    width: 13
    height: 5
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "-------------------"
    row: 15
    col: 0
    width: 24
    height: 1
  - name: " (3)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"h2","children":[{"text":"Channel contribution","bold":true}]}]'
    rich_content_json: '{"format":"slate"}'
    row: 16
    col: 0
    width: 24
    height: 2
  - title: Contribution by baseline and marketing channels
    name: Contribution by baseline and marketing channels
    model: meridian_model
    explore: media_summary
    type: looker_waterfall
    fields: [media_summary.channel, contribution_percentage]
    filters:
      media_summary.channel: ''
      media_summary.distribution: posterior
    sorts: [media_summary.channel]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression: ''
      label: Contribution Percentage
      based_on: media_summary.contribution_first
      _kind_hint: measure
      measure: contribution_percentage
      type: average
      _type_hint: number
    - _kind_hint: measure
      _type_hint: number
      based_on: media_summary.contribution_first
      expression: ''
      label: Sum of Contribution First
      measure: sum_of_contribution_first
      type: sum
    up_color: "#4285F4"
    down_color: "#4285F4"
    total_color: "#FBBC04"
    show_value_labels: false
    show_x_axis_ticks: true
    show_x_axis_label: true
    x_axis_scale: auto
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_gridlines: true
    color_application: undefined
    x_axis_gridlines: false
    show_view_names: false
    y_axes: [{label: '', orientation: bottom, series: [{axisId: media_summary.channel,
            id: media_summary.channel, name: Channel Name}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    y_axis_scale_mode: linear
    x_axis_reversed: true
    y_axis_reversed: false
    plot_size_by_field: false
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    label_density: 25
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    show_null_points: true
    interpolation: linear
    title_hidden: true
    listen: {}
    row: 20
    col: 0
    width: 14
    height: 9
  - title: New Tile
    name: New Tile (2)
    model: meridian_model
    explore: media_summary
    type: looker_donut_multiples
    fields: [media_summary.channel, media_summary.contribution_percentage, media_summary.rest_of_contribution]
    filters:
      media_summary.channel: All Channels
      media_summary.distribution: posterior
    sorts: [media_summary.channel]
    limit: 500
    column_limit: 50
    show_value_labels: true
    font_size: 0
    color_application:
      collection_id: google
      palette_id: google-diverging-0
      options:
        steps: 5
        reverse: true
    series_labels:
      media_summary.contribution_percentage: All Channels
    value_labels: legend
    label_type: labPer
    show_view_names: false
    defaults_version: 1
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
    title_hidden: true
    listen: {}
    row: 20
    col: 14
    width: 10
    height: 9
  - title: Spend And Revenue Contribution
    name: Spend And Revenue Contribution
    model: meridian_model
    explore: media_summary
    type: looker_column
    fields: [media_summary.channel, media_summary.percentage_outcome_from_total, media_summary.percentage_spend,
      media_summary.avg_roi]
    filters:
      media_summary.channel: "-All Channels"
      media_summary.distribution: posterior
    sorts: [media_summary.channel]
    limit: 500
    column_limit: 50
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
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: media_summary.percentage_outcome_from_total,
            id: media_summary.percentage_outcome_from_total, name: Revenue}, {axisId: media_summary.percentage_spend,
            id: media_summary.percentage_spend, name: Spend}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, type: linear}, {label: !!null '',
        orientation: right, series: [{axisId: average_of_roi_first, id: average_of_roi_first,
            name: ROI}], showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_types:
      media_summary.avg_roi: scatter
    series_colors:
      media_summary.percentage_outcome_from_total: "#4285F4"
      media_summary.percentage_spend: "#D2E3FC"
      average_of_roi_first: "#FA7B17"
      media_summary.avg_roi: "#0D652D"
    series_labels:
      average_of_percent_spend: Percent Spend
      media_summary.percent_revenue: Percent Revenue
      average_of_roi_first: ROI
      media_summary.percentage_outcome_from_total: Revenue
      media_summary.percentage_spend: Spend
    series_point_styles:
      media_summary.avg_roi: diamond
    reference_lines: []
    trend_lines: []
    defaults_version: 1
    hidden_fields: [media_summary.avg_roi]
    hidden_pivots: {}
    listen: {}
    row: 29
    col: 0
    width: 12
    height: 8
  - title: ROI bar chart for each channel
    name: ROI bar chart for each channel
    model: meridian_model
    explore: media_summary
    type: looker_boxplot
    fields: [media_summary.channel, media_summary.avg_roi_lower, media_summary.roi_25th,
      media_summary.avg_roi, media_summary.roi_75th, media_summary.avg_roi_upper]
    filters:
      media_summary.channel: "-All Channels"
    sorts: [media_summary.channel]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      based_on: media_summary.contribution_first
      expression: ''
      label: Average of Contribution First
      measure: average_of_contribution_first
      type: average
    - _kind_hint: measure
      _type_hint: number
      based_on: media_summary._spend
      expression: ''
      label: Average of Percent Spend
      measure: average_of_percent_spend
      type: average
    - _kind_hint: measure
      _type_hint: number
      based_on: media_summary.roi_first
      expression: ''
      label: Average of Roi First
      measure: average_of_roi_first
      type: average
    - _kind_hint: measure
      _type_hint: number
      based_on: media_summary.contribution_first
      expression: ''
      label: Average of Contribution First
      measure: average_of_contribution_first_2
      type: average
    x_axis_gridlines: true
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: custom
    y_axis_tick_density_custom: 24
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    y_axis_labels: [ROI]
    x_axis_zoom: true
    y_axis_zoom: true
    defaults_version: 1
    hidden_pivots: {}
    listen: {}
    row: 29
    col: 12
    width: 12
    height: 8
  - name: " (4)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "-------------------"
    row: 37
    col: 0
    width: 24
    height: 1
  - name: " (Copy 2)"
    type: text
    title_text: " (Copy 2)"
    subtitle_text: ''
    body_text: '[{"type":"h3","children":[{"text":"Return on Investment","bold":true}]},{"type":"p","children":[{"text":""}],"id":"0ydt5"},{"type":"p","id":"ngcby","children":[{"text":"You
      can identify the channels driving the highest ROI impact or largest volume impact
      to help validate the respective marketing channel performance. You can also
      compare the differences in ROI between channels that measure effectiveness and
      marginal ROIs.","fontSize":"16px","backgroundColor":"rgb(240, 244, 249)","color":"rgb(60,
      64, 67)"}]}]'
    rich_content_json: '{"format":"slate"}'
    row: 38
    col: 0
    width: 24
    height: 3
  - name: " (5)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"h3","children":[{"text":"Contribution by baseline and marketing
      channels"}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 18
    col: 0
    width: 24
    height: 2
  - title: ROI vs effectiveness
    name: ROI vs effectiveness
    model: meridian_model
    explore: media_summary
    type: looker_scatter
    fields: [media_summary.channel, media_summary.avg_roi, media_summary.avg_effectiveness]
    filters:
      media_summary.distribution: posterior
      media_summary.channel: "-All Channels"
    sorts: [media_summary.channel]
    limit: 500
    column_limit: 50
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
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    color_application:
      collection_id: google
      palette_id: google-diverging-0
      options:
        steps: 5
    y_axes: [{label: '', orientation: bottom, series: [{axisId: Channel_0 - average_of_roi_first,
            id: Channel_0 - average_of_roi_first, name: Channel_0}, {axisId: Channel_1
              - average_of_roi_first, id: Channel_1 - average_of_roi_first, name: Channel_1},
          {axisId: Channel_2 - average_of_roi_first, id: Channel_2 - average_of_roi_first,
            name: Channel_2}, {axisId: Channel_3 - average_of_roi_first, id: Channel_3
              - average_of_roi_first, name: Channel_3}, {axisId: Channel_4 - average_of_roi_first,
            id: Channel_4 - average_of_roi_first, name: Channel_4}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: custom, tickDensityCustom: 100,
        type: linear}]
    size_by_field: media_summary.avg_roi
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hidden_series: []
    series_colors:
      average_of_effectiveness_value: "#4285F4"
    series_labels: {}
    swap_axes: false
    cluster_points: false
    quadrants_enabled: true
    quadrant_properties:
      '0':
        color: "#fce6e3"
        label: Quadrant 1
      '1':
        color: "#ebf2ff"
        label: Quadrant 2
      '2':
        color: "#fffee8"
        label: Quadrant 3
      '3':
        color: "#faefff"
        label: Quadrant 4
    custom_quadrant_point_x: 5
    custom_quadrant_point_y: 5
    custom_x_column: ''
    custom_y_column: ''
    custom_value_label_column: ''
    color_by_type: gradient
    toColor: ["#EA4335", "#4285F4", "#34A853", "#FBBC04", "#FA7B17", "#F8F8F8", "#202124",
      "#000000", "#174EA6", "#A50E0E", "#E37400", "#0D652D", "#D2E3FC", "#FAD2CF",
      "#FEEFC3", "#CEEAD6", "#F1F3F4", "#9AA0A6"]
    value_labels: false
    value_titles: false
    hidden_pivots: {}
    hidden_fields: []
    hidden_points_if_no: []
    defaults_version: 1
    interpolation: linear
    listen: {}
    row: 41
    col: 0
    width: 12
    height: 10
  - title: ROI by marginal ROI
    name: ROI by marginal ROI
    model: meridian_model
    explore: media_summary
    type: looker_scatter
    fields: [media_summary.channel, media_summary.avg_roi, media_summary.marginal_roi]
    filters:
      media_summary.distribution: posterior
      media_summary.channel: "-All Channels"
    sorts: [media_summary.channel]
    limit: 500
    column_limit: 50
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
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    color_application:
      collection_id: google
      palette_id: google-diverging-0
      options:
        steps: 5
    y_axes: [{label: '', orientation: bottom, series: [{axisId: Channel_0 - average_of_roi_first,
            id: Channel_0 - average_of_roi_first, name: Channel_0}, {axisId: Channel_1
              - average_of_roi_first, id: Channel_1 - average_of_roi_first, name: Channel_1},
          {axisId: Channel_2 - average_of_roi_first, id: Channel_2 - average_of_roi_first,
            name: Channel_2}, {axisId: Channel_3 - average_of_roi_first, id: Channel_3
              - average_of_roi_first, name: Channel_3}, {axisId: Channel_4 - average_of_roi_first,
            id: Channel_4 - average_of_roi_first, name: Channel_4}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: custom, tickDensityCustom: 100,
        type: linear}]
    size_by_field: media_summary.avg_roi
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hidden_series: []
    series_colors:
      average_of_effectiveness_value: "#4285F4"
    series_labels: {}
    swap_axes: false
    cluster_points: false
    quadrants_enabled: true
    quadrant_properties:
      '0':
        color: "#fce6e3"
        label: Quadrant 1
      '1':
        color: "#ebf2ff"
        label: Quadrant 2
      '2':
        color: "#fffee8"
        label: Quadrant 3
      '3':
        color: "#faefff"
        label: Quadrant 4
    custom_quadrant_point_x: 5
    custom_quadrant_point_y: 5
    custom_x_column: ''
    custom_y_column: ''
    custom_value_label_column: ''
    color_by_type: gradient
    toColor: ["#EA4335", "#4285F4", "#34A853", "#FBBC04", "#FA7B17", "#F8F8F8", "#202124",
      "#000000", "#174EA6", "#A50E0E", "#E37400", "#0D652D", "#D2E3FC", "#FAD2CF",
      "#FEEFC3", "#CEEAD6", "#F1F3F4", "#9AA0A6"]
    value_labels: false
    value_titles: false
    hidden_pivots: {}
    hidden_fields: []
    hidden_points_if_no: []
    defaults_version: 1
    interpolation: linear
    listen: {}
    row: 41
    col: 12
    width: 12
    height: 10
  - type: button
    name: button_965
    rich_content_json: '{"text":"Marketing Analysis","description":"","newTab":false,"alignment":"left","size":"large","style":"FILLED","color":"#1A73E8","href":"/dashboards/meridian_model::marketing_analysis"}'
    row: 0
    col: 0
    width: 5
    height: 2
  - type: button
    name: button_966
    rich_content_json: '{"text":"Setup","description":"","newTab":false,"alignment":"center","size":"large","style":"FILLED","color":"#12B5CB","href":"/dashboards/18"}'
    row: 0
    col: 5
    width: 3
    height: 2
  - type: button
    name: button_967
    rich_content_json: '{"text":"Optimization Results","description":"","newTab":false,"alignment":"left","size":"large","style":"FILLED","color":"#12B5CB","href":"/dashboards/meridian_model::optimization_results?Channel="}'
    row: 0
    col: 9
    width: 5
    height: 2
