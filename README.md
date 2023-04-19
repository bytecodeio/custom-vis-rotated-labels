Open source Bar Chart Drag and  Drop  using Amchart.js:

https://www.amcharts.com

<img width="1372" alt="Screen Shot 2023-04-18 at 8 47 54 AM" src="https://user-images.githubusercontent.com/114446653/232784012-60631bb8-8f04-4b77-bea6-0c2d2ced67b9.png">


To run locally, download the repo, then npm i, npm run build, and npm start.

Add the appropriate parameters to your manifest file in Looker. Something like this:

project_name: “custom-bar-drag-and-drop”

visualization: {
id: “custom-bar-drag-and-drop”
label: “Drag and Drop amCharts”
url: “https://localhost:8080/bundle.js”

dependencies: [
“https://www.amcharts.com/lib/4/core.js”,
“https://www.amcharts.com/lib/4/charts.js”,
“https://www.amcharts.com/lib/4/themes/animated.js”
]

}

Then commit and deploy changes to see the visual displayed in Looker visualization options.
