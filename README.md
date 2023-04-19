Open source Custom Vis Rotated Labels using Amchart.js:

https://www.amcharts.com

<img width="1241" alt="Screen Shot 2023-04-19 at 3 25 46 PM" src="https://user-images.githubusercontent.com/114446653/233179443-a2ea7136-7b73-46f7-9206-505c5927b75a.png">


To run locally, download the repo, then npm i, npm run build, and npm start.

Add the appropriate parameters to your manifest file in Looker. Something like this:

project_name: “custom-vis-rotated-labels”

visualization: {
id: “custom-vis-rotated-labels”
label: “Custom Vis Rotated Labels”
url: “https://localhost:8080/bundle.js”

dependencies: [
“https://www.amcharts.com/lib/4/core.js”,
“https://www.amcharts.com/lib/4/charts.js”,
“https://www.amcharts.com/lib/4/themes/animated.js”
]

}

Then commit and deploy changes to see the visual displayed in Looker visualization options.
