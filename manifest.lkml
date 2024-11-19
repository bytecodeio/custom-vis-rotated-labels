project_name: "custom-vis-rotated-labels"



visualization: {
  id: "custom-vis-rotated-labels"
  label: "Custom Vis Rotated Labels amCharts"


  dependencies: [

    "https://cdn.amcharts.com/lib/5/index.js",
    "https://cdn.amcharts.com/lib/5/xy.js",
    "https://cdn.amcharts.com/lib/5/themes/Animated.js"
  ]

  file: "src/customVis.js"

}




visualization: {

  id: "custom-vis-dev"
  label: "Custom Vis Dev"
  url: "https://localhost:8080/bundle.js"
}



visualization: {

  id: "umg"
  label: "UMG"
  #url: "https://localhost:8080/bundle.js"
  file: "umg/bundle.js"
}



# visualization: {
#   id: "currency"
#   label: "Currency Column Chart"
#   file: "column.js"
# }

# visualization: {
#   id: "currency-line"
#   label: "Currency Line Chart"
#   file: "line-bundle.js"
# }


# visualization: {
#   id: "currency-scatter"
#   label: "Currency Scatter Chart"
#   file: "scatter.js"
# }



visualization: {
  id: "kpi_vis"
  label: "2024 Custom KPI"

  file: "custom-kpi.js"
}


visualization: {
  id: "table_vis"
  label: "2024 Custom Table"

  file: "table.js"
}


# visualization: {
#   id: "donut_vis_2023"
#   label: "Custom Donut - 2023"

#   file: "donut.js"

# }

visualization: {
  id: "custom_viz_dev_jng"
  label: "Custom Viz Dev JNg"

  file: "bundle_jng.js"

}


visualization: {
  id: "table2"
  label: "Zen Table"

  file: "zen-tab.js"
}



visualization: {
  id: "bars"
  label: "Example for Ross"

  file: "bars-bundle.js"

}


visualization: {
  id: "bars-table"
  label: "Table with Progress Bars"

  file: "bars-table.js"

}


visualization: {
  id: "venn"
  label: "Venn Diagram"
  file: "venn-bundle.js"

}



visualization: {
  id: "gantt"
  label: "Gantt Chart"
  file: "ganttD3.js"

}


visualization: {
  id: "table-custom"
  label: "Adjutable Widths Table"
  file: "table-custom.js"

}
