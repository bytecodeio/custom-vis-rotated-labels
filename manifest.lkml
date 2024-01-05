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

  id:"zen-table"
  label:"Custom Table for Zendesk"
  # url: "https://localhost:8080/bundle.js"
  file: "zen-table.js"

}


visualization: {

  id:"zen"
  label:"Custom KPI for Zendesk"
  # url: "https://localhost:8080/bundle.js"
  file: "zen-kpi.js"

}


visualization: {

  id: "custom-vis-dev"
  label: "Custom Vis Dev"
  url: "https://localhost:8080/bundle.js"
}


visualization: {
  id: "currency"
  label: "Currency Column Chart"
  file: "column.js"
}

visualization: {
  id: "currency-line"
  label: "Currency Line Chart"
  file: "line-bundle.js"
}


visualization: {
  id: "currency-scatter"
  label: "Currency Scatter Chart"
  file: "scatter.js"
}




visualization: {
  id: "table_vis"
  label: "Custom Table with Pagination"

  file: "custom_table.js"
}


visualization: {
  id: "donut_vis_2023"
  label: "Custom Donut - 2023"

  file: "donut.js"

}
