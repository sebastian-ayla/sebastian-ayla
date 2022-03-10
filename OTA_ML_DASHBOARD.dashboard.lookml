- dashboard: otaml_machine_learning_on_live_iot_data_streams
  title: 'OTA-ML: Machine Learning on Live IoT Data Streams'
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  refresh: 1 second
  elements:
  - title: Devices With Zero Voltage
    name: Devices With Zero Voltage
    model: ota_ml
    explore: poc_ota_ml
    type: looker_map
    fields: [poc_ota_ml.oem_model, poc_ota_ml.dsn, poc_ota_ml.locationname, poc_ota_ml.propertyname,
      poc_ota_ml.value, poc_ota_ml.processtype, poc_ota_ml.numberofmessages, poc_ota_ml.window_start_time,
      poc_ota_ml.window_end_time, poc_ota_ml.topic, poc_ota_ml.latitude, poc_ota_ml.longitude,
      poc_ota_ml.timestamp]
    sorts: [poc_ota_ml.timestamp desc]
    limit: 500
    filter_expression: '  ${poc_ota_ml.processtype}="Outliers" AND ${poc_ota_ml.propertyname}="Voltage"'
    map_plot_mode: points
    heatmap_gridlines: true
    heatmap_gridlines_empty: true
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: satellite_streets
    map_position: custom
    map_scale_indicator: metric_imperial
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_view_names: true
    show_legend: true
    quantize_map_value_colors: true
    reverse_map_value_colors: true
    map_zoom: 3
    map_value_colors: ["#FF0000"]
    map_value_scale_clamp_min: 0
    map_value_scale_clamp_max: 120000
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
    limit_displayed_rows: false
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
    series_types: {}
    map: auto
    map_projection: ''
    quantize_colors: false
    listen: {}
    row: 7
    col: 0
    width: 24
    height: 8
  - title: 'Voltage Details: Min, Max, Diff, Variance, Outliers, Avg, AnomProb'
    name: 'Voltage Details: Min, Max, Diff, Variance, Outliers, Avg, AnomProb'
    model: ota_ml
    explore: poc_ota_ml
    type: looker_grid
    fields: [poc_ota_ml.timestamp, poc_ota_ml.oem_model, poc_ota_ml.dsn, poc_ota_ml.locationname,
      poc_ota_ml.propertyname, poc_ota_ml.processtype, poc_ota_ml.value, poc_ota_ml.window_start_time,
      poc_ota_ml.window_end_time, poc_ota_ml.numberofmessages]
    sorts: [poc_ota_ml.timestamp desc]
    limit: 1000
    filter_expression: (${poc_ota_ml.processtype}="Max" OR ${poc_ota_ml.processtype}="Min"  OR
      ${poc_ota_ml.processtype}="Outliers" OR ${poc_ota_ml.processtype}="Variance"
      OR ${poc_ota_ml.processtype}="Avg" OR ${poc_ota_ml.processtype}="Diff"  OR ${poc_ota_ml.processtype}="AnomProb")
      AND ${poc_ota_ml.propertyname}="Voltage"
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 80e60a97-c02b-4a41-aa05-83522ee2144b
      palette_id: 629b455f-662e-4854-a424-4f0c9d4bbdfb
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      poc_ota_ml.numberofmessages: Number of Messages in Window
    series_cell_visualizations:
      poc_ota_ml.value:
        is_active: false
    series_text_format:
      poc_ota_ml.value:
        bg_color: "#D5C679"
        bold: true
    header_background_color: "#c8ccb1"
    conditional_formatting: [{type: equal to, value: 0, background_color: "#B42F37",
        font_color: !!null '', color_application: {collection_id: 80e60a97-c02b-4a41-aa05-83522ee2144b,
          palette_id: 1353e25c-50e6-4d4d-9abc-4477189bd36d}, bold: false, italic: false,
        strikethrough: false, fields: [poc_ota_ml.value]}]
    series_value_format:
      poc_ota_ml.value:
        name: decimal_1
        decimals: '1'
        format_string: "#,##0.0"
        label: Decimals (1)
        label_prefix: Decimals
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    defaults_version: 1
    series_types: {}
    listen: {}
    row: 15
    col: 0
    width: 24
    height: 6
  - title: 'Power Details: Min, Max, Diff, Variance, Outliers, Avg, AnomProb'
    name: 'Power Details: Min, Max, Diff, Variance, Outliers, Avg, AnomProb'
    model: ota_ml
    explore: poc_ota_ml
    type: looker_grid
    fields: [poc_ota_ml.timestamp, poc_ota_ml.oem_model, poc_ota_ml.dsn, poc_ota_ml.locationname,
      poc_ota_ml.propertyname, poc_ota_ml.processtype, poc_ota_ml.value, poc_ota_ml.window_start_time,
      poc_ota_ml.window_end_time, poc_ota_ml.numberofmessages]
    sorts: [poc_ota_ml.timestamp desc]
    limit: 1000
    filter_expression: (${poc_ota_ml.processtype}="Max" OR ${poc_ota_ml.processtype}="Min"  OR
      ${poc_ota_ml.processtype}="Outliers" OR ${poc_ota_ml.processtype}="Variance"
      OR ${poc_ota_ml.processtype}="Avg" OR ${poc_ota_ml.processtype}="Diff" OR ${poc_ota_ml.processtype}="AnomProb")
      AND ${poc_ota_ml.propertyname}="Power"
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: aed851c8-b22d-4b01-8fff-4b02b91fe78d
      palette_id: c36094e3-d04d-4aa4-8ec7-bc9af9f851f4
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      poc_ota_ml.numberofmessages: Number of Messages in Window
    series_text_format:
      poc_ota_ml.value:
        bg_color: "#CCC54B"
        bold: true
    header_background_color: "#c8ccb1"
    conditional_formatting: [{type: equal to, value: 0, background_color: "#D14242",
        font_color: !!null '', color_application: {collection_id: aed851c8-b22d-4b01-8fff-4b02b91fe78d,
          palette_id: a77d2b8b-ee06-4086-8459-cfff9cccb2d2, options: {steps: 5, reverse: false}},
        bold: false, italic: false, strikethrough: false, fields: [poc_ota_ml.value]}]
    series_value_format:
      poc_ota_ml.value:
        name: decimal_1
        decimals: '1'
        format_string: "#,##0.0"
        label: Decimals (1)
        label_prefix: Decimals
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    defaults_version: 1
    series_types: {}
    listen: {}
    row: 21
    col: 0
    width: 24
    height: 7
  - title: 'Current Details: Min, Max, Diff, Variance, Outliers, Avg, AnomProb'
    name: 'Current Details: Min, Max, Diff, Variance, Outliers, Avg, AnomProb'
    model: ota_ml
    explore: poc_ota_ml
    type: looker_grid
    fields: [poc_ota_ml.timestamp, poc_ota_ml.oem_model, poc_ota_ml.dsn, poc_ota_ml.locationname,
      poc_ota_ml.propertyname, poc_ota_ml.processtype, poc_ota_ml.value, poc_ota_ml.window_start_time,
      poc_ota_ml.window_end_time, poc_ota_ml.numberofmessages]
    sorts: [poc_ota_ml.timestamp desc]
    limit: 500
    filter_expression: (${poc_ota_ml.processtype}="Max" OR ${poc_ota_ml.processtype}="Min"  OR
      ${poc_ota_ml.processtype}="Outliers" OR ${poc_ota_ml.processtype}="Variance"
      OR ${poc_ota_ml.processtype}="Avg" OR ${poc_ota_ml.processtype}="Diff" OR ${poc_ota_ml.processtype}="AnomProb")
      AND ${poc_ota_ml.propertyname}="Current"
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: aed851c8-b22d-4b01-8fff-4b02b91fe78d
      palette_id: c36094e3-d04d-4aa4-8ec7-bc9af9f851f4
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      poc_ota_ml.numberofmessages: Number of Messages in Window
    series_text_format:
      poc_ota_ml.value:
        bold: true
        bg_color: "#CCC54B"
    header_background_color: "#c8ccb1"
    conditional_formatting: [{type: equal to, value: 0, background_color: "#D14242",
        font_color: !!null '', color_application: {collection_id: aed851c8-b22d-4b01-8fff-4b02b91fe78d,
          palette_id: a77d2b8b-ee06-4086-8459-cfff9cccb2d2, options: {steps: 5, reverse: false}},
        bold: false, italic: false, strikethrough: false, fields: [poc_ota_ml.value]}]
    series_value_format:
      poc_ota_ml.value:
        name: decimal_1
        decimals: '1'
        format_string: "#,##0.0"
        label: Decimals (1)
        label_prefix: Decimals
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    defaults_version: 1
    series_types: {}
    listen: {}
    row: 28
    col: 0
    width: 24
    height: 7
  - title: Avg Current And Anomalies Per DSN
    name: Avg Current And Anomalies Per DSN
    model: ota_ml
    explore: poc_ota_ml
    type: looker_column
    fields: [poc_ota_ml.timestamp, poc_ota_ml.dsn, average_of_value_2]
    sorts: [poc_ota_ml.timestamp desc]
    limit: 500
    total: true
    dynamic_fields: [{measure: sum_of_value, based_on: poc_ota_ml.value, expression: '',
        label: Sum of Value, type: sum, _kind_hint: measure, _type_hint: number},
      {measure: average_of_value, based_on: poc_ota_ml.value, expression: '', label: Average
          of Value, type: average, _kind_hint: measure, _type_hint: number}, {category: dimension,
        description: '', label: Value Groups, value_format: !!null '', value_format_name: !!null '',
        calculation_type: group_by, dimension: value_groups, args: [poc_ota_ml.value,
          [!ruby/hash:ActiveSupport::HashWithIndifferentAccess {label: '', filter: ''}],
          !!null ''], _kind_hint: dimension, _type_hint: string}, {measure: average_of_value_2,
        based_on: poc_ota_ml.value, expression: '', label: Average of Value, type: average,
        _kind_hint: measure, _type_hint: number}]
    filter_expression: '${poc_ota_ml.propertyname}="Current" AND (${poc_ota_ml.processtype}="Avg"
      OR ${poc_ota_ml.processtype}="Outliers") '
    x_axis_gridlines: true
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
    point_style: circle_outline
    show_value_labels: true
    label_density: 25
    x_axis_scale: time
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: ed5756e2-1ba8-4233-97d2-d565e309c03b
      palette_id: ff31218a-4f9d-493c-ade2-22266f5934b8
      options:
        steps: 5
    y_axes: [{label: '', orientation: bottom, series: [{axisId: poc_ota_ml.timestamp,
            id: poc_ota_ml.timestamp, name: Timestamp}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, type: linear}]
    font_size: '12'
    label_value_format: "#.0"
    series_types: {}
    series_colors:
      average_of_value_2: "#404FC4"
    series_point_styles:
      poc_ota_ml.value: triangle
    reference_lines: [{reference_type: line, line_value: max, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#000000"}, {reference_type: line, line_value: mean, range_start: max,
        range_end: min, margin_top: deviation, margin_value: mean, margin_bottom: deviation,
        label_position: right, color: "#000000"}, {reference_type: line, line_value: median,
        range_start: max, range_end: min, margin_top: deviation, margin_value: mean,
        margin_bottom: deviation, label_position: right, color: "#000000"}]
    trend_lines: [{color: "#000000", label_position: right, order: 3, period: 7, regression_type: linear,
        series_index: 1, show_label: true}, {color: "#000000", label_position: right,
        order: 3, period: 7, regression_type: linear, series_index: 1, show_label: true},
      {color: "#000000", label_position: right, order: 3, period: 7, regression_type: linear,
        series_index: 1, show_label: true}]
    swap_axes: true
    show_null_points: false
    interpolation: monotone
    defaults_version: 1
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
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    groupBars: true
    labelSize: 10pt
    showLegend: true
    value_labels: legend
    label_type: labPer
    up_color: false
    down_color: false
    total_color: false
    truncate_column_names: false
    listen: {}
    row: 0
    col: 8
    width: 8
    height: 7
  - title: Avg Voltage And Anomalies Per DSN
    name: Avg Voltage And Anomalies Per DSN
    model: ota_ml
    explore: poc_ota_ml
    type: looker_scatter
    fields: [poc_ota_ml.timestamp, poc_ota_ml.dsn, average_of_value_2]
    sorts: [poc_ota_ml.timestamp desc]
    limit: 500
    total: true
    dynamic_fields: [{measure: sum_of_value, based_on: poc_ota_ml.value, expression: '',
        label: Sum of Value, type: sum, _kind_hint: measure, _type_hint: number},
      {measure: average_of_value, based_on: poc_ota_ml.value, expression: '', label: Average
          of Value, type: average, _kind_hint: measure, _type_hint: number}, {category: dimension,
        description: '', label: Value Groups, value_format: !!null '', value_format_name: !!null '',
        calculation_type: group_by, dimension: value_groups, args: [poc_ota_ml.value,
          [!ruby/hash:ActiveSupport::HashWithIndifferentAccess {label: '', filter: ''}],
          !!null ''], _kind_hint: dimension, _type_hint: string}, {measure: average_of_value_2,
        based_on: poc_ota_ml.value, expression: '', label: Average of Value, type: average,
        _kind_hint: measure, _type_hint: number}]
    filter_expression: ${poc_ota_ml.propertyname}="Voltage" AND (${poc_ota_ml.processtype}="Avg"
      OR ${poc_ota_ml.processtype}="Outliers")
    x_axis_gridlines: true
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
    point_style: circle_outline
    show_value_labels: true
    label_density: 25
    x_axis_scale: time
    y_axis_combined: true
    show_null_points: false
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: average_of_value_2,
            id: average_of_value_2, name: Average of Value}], showLabels: true, showValues: true,
        minValue: 100, unpinAxis: false, tickDensity: default, type: linear}]
    font_size: '12'
    label_value_format: "#"
    series_types:
      average_of_value_2: line
    series_colors:
      average_of_value_2: "#c42b4a"
    series_point_styles:
      poc_ota_ml.value: triangle
      average_of_value_2: auto
    reference_lines: [{reference_type: line, line_value: max, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#000000"}, {reference_type: line, line_value: mean, range_start: max,
        range_end: min, margin_top: deviation, margin_value: mean, margin_bottom: deviation,
        label_position: right, color: "#000000"}, {reference_type: line, line_value: median,
        range_start: max, range_end: min, margin_top: deviation, margin_value: mean,
        margin_bottom: deviation, label_position: right, color: "#000000"}, {reference_type: line,
        line_value: mean, range_start: max, range_end: min, margin_top: deviation,
        margin_value: mean, margin_bottom: deviation, label_position: right, color: "#000000"},
      {reference_type: line, line_value: mean, range_start: max, range_end: min, margin_top: deviation,
        margin_value: mean, margin_bottom: deviation, label_position: right, color: "#000000"}]
    trend_lines: [{color: "#000000", label_position: right, order: 3, period: 7, regression_type: linear,
        series_index: 1, show_label: true}, {color: "#000000", label_position: right,
        order: 3, period: 7, regression_type: linear, series_index: 1, show_label: true},
      {color: "#000000", label_position: right, order: 3, period: 7, regression_type: linear,
        series_index: 1, show_label: true}]
    swap_axes: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    interpolation: monotone
    defaults_version: 1
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
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    groupBars: true
    labelSize: 10pt
    showLegend: true
    value_labels: legend
    label_type: labPer
    up_color: false
    down_color: false
    total_color: false
    truncate_column_names: false
    listen: {}
    row: 0
    col: 16
    width: 8
    height: 7
  - title: Avg Power And Anomalies Per DSN
    name: Avg Power And Anomalies Per DSN
    model: ota_ml
    explore: poc_ota_ml
    type: looker_line
    fields: [poc_ota_ml.timestamp, poc_ota_ml.dsn, average_of_value_2]
    sorts: [poc_ota_ml.timestamp desc]
    limit: 500
    dynamic_fields: [{measure: sum_of_value, based_on: poc_ota_ml.value, expression: '',
        label: Sum of Value, type: sum, _kind_hint: measure, _type_hint: number},
      {measure: average_of_value, based_on: poc_ota_ml.value, expression: '', label: Average
          of Value, type: average, _kind_hint: measure, _type_hint: number}, {category: dimension,
        description: '', label: Value Groups, value_format: !!null '', value_format_name: !!null '',
        calculation_type: group_by, dimension: value_groups, args: [poc_ota_ml.value,
          [!ruby/hash:ActiveSupport::HashWithIndifferentAccess {label: '', filter: ''}],
          !!null ''], _kind_hint: dimension, _type_hint: string}, {measure: average_of_value_2,
        based_on: poc_ota_ml.value, expression: '', label: Average of Value, type: average,
        _kind_hint: measure, _type_hint: number}]
    filter_expression: ${poc_ota_ml.propertyname}="Power" AND (${poc_ota_ml.processtype}="Outliers"
      OR ${poc_ota_ml.processtype}="Avg")
    x_axis_gridlines: true
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
    point_style: circle_outline
    show_value_labels: true
    label_density: 25
    x_axis_scale: time
    y_axis_combined: true
    show_null_points: false
    interpolation: monotone
    color_application:
      collection_id: ed5756e2-1ba8-4233-97d2-d565e309c03b
      palette_id: ff31218a-4f9d-493c-ade2-22266f5934b8
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: average_of_value_2,
            id: average_of_value_2, name: Average of Value}], showLabels: true, showValues: true,
        minValue: 100, unpinAxis: false, tickDensity: default, type: linear}]
    font_size: '12'
    label_value_format: "#.0"
    series_types: {}
    series_colors:
      average_of_value_2: "#DB5E61"
    series_point_styles:
      poc_ota_ml.value: triangle
    reference_lines: [{reference_type: line, line_value: max, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#000000"}, {reference_type: line, line_value: mean, range_start: max,
        range_end: min, margin_top: deviation, margin_value: mean, margin_bottom: deviation,
        label_position: right, color: "#000000"}, {reference_type: line, line_value: median,
        range_start: max, range_end: min, margin_top: deviation, margin_value: mean,
        margin_bottom: deviation, label_position: right, color: "#000000"}, {reference_type: line,
        line_value: mean, range_start: max, range_end: min, margin_top: deviation,
        margin_value: mean, margin_bottom: deviation, label_position: right, color: "#000000"},
      {reference_type: line, line_value: mean, range_start: max, range_end: min, margin_top: deviation,
        margin_value: mean, margin_bottom: deviation, label_position: right, color: "#000000"}]
    trend_lines: [{color: "#000000", label_position: right, order: 3, period: 7, regression_type: linear,
        series_index: 1, show_label: true}, {color: "#000000", label_position: right,
        order: 3, period: 7, regression_type: linear, series_index: 1, show_label: true},
      {color: "#000000", label_position: right, order: 3, period: 7, regression_type: linear,
        series_index: 1, show_label: true}]
    swap_axes: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
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
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    groupBars: true
    labelSize: 10pt
    showLegend: true
    value_labels: legend
    label_type: labPer
    up_color: false
    down_color: false
    total_color: false
    truncate_column_names: false
    listen: {}
    row: 0
    col: 0
    width: 8
    height: 7
  filters:
  - name: Moved to Trash (Yes / No)
    title: Moved to Trash (Yes / No)
    type: field_filter
    default_value: 'No'
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_toggles
      display: inline
    model: system__activity
    explore: dashboard
    listens_to_filters: []
    field: dashboard.moved_to_trash
