---
- dashboard: model_summary_results
  title: 'Model Summary Results '
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: J6DaTn7WfvRDXb8oiDqyHe
  elements:
  - title: 'Contribution by baseline and marketing channels '
    name: 'Contribution by baseline and marketing channels '
    model: meridian_model
    explore: media_summary
    type: looker_waterfall
    fields: [media_summary.channel, contribution_percentage]
    filters:
      media_summary.channel: ''
      media_summary.distribution: posterior
    sorts: [contribution_percentage]
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
    listen: {}
    row: 2
    col: 1
    width: 10
    height: 8
  - title: Spend and Revenue Contribution by Marketing Channel
    name: Spend and Revenue Contribution by Marketing Channel
    model: meridian_model
    explore: media_summary
    type: looker_column
    fields: [media_summary.channel, media_summary._spend, media_summary.contribution_first,
      media_summary.percent_revenue, average_of_percent_spend, average_of_roi_first]
    filters:
      media_summary.channel: "-All Channels"
      media_summary.distribution: posterior
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
    y_axes: [{label: '', orientation: left, series: [{axisId: media_summary.percent_revenue,
            id: media_summary.percent_revenue, name: Percent Revenue}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: average_of_percent_spend,
            id: average_of_percent_spend, name: Average of Percent Spend}, {axisId: average_of_roi_first,
            id: average_of_roi_first, name: Average of Roi First}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_types:
      average_of_roi_first: scatter
    series_labels:
      average_of_percent_spend: Percent Spend
      media_summary.percent_revenue: Percent Revenue
      average_of_roi_first: ROI
    reference_lines: []
    trend_lines: []
    defaults_version: 1
    hidden_fields: [media_summary.contribution_first, media_summary._spend]
    hidden_pivots: {}
    listen: {}
    row: 2
    col: 13
    width: 10
    height: 8
  - title: Contribution by baseline and marketing channels
    name: Contribution by baseline and marketing channels
    model: meridian_model
    explore: media_summary
    type: looker_donut_multiples
    fields: [media_summary.channel, media_summary._spend, media_summary.contribution_first,
      media_summary.percent_revenue, average_of_percent_spend, average_of_roi_first,
      average_of_contribution_first_2, media_summary.contribution_by_all_channels]
    filters:
      media_summary.channel: All Channels
      media_summary.distribution: posterior
    sorts: [media_summary.contribution_first]
    limit: 500
    column_limit: 50
    total: true
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
    show_value_labels: true
    font_size: 12
    hide_legend: false
    series_labels:
      average_of_contribution_first_2: Contribution All Channels
      media_summary.contribution_by_all_channels: Baseline
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: media_summary.percent_revenue,
            id: media_summary.percent_revenue, name: Percent Revenue}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: average_of_percent_spend,
            id: average_of_percent_spend, name: Average of Percent Spend}, {axisId: average_of_roi_first,
            id: average_of_roi_first, name: Average of Roi First}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
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
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    reference_lines: []
    trend_lines: []
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [media_summary._spend, average_of_roi_first, average_of_percent_spend,
      media_summary.contribution_first, media_summary.percent_revenue]
    hidden_pivots: {}
    value_labels: legend
    label_type: labPer
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    groupBars: true
    labelSize: 10pt
    showLegend: true
    listen: {}
    row: 10
    col: 1
    width: 10
    height: 9
  - title: ROI vs Effectiveness
    name: ROI vs Effectiveness
    model: meridian_model
    explore: media_summary
    type: looker_scatter
    fields: [media_summary.channel, roi, media_summary.effect_first]
    pivots: [media_summary.channel]
    filters:
      media_summary.distribution: posterior
      media_summary.channel: "-All Channels"
    sorts: [media_summary.channel, roi desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      based_on: media_summary.effect_first
      expression: ''
      label: Average of Effect First
      measure: average_of_effect_first
      type: average
    - category: measure
      expression: ''
      label: ROI
      based_on: media_summary.roi_first
      _kind_hint: measure
      measure: roi
      type: average
      _type_hint: number
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    y_axes: [{label: '', orientation: bottom, series: [{axisId: Channel_0 - average_of_roi_first,
            id: Channel_0 - average_of_roi_first, name: Channel_0}, {axisId: Channel_1
              - average_of_roi_first, id: Channel_1 - average_of_roi_first, name: Channel_1},
          {axisId: Channel_2 - average_of_roi_first, id: Channel_2 - average_of_roi_first,
            name: Channel_2}, {axisId: Channel_3 - average_of_roi_first, id: Channel_3
              - average_of_roi_first, name: Channel_3}, {axisId: Channel_4 - average_of_roi_first,
            id: Channel_4 - average_of_roi_first, name: Channel_4}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: custom, tickDensityCustom: 100,
        type: linear}]
    size_by_field: roi
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hidden_series: []
    series_labels: {}
    swap_axes: true
    cluster_points: false
    quadrants_enabled: false
    quadrant_properties:
      '0':
        color: ''
        label: Quadrant 1
      '1':
        color: ''
        label: Quadrant 2
      '2':
        color: ''
        label: Quadrant 3
      '3':
        color: ''
        label: Quadrant 4
    custom_quadrant_point_x: 5
    custom_quadrant_point_y: 5
    custom_x_column: ''
    custom_y_column: ''
    custom_value_label_column: ''
    hidden_pivots: {}
    hidden_fields: []
    hidden_points_if_no: []
    defaults_version: 1
    interpolation: linear
    listen: {}
    row: 21
    col: 0
    width: 11
    height: 9
  - title: ROI vs Marginal ROI
    name: ROI vs Marginal ROI
    model: meridian_model
    explore: media_summary
    type: looker_scatter
    fields: [media_summary.channel, roi, media_summary.mroi_first]
    pivots: [media_summary.channel]
    filters:
      media_summary.distribution: posterior
      media_summary.channel: "-All Channels"
    sorts: [media_summary.channel, roi desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      based_on: media_summary.effect_first
      expression: ''
      label: Average of Effect First
      measure: average_of_effect_first
      type: average
    - category: measure
      expression: ''
      label: ROI
      based_on: media_summary.roi_first
      _kind_hint: measure
      measure: roi
      type: average
      _type_hint: number
    - _kind_hint: measure
      _type_hint: number
      based_on: media_summary.mroi_first
      expression: ''
      label: Average of Mroi First
      measure: average_of_mroi_first
      type: average
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    y_axes: [{label: '', orientation: bottom, series: [{axisId: Channel_0 - average_of_roi_first,
            id: Channel_0 - average_of_roi_first, name: Channel_0}, {axisId: Channel_1
              - average_of_roi_first, id: Channel_1 - average_of_roi_first, name: Channel_1},
          {axisId: Channel_2 - average_of_roi_first, id: Channel_2 - average_of_roi_first,
            name: Channel_2}, {axisId: Channel_3 - average_of_roi_first, id: Channel_3
              - average_of_roi_first, name: Channel_3}, {axisId: Channel_4 - average_of_roi_first,
            id: Channel_4 - average_of_roi_first, name: Channel_4}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: custom, tickDensityCustom: 100,
        type: linear}]
    size_by_field: roi
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    series_labels: {}
    swap_axes: true
    cluster_points: false
    quadrants_enabled: false
    quadrant_properties:
      '0':
        color: ''
        label: Quadrant 1
      '1':
        color: ''
        label: Quadrant 2
      '2':
        color: ''
        label: Quadrant 3
      '3':
        color: ''
        label: Quadrant 4
    custom_quadrant_point_x: 5
    custom_quadrant_point_y: 5
    custom_x_column: ''
    custom_y_column: ''
    custom_value_label_column: ''
    hidden_pivots: {}
    hidden_fields: []
    hidden_points_if_no: []
    defaults_version: 1
    interpolation: linear
    listen: {}
    row: 21
    col: 11
    width: 12
    height: 9
  - title: ROI by channel with 90% credible interval
    name: ROI by channel with 90% credible interval
    model: meridian_model
    explore: media_summary
    type: looker_column
    fields: [media_summary.roi_first, media_summary.effect_first, media_summary.channel,
      roi]
    filters:
      media_summary.distribution: posterior
      media_summary.channel: "-All Channels"
    sorts: [media_summary.channel]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      based_on: media_summary.effect_first
      expression: ''
      label: Average of Effect First
      measure: average_of_effect_first
      type: average
    - category: measure
      expression: ''
      label: ROI
      based_on: media_summary.roi_first
      _kind_hint: measure
      measure: roi
      type: average
      _type_hint: number
    - _kind_hint: measure
      _type_hint: number
      based_on: media_summary.mroi_first
      expression: ''
      label: Average of Mroi First
      measure: average_of_mroi_first
      type: average
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
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
      collection_id: d754397b-2c05-4470-bbbb-05eb4c2b15cd
      palette_id: b0768e0d-03b8-4c12-9e30-9ada6affc357
      options:
        steps: 5
    y_axes: [{label: '', orientation: bottom, series: [{axisId: average_of_roi_first,
            id: average_of_roi_first, name: Average of Roi First}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 100,
        type: linear}]
    size_by_field: average_of_roi_first
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    series_colors: {}
    series_labels: {}
    swap_axes: true
    show_null_points: false
    cluster_points: false
    quadrants_enabled: false
    quadrant_properties:
      '0':
        color: ''
        label: Quadrant 1
      '1':
        color: ''
        label: Quadrant 2
      '2':
        color: ''
        label: Quadrant 3
      '3':
        color: ''
        label: Quadrant 4
    custom_quadrant_point_x: 5
    custom_quadrant_point_y: 5
    custom_x_column: average_of_effect_first
    custom_y_column: average_of_roi_first
    custom_value_label_column: ''
    hidden_pivots: {}
    hidden_fields: [media_summary.roi_first, media_summary.effect_first]
    hidden_points_if_no: []
    defaults_version: 1
    interpolation: linear
    listen: {}
    row: 30
    col: 0
    width: 11
    height: 9
  - title: CPIK by channel with 90% credible interval
    name: CPIK by channel with 90% credible interval
    model: meridian_model
    explore: media_summary
    type: looker_column
    fields: [media_summary.channel, cpik]
    filters:
      media_summary.distribution: posterior
      media_summary.channel: "-All Channels"
    sorts: [media_summary.channel]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      based_on: media_summary.effect_first
      expression: ''
      label: Average of Effect First
      measure: average_of_effect_first
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
      based_on: media_summary.mroi_first
      expression: ''
      label: Average of Mroi First
      measure: average_of_mroi_first
      type: average
    - _kind_hint: measure
      _type_hint: number
      based_on: media_summary.cpik_first
      expression: ''
      label: Average of Cpik First
      measure: average_of_cpik_first
      type: average
    - _kind_hint: measure
      _type_hint: number
      based_on: media_summary.cpik_second
      expression: ''
      label: Average of Cpik Second
      measure: average_of_cpik_second
      type: average
    - _kind_hint: measure
      _type_hint: number
      based_on: media_summary.contribution_third
      expression: ''
      label: Average of Contribution Third
      measure: average_of_contribution_third
      type: average
    - category: measure
      expression: ''
      label: CPIK
      based_on: media_summary.cpik_third
      _kind_hint: measure
      measure: cpik
      type: average
      _type_hint: number
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
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
      collection_id: d754397b-2c05-4470-bbbb-05eb4c2b15cd
      palette_id: b0768e0d-03b8-4c12-9e30-9ada6affc357
      options:
        steps: 5
    y_axes: [{label: '', orientation: bottom, series: [{axisId: average_of_roi_first,
            id: average_of_roi_first, name: Average of Roi First}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 100,
        type: linear}]
    size_by_field: average_of_roi_first
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    series_colors: {}
    series_labels: {}
    swap_axes: true
    show_null_points: false
    cluster_points: false
    quadrants_enabled: false
    quadrant_properties:
      '0':
        color: ''
        label: Quadrant 1
      '1':
        color: ''
        label: Quadrant 2
      '2':
        color: ''
        label: Quadrant 3
      '3':
        color: ''
        label: Quadrant 4
    custom_quadrant_point_x: 5
    custom_quadrant_point_y: 5
    custom_x_column: average_of_effect_first
    custom_y_column: average_of_roi_first
    custom_value_label_column: ''
    hidden_pivots: {}
    hidden_fields: []
    hidden_points_if_no: []
    defaults_version: 1
    interpolation: linear
    listen: {}
    row: 30
    col: 11
    width: 12
    height: 9
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ___________________________________________________________________________
    body_text: ''
    row: 39
    col: 0
    width: 24
    height: 2
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ______________________________________________________________________
    body_text: ''
    row: 19
    col: 0
    width: 24
    height: 2
  - title: Resp
    name: Resp
    model: meridian_model
    explore: response_curves_data
    type: looker_scatter
    fields: [response_curves_data.channel, incremental_outcome, response_curves_data.spend]
    pivots: [response_curves_data.channel]
    sorts: [response_curves_data.channel, incremental_outcome 0]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression: ''
      label: Incremental Outcome
      based_on: response_curves_data.incremental_outcome
      _kind_hint: measure
      measure: incremental_outcome
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
    legend_position: right
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    y_axes: [{label: '', orientation: left, series: [{axisId: average_of_incremental_outcome,
            id: Channel_0 - average_of_incremental_outcome, name: Channel_0}, {axisId: average_of_incremental_outcome,
            id: Channel_1 - average_of_incremental_outcome, name: Channel_1}, {axisId: average_of_incremental_outcome,
            id: Channel_2 - average_of_incremental_outcome, name: Channel_2}, {axisId: average_of_incremental_outcome,
            id: Channel_3 - average_of_incremental_outcome, name: Channel_3}, {axisId: average_of_incremental_outcome,
            id: Channel_4 - average_of_incremental_outcome, name: Channel_4}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    size_by_field: ''
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hidden_series: []
    hide_legend: false
    cluster_points: false
    quadrants_enabled: false
    quadrant_properties:
      '0':
        color: ''
        label: Quadrant 1
      '1':
        color: ''
        label: Quadrant 2
      '2':
        color: ''
        label: Quadrant 3
      '3':
        color: ''
        label: Quadrant 4
    custom_quadrant_point_x: 5
    custom_quadrant_point_y: 5
    custom_x_column: ''
    custom_y_column: ''
    custom_value_label_column: ''
    defaults_version: 1
    hidden_pivots: {}
    interpolation: linear
    listen: {}
    row: 41
    col: 6
    width: 12
    height: 11
  - title: Response Curves
    name: Response Curves
    model: meridian_model
    explore: response_curves_data
    type: looker_line
    fields: [ranges, incremental_outcome, response_curves_data.channel]
    pivots: [response_curves_data.channel]
    sorts: [response_curves_data.channel, ranges]
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression: ''
      label: Incremental Outcome
      based_on: response_curves_data.incremental_outcome
      _kind_hint: measure
      measure: incremental_outcome
      type: average
      _type_hint: number
    - category: dimension
      description: ''
      label: ranges
      value_format:
      value_format_name:
      calculation_type: bin
      dimension: ranges
      args:
      - response_curves_data.spend
      - '8000000'
      - '0'
      - '163900080'
      -
      - classic
      _kind_hint: dimension
      _type_hint: string
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
    legend_position: right
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: average_of_incremental_outcome,
            id: Channel_0 - average_of_incremental_outcome, name: Channel_0}, {axisId: average_of_incremental_outcome,
            id: Channel_1 - average_of_incremental_outcome, name: Channel_1}, {axisId: average_of_incremental_outcome,
            id: Channel_2 - average_of_incremental_outcome, name: Channel_2}, {axisId: average_of_incremental_outcome,
            id: Channel_3 - average_of_incremental_outcome, name: Channel_3}, {axisId: average_of_incremental_outcome,
            id: Channel_4 - average_of_incremental_outcome, name: Channel_4}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    size_by_field: ''
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hidden_series: []
    hide_legend: false
    series_point_styles:
      Channel_4 - average_of_incremental_outcome: auto
    cluster_points: false
    quadrants_enabled: false
    quadrant_properties:
      '0':
        color: ''
        label: Quadrant 1
      '1':
        color: ''
        label: Quadrant 2
      '2':
        color: ''
        label: Quadrant 3
      '3':
        color: ''
        label: Quadrant 4
    custom_quadrant_point_x: 5
    custom_quadrant_point_y: 5
    custom_x_column: ''
    custom_y_column: ''
    custom_value_label_column: ''
    defaults_version: 1
    hidden_pivots: {}
    hidden_fields: []
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen: {}
    row: 52
    col: 4
    width: 17
    height: 14
  - name: ' '
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <div style="border-bottom: solid 1px #4285F4;">

      <nav style="font-size: 18px; padding: 5px 10px 0 10px; height: 60px">

      <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="/dashboards/meridian_model::model_fit"> Model Fit and Diagnostics </a>

      <a style="padding: 5px 15px; border-top: solid 1px #4285F4; border-left: solid 1px #4285F4; border-right: solid 1px #4285F4; border-radius: 5px 5px 0 0; float: left; line-height: 40px; font-weight: bold; background-color: #eaf1fe;" href="/dashboards/meridian_model::model_summary_results" > Model Summary Results </a>

      <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="/dashboards/meridian_model::budget_planner_and_scenario_optimizer"> Budget Optimization </a>

      </nav>

      </div>
    row: 0
    col: 0
    width: 24
    height: 2
