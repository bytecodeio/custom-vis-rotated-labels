const visObject = {

create: function (element, config) {},

  updateAsync: function(data, element, config, queryResponse, details, doneRendering){


    element.innerHTML = "";
    element.innerHTML = `
      <style>
       @import url(https://fonts.googleapis.com/css?family=Open+Sans);

         body{
          font-family: 'Open Sans',serif;
          font-weight:bold
         }
        #chartdiv {
          height:100%;
          min-height: 500px;
          width: 100%;

        }

      </style>
    `;


var visContainer = document.createElement('div');
visContainer.setAttribute("id", "chartdiv");
element.append(visContainer)

//am4core.addLicense("ch-custom-attribution");






//define conditions of data

    const hasOneDimensions = queryResponse.fields.dimensions.length === 1;
    const hasOneMeasure = queryResponse.fields.measures.length === 1;
    // const isMeasureNumeric = queryResponse.fields.measures[0]?.is_numeric;


//write error for unmet conditions

    if (!hasOneDimensions || !hasOneMeasure ) {

      element.innerHTML = "<p style='text-align:center;font-size:1.25em;padding-top:2em;font-family: 'Open Sans',serif;'>Incompatible Data. This chart requires <em>one dimension</em> and <em>one measure</em>.<br>For example, name and count.</p>";

    }



    formattedData = []



    const grouping_dim = queryResponse.fields.dimensions[0].name;

    const plot_measure = queryResponse.fields.measures[0].name;

    console.log(grouping_dim)
    console.log(plot_measure)


    data.forEach(function(data) {
      formattedData.push({

        country: data[grouping_dim]["value"],
        value: data[plot_measure]["value"],

      });



    });




    am5.ready(function() {

    var root = am5.Root.new("chartdiv");


    root.setThemes([
      am5themes_Animated.new(root)
    ]);



    var chart = root.container.children.push(am5xy.XYChart.new(root, {
      panX: true,
      panY: true,
      wheelX: "panX",
      wheelY: "zoomX",
      pinchZoomX: true
    }));


    var cursor = chart.set("cursor", am5xy.XYCursor.new(root, {}));
    cursor.lineY.set("visible", false);



    var xRenderer = am5xy.AxisRendererX.new(root, { minGridDistance: 30 });
    xRenderer.labels.template.setAll({
      rotation: -90,
      centerY: am5.p50,
      centerX: am5.p100,
      paddingRight: 15
    });

    xRenderer.grid.template.setAll({
      location: 1
    })

    var xAxis = chart.xAxes.push(am5xy.CategoryAxis.new(root, {
      maxDeviation: 0.3,
      categoryField: "country",
      renderer: xRenderer,
      tooltip: am5.Tooltip.new(root, {})
    }));

    var yAxis = chart.yAxes.push(am5xy.ValueAxis.new(root, {
      maxDeviation: 0.3,
      renderer: am5xy.AxisRendererY.new(root, {
        strokeOpacity: 0.1
      })
    }));



    var series = chart.series.push(am5xy.ColumnSeries.new(root, {
      name: "Series 1",
      xAxis: xAxis,
      yAxis: yAxis,
      valueYField: "value",
      sequencedInterpolation: true,
      categoryXField: "country",
      tooltip: am5.Tooltip.new(root, {
        labelText: "{valueY}"
      })
    }));

    series.columns.template.setAll({ cornerRadiusTL: 5, cornerRadiusTR: 5, strokeOpacity: 0 });
    series.columns.template.adapters.add("fill", function(fill, target) {
      return chart.get("colors").getIndex(series.columns.indexOf(target));
    });

    series.columns.template.adapters.add("stroke", function(stroke, target) {
      return chart.get("colors").getIndex(series.columns.indexOf(target));
    });




    xAxis.data.setAll(formattedData);
    series.data.setAll(formattedData);


    series.appear(1000);
    chart.appear(1000, 100);

    });

doneRendering()
  }
};

looker.plugins.visualizations.add(visObject);
