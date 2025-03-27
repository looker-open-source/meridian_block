---
- dashboard: optimization_results
  title: Optimization results
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  filters_location_top: false
  preferred_slug: 8WDOOAyQi1RroCOBZFYK4d
  elements:
  - title: By Channel
    name: By Channel
    model: meridian_model
    explore: budget_optimization
    type: looker_grid
    fields: [budget_optimization.channel, budget_optimized.total_spend_op, budget_optimization.total_spend_non_op,
      budget_optimized.total_revenue_op, budget_optimization.total_revenue_non_op]
    filters:
      budget_optimization.metric: mean
    sorts: [budget_optimization.channel]
    limit: 500
    column_limit: 50
    total: true
    show_view_names: false
    show_row_numbers: false
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
    series_cell_visualizations:
      budget_optimized.total_spend:
        is_active: true
        palette:
          palette_id: google-diverging-0
          collection_id: google
      budget_optimization.total_spend:
        is_active: true
        palette:
          palette_id: google-diverging-0
          collection_id: google
      budget_optimized.total_revenue:
        is_active: true
        palette:
          palette_id: google-diverging-0
          collection_id: google
      budget_optimization.total_revenue:
        is_active: true
        palette:
          palette_id: google-diverging-0
          collection_id: google
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
    title_hidden: true
    listen: {}
    row: 6
    col: 0
    width: 24
    height: 6
  - title: Optimized Total Budget
    name: Optimized Total Budget
    model: meridian_model
    explore: budget_optimization
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [budget_optimized.total_spend_op, budget_optimization.total_spend_non_op]
    filters:
      budget_optimization.metric: mean
    sorts: [budget_optimized.total_spend desc]
    limit: 500
    column_limit: 50
    hidden_fields: [budget_optimized.total_revenue, budget_optimization.total_revenue]
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    font_size_main: '15'
    orientation: horizontal
    dividers: false
    show_comparison_budget_optimization.total_spend_non_op: true
    comparison_style_budget_optimization.total_spend_non_op: value_change
    comparison_show_label_budget_optimization.total_spend_non_op: true
    pos_is_bad_budget_optimization.total_spend_non_op: true
    comparison_label_placement_budget_optimization.total_spend_non_op: below
    comp_value_format_budget_optimization.total_spend_non_op: ''
    style_budget_optimized.total_spend: "#000000"
    show_title_budget_optimized.total_spend: true
    title_placement_budget_optimized.total_spend: above
    value_format_budget_optimized.total_spend: ''
    show_comparison_budget_optimization.total_spend: true
    comparison_style_budget_optimization.total_spend: value_change
    comparison_show_label_budget_optimization.total_spend: true
    pos_is_bad_budget_optimization.total_spend: true
    comparison_label_placement_budget_optimization.total_spend: below
    comp_value_format_budget_optimization.total_spend: ''
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    minimum_column_width: 75
    series_cell_visualizations:
      budget_optimized.total_spend:
        is_active: true
        palette:
          palette_id: google-diverging-0
          collection_id: google
      budget_optimization.total_spend:
        is_active: true
        palette:
          palette_id: google-diverging-0
          collection_id: google
      budget_optimized.total_revenue:
        is_active: true
      budget_optimization.total_revenue:
        is_active: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    defaults_version: 0
    hide_totals: false
    hide_row_totals: false
    title_hidden: true
    listen: {}
    row: 2
    col: 0
    width: 8
    height: 4
  - title: Optimized total outcome
    name: Optimized total outcome
    model: meridian_model
    explore: budget_optimization
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [budget_optimized.total_revenue_op, budget_optimization.total_revenue_non_op]
    filters:
      budget_optimization.metric: mean
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    font_size_main: '15'
    show_comparison_budget_optimization.total_revenue_non_op: true
    comparison_style_budget_optimization.total_revenue_non_op: value_change
    comparison_show_label_budget_optimization.total_revenue_non_op: true
    pos_is_bad_budget_optimization.total_revenue_non_op: false
    comparison_label_placement_budget_optimization.total_revenue_non_op: below
    comp_value_format_budget_optimization.total_revenue_non_op: ''
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 0
    title_hidden: true
    listen: {}
    row: 2
    col: 16
    width: 8
    height: 4
  - title: Optimized total ROI
    name: Optimized total ROI
    model: meridian_model
    explore: budget_optimization
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [budget_optimized.avg_roi_op, budget_optimization.avg_roi_non_op]
    filters:
      budget_optimization.metric: mean
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    font_size_main: '15'
    orientation: auto
    show_comparison_budget_optimization.avg_roi_non_op: true
    comparison_style_budget_optimization.avg_roi_non_op: value_change
    comparison_show_label_budget_optimization.avg_roi_non_op: true
    comparison_label_placement_budget_optimization.avg_roi_non_op: below
    comp_value_format_budget_optimization.avg_roi_non_op: ''
    style_budget_optimized.avg_roi: "#3A4245"
    show_title_budget_optimized.avg_roi: true
    title_override_budget_optimized.avg_roi: Optimized total ROI
    title_placement_budget_optimized.avg_roi: above
    value_format_budget_optimized.avg_roi: ''
    show_comparison_budget_optimization.avg_roi: true
    comparison_style_budget_optimization.avg_roi: value_change
    comparison_show_label_budget_optimization.avg_roi: true
    pos_is_bad_budget_optimization.avg_roi: false
    comparison_label_placement_budget_optimization.avg_roi: below
    comp_value_format_budget_optimization.avg_roi: ''
    style_budget_optimized.total_revenue: "#174EA6"
    title_override_budget_optimized.total_revenue: Optimized total outcome
    title_placement_budget_optimized.total_revenue: above
    show_comparison_budget_optimization.total_revenue: true
    comparison_style_budget_optimization.total_revenue: value_change
    comparison_show_label_budget_optimization.total_revenue: true
    pos_is_bad_budget_optimization.total_revenue: false
    comparison_label_placement_budget_optimization.total_revenue: below
    comp_value_format_budget_optimization.total_revenue: ''
    style_budget_optimized.total_spend: "#4285F4"
    show_title_budget_optimized.total_spend: true
    title_placement_budget_optimized.total_spend: above
    show_comparison_budget_optimization.total_spend: true
    comparison_style_budget_optimization.total_spend: value_change
    comparison_show_label_budget_optimization.total_spend: true
    comparison_label_placement_budget_optimization.total_spend: below
    comp_value_format_budget_optimization.total_spend: ''
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    minimum_column_width: 75
    series_cell_visualizations:
      budget_optimized.total_spend:
        is_active: true
        palette:
          palette_id: google-diverging-0
          collection_id: google
      budget_optimization.total_spend:
        is_active: true
        palette:
          palette_id: google-diverging-0
          collection_id: google
      budget_optimized.total_revenue:
        is_active: true
      budget_optimization.total_revenue:
        is_active: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    defaults_version: 0
    hide_totals: false
    hide_row_totals: false
    title_hidden: true
    listen: {}
    row: 2
    col: 8
    width: 8
    height: 4
  - type: button
    name: button_36
    rich_content_json: '{"text":"Optimization Results","description":"","newTab":false,"alignment":"left","size":"large","style":"FILLED","color":"#1A73E8","href":"/dashboards/meridian_model::optimization_results"}'
    row: 0
    col: 9
    width: 14
    height: 2
  - type: button
    name: button_37
    rich_content_json: '{"text":"Marketing Analysis","description":"","newTab":false,"alignment":"left","size":"large","style":"FILLED","color":"#12B5CB","href":"/dashboards/meridian_model::marketing_analysis"}'
    row: 0
    col: 0
    width: 5
    height: 2
  - type: button
    name: button_38
    rich_content_json: '{"text":"Setup","description":"","newTab":false,"alignment":"center","size":"large","style":"FILLED","color":"#12B5CB","href":"/dashboards/18"}'
    row: 0
    col: 5
    width: 3
    height: 2
  - name: ''
    type: text
    title_text: ''
    body_text: '[{"type":"h2","children":[{"text":"Shows how much the optimized channel
      performance and spend can affect your revenue.","fontSize":"16px","backgroundColor":"rgb(240,
      244, 249)","color":"rgb(60, 64, 67)"}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 14
    col: 0
    width: 24
    height: 2
  - name: " (2)"
    type: text
    title_text: ''
    body_text: |-
      --------------------

      ### Optimized budget allocation
    row: 12
    col: 0
    width: 24
    height: 2
  - title: Change in optimized spend for each channel​
    name: Change in optimized spend for each channel​
    model: meridian_model
    explore: budget_optimization
    type: looker_column
    fields: [budget_optimization.channel, budget_optimization.spend_difference_non_op]
    filters:
      budget_optimization.metric: mean
    sorts: [budget_optimization.channel, budget_optimization.spend_difference]
    limit: 5
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
    y_axes: [{label: Spend Change, orientation: left, series: [{axisId: budget_optimization.spend_difference,
            id: budget_optimization.spend_difference, name: Budget Change}], showLabels: true,
        showValues: true, unpinAxis: true, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors: {}
    label_color: [black]
    column_spacing_ratio: 0.6
    show_dropoff: false
    advanced_vis_config: |-
      {
        "chart": {
          "backgroundColor": "rgba(0, 0, 0, 0)",
          "inverted": false,
          "style": {
            "fontFamily": "inherit",
            "fontSize": "12px"
          },
          "type": "column"
        },
        "series": [
          {
            "name": "Budget Change",
            "color": "#4285f4",
            "id": "budget_optimization.spend_difference",
            "type": "column",
            "visible": true,
            "formatters": [
              {
                "select": "value < 0",
                "style": {
                  "color": "#FF0000"
                }
              }
            ]
          }
        ],
        "xAxis": {
          "type": "category"
        },
        "yAxis": [
          {
            "type": "linear"
          }
        ]
      }
    hidden_pivots: {}
    defaults_version: 1
    listen: {}
    row: 19
    col: 0
    width: 13
    height: 9
  - title: Optimized spend allocation
    name: Optimized spend allocation
    model: meridian_model
    explore: budget_optimization
    type: looker_pie
    fields: [budget_optimization.channel, budget_optimized.total_spend_op]
    filters:
      budget_optimization.metric: mean
    sorts: [budget_optimization.channel]
    limit: 500
    column_limit: 50
    value_labels: labels
    label_type: labPer
    inner_radius: 50
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      custom:
        id: a5c90241-1a2c-d4e5-4fa1-a5e06cffda72
        label: Custom
        type: continuous
        stops:
        - color: "#b9e3ff"
          offset: 0
        - color: "#1A73E8"
          offset: 100
      options:
        steps: 5
    series_colors: {}
    defaults_version: 1
    hidden_pivots: {}
    listen: {}
    row: 19
    col: 13
    width: 11
    height: 9
  - title: Budget spend per channel
    name: Budget spend per channel
    model: meridian_model
    explore: budget_optimization
    type: looker_column
    fields: [budget_optimization.channel, budget_optimization.total_spend_non_op,
      budget_optimized.total_spend_op]
    filters:
      budget_optimization.metric: mean
    sorts: [budget_optimization.channel desc]
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
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      custom:
        id: a5c90241-1a2c-d4e5-4fa1-a5e06cffda72
        label: Custom
        type: continuous
        stops:
        - color: "#b9e3ff"
          offset: 0
        - color: "#1A73E8"
          offset: 100
      options:
        steps: 5
    x_axis_zoom: true
    y_axis_zoom: true
    font_size: '10'
    series_colors: {}
    label_color: [black]
    column_spacing_ratio: 0.1
    column_group_spacing_ratio: 0.3
    value_labels: labels
    label_type: labPer
    inner_radius: 50
    defaults_version: 1
    listen: {}
    row: 28
    col: 0
    width: 12
    height: 9
  - title: Incremental revenue per channel
    name: Incremental revenue per channel
    model: meridian_model
    explore: budget_optimization
    type: looker_column
    fields: [budget_optimization.channel, budget_optimization.total_revenue_non_op,
      budget_optimized.total_revenue_op]
    filters:
      budget_optimization.metric: mean
    sorts: [budget_optimization.channel desc]
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
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      custom:
        id: a5c90241-1a2c-d4e5-4fa1-a5e06cffda72
        label: Custom
        type: continuous
        stops:
        - color: "#b9e3ff"
          offset: 0
        - color: "#1A73E8"
          offset: 100
      options:
        steps: 5
    x_axis_zoom: true
    y_axis_zoom: true
    font_size: '10'
    series_colors: {}
    label_color: [black]
    column_spacing_ratio: 0.1
    column_group_spacing_ratio: 0.3
    value_labels: labels
    label_type: labPer
    inner_radius: 50
    defaults_version: 1
    hidden_pivots: {}
    listen: {}
    row: 28
    col: 12
    width: 12
    height: 9
  - name: " (3)"
    type: text
    title_text: ''
    body_text: |-
      --------------------

      ### Optimization with response curves
    row: 37
    col: 0
    width: 24
    height: 2
  - name: " (Copy 2)"
    type: text
    title_text: " (Copy 2)"
    body_text: '[{"type":"h2","children":[{"text":"Shows the current and optimized
      spend levels on a channel. Compare response curves to identify less-saturated
      media channels for reallocation.","fontSize":"16px","backgroundColor":"rgb(240,
      244, 249)","color":"rgb(60, 64, 67)"}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 39
    col: 0
    width: 24
    height: 2
  - title: By Channel
    name: By Channel (2)
    model: meridian_model
    explore: budget_optimization
    type: looker_grid
    fields: [budget_optimization.channel, budget_optimized.total_spend_op, budget_optimization.spend_difference_non_op]
    filters:
      budget_optimization.metric: mean
    sorts: [budget_optimization.channel desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: true
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: center
    header_font_size: '25'
    rows_font_size: '15'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: [{}]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels: {}
    series_cell_visualizations:
      budget_optimized.total_spend:
        is_active: false
        palette:
          palette_id: google-diverging-0
          collection_id: google
      budget_optimization.total_spend:
        is_active: false
        palette:
          palette_id: google-diverging-0
          collection_id: google
      budget_optimized.total_revenue:
        is_active: true
      budget_optimization.total_revenue:
        is_active: true
    conditional_formatting: [{type: less than, value: 0, background_color: "#CEEAD6",
        font_color: "#0D652D", color_application: {collection_id: google, palette_id: google-diverging-0,
          options: {constraints: {min: {type: minimum}, mid: {type: number, value: 0},
              max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
        bold: true, italic: false, strikethrough: false, fields: [budget_optimization.spend_difference_non_op]},
      {type: greater than, value: 0, background_color: "#FAD2CF", font_color: "#A50E0E",
        color_application: {collection_id: google, palette_id: google-diverging-0,
          options: {constraints: {min: {type: minimum}, mid: {type: number, value: 0},
              max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
        bold: true, italic: false, strikethrough: false, fields: [budget_optimization.spend_difference_non_op]}]
    series_value_format:
      budget_optimized.total_spend_op:
        format_string: "$#,##0"
      budget_optimization.spend_difference_non_op:
        format_string: "$#,##0.00"
    font_size_main: '5'
    orientation: vertical
    style_budget_optimization.channel: "#3A4245"
    show_title_budget_optimization.channel: false
    title_placement_budget_optimization.channel: above
    value_format_budget_optimization.channel: ''
    style_budget_optimized.total_spend: "#000000"
    show_title_budget_optimized.total_spend: true
    title_placement_budget_optimized.total_spend: above
    value_format_budget_optimized.total_spend: ''
    show_comparison_budget_optimized.total_spend: false
    show_comparison_budget_optimization.total_spend: true
    comparison_style_budget_optimization.total_spend: value_change
    comparison_show_label_budget_optimization.total_spend: true
    pos_is_bad_budget_optimization.total_spend: false
    comparison_label_placement_budget_optimization.total_spend: below
    dividers: false
    hidden_fields: []
    hidden_points_if_no: []
    comp_value_format_budget_optimization.total_spend: ''
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
    overlay: true
    mapperOptions: {}
    title_hidden: true
    listen: {}
    row: 16
    col: 0
    width: 24
    height: 3
  - title: By Channel (Copy)
    name: By Channel (Copy)
    model: meridian_model
    explore: budget_optimization
    type: looker_grid
    fields: [budget_optimization.channel, budget_optimized.total_revenue_op, budget_optimization.revenue_difference_non_op]
    filters:
      budget_optimization.metric: mean
    sorts: [budget_optimization.channel desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: true
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: unstyled
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: center
    header_font_size: '25'
    rows_font_size: '15'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: [{}]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels: {}
    series_cell_visualizations:
      budget_optimized.total_spend:
        is_active: false
        palette:
          palette_id: google-diverging-0
          collection_id: google
      budget_optimization.total_spend:
        is_active: false
        palette:
          palette_id: google-diverging-0
          collection_id: google
      budget_optimized.total_revenue:
        is_active: false
      budget_optimization.total_revenue:
        is_active: true
    conditional_formatting: [{type: greater than, value: 0, background_color: "#CEEAD6",
        font_color: "#0D652D", color_application: {collection_id: google, palette_id: google-diverging-0,
          options: {constraints: {min: {type: minimum}, mid: {type: number, value: 0},
              max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
        bold: true, italic: false, strikethrough: false, fields: [budget_optimization.revenue_difference_non_op]},
      {type: less than, value: 0, background_color: "#FAD2CF", font_color: "#A50E0E",
        color_application: {collection_id: google, palette_id: google-diverging-0,
          options: {constraints: {min: {type: minimum}, mid: {type: number, value: 0},
              max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
        bold: true, italic: false, strikethrough: false, fields: [budget_optimization.revenue_difference_non_op]}]
    series_value_format:
      budget_optimized.total_revenue_op:
        format_string: "$#,##0"
      budget_optimization.revenue_difference_non_op:
        format_string: "$#,##0.00"
    font_size_main: '5'
    orientation: vertical
    style_budget_optimization.channel: "#3A4245"
    show_title_budget_optimization.channel: false
    title_placement_budget_optimization.channel: above
    value_format_budget_optimization.channel: ''
    style_budget_optimized.total_spend: "#000000"
    show_title_budget_optimized.total_spend: true
    title_placement_budget_optimized.total_spend: above
    value_format_budget_optimized.total_spend: ''
    show_comparison_budget_optimized.total_spend: false
    show_comparison_budget_optimization.total_spend: true
    comparison_style_budget_optimization.total_spend: value_change
    comparison_show_label_budget_optimization.total_spend: true
    pos_is_bad_budget_optimization.total_spend: false
    comparison_label_placement_budget_optimization.total_spend: below
    dividers: false
    hidden_fields: []
    hidden_points_if_no: []
    comp_value_format_budget_optimization.total_spend: ''
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
    overlay: true
    mapperOptions: {}
    title_hidden: true
    listen: {}
    row: 41
    col: 0
    width: 24
    height: 3
  - title: Response Curve
    name: Response Curve
    model: meridian_model
    explore: response_curve
    type: looker_line
    fields: [spend_table.spend, spend_table.total_io, response_curve.non_optimized,
      response_curve.optimized]
    filters:
      response_curve.channel: '"Channel_1"'
    sorts: [spend_table.spend]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
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
    show_null_points: false
    interpolation: linear
    x_axis_zoom: true
    y_axis_zoom: true
    series_types:
      response_curve.non_optimized: scatter
      response_curve.optimized: scatter
    series_point_styles:
      response_curve.non_optimized: square
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen: {}
    row: 44
    col: 1
    width: 23
    height: 13
  filters:
  - name: Channel
    title: Channel
    type: field_filter
    default_value: '"Channel_1"'
    allow_multiple_values: true
    required: true
    ui_config:
      type: dropdown_menu
      display: inline
    model: meridian_model
    explore: budget_optimization
    listens_to_filters: []
    field: budget_optimization.channel
