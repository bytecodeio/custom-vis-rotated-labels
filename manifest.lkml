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
  id: "currency"
  label: "Currency Column Chart"
  file: "column-bundle.js"
}

visualization: {
  id: "currency-line"
  label: "Currency Line Chart"
  file: "line-bundle.js"
}


visualization: {
  id: "currency-scatter"
  label: "Currency Scatter Chart"
  file: "scatter-bundle.js"
}




visualization: {
  id: "table_vis"
  label: "Custom Table"

  file: "custom_table_for_broker.js"
}


visualization: {
  id: "donut_vis_2023"
  label: "Custom Donut - 2023"

  file: "donut.js"
}
