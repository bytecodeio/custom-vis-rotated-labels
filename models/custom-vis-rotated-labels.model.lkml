# Define the database connection to be used for this model.
connection: "applications_demo"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: custom-vis-rotated-labels_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: custom-vis-rotated-labels_datagroup
