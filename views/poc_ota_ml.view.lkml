# The name of this view in Looker is "Poc Ota Ml"
view: poc_ota_ml {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ota_ml.POC_OTA_ML`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Customer" in Explore.
  dimension: locationname {
    map_layer_name: countries
    sql: ${TABLE}.locationname ;;
  }

  dimension: customer {
    type: string
    sql: ${TABLE}.Customer ;;
  }

  dimension: displayname {
    type: string
    sql: ${TABLE}.Displayname ;;
  }

  dimension: dsn {
    type: string
    sql: ${TABLE}.DSN ;;
  }

  dimension: kafkakey {
    type: string
    sql: ${TABLE}.Kafkakey ;;
  }

  dimension: latitude {
    type: string
    sql: ${TABLE}.Latitude ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}.Locationname ;;
  }

  dimension: longitude {
    type: string
    sql: ${TABLE}.Longitude ;;
  }

  dimension: maintopic {
    type: string
    sql: ${TABLE}.Maintopic ;;
  }

  dimension: numberofmessages {
    type: number
    sql: ${TABLE}.Numberofmessages ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_numberofmessages {
    type: sum
    sql: ${numberofmessages} ;;
  }

  measure: average_numberofmessages {
    type: average
    sql: ${numberofmessages} ;;
  }

  dimension: oem_id {
    type: string
    sql: ${TABLE}.OEM_ID ;;
  }

  dimension: oem_model {
    type: string
    sql: ${TABLE}.OEM_MODEL ;;
  }

  dimension: processtype {
    type: string
    sql: ${TABLE}.Processtype ;;
  }

  dimension: propertyname {
    type: string
    sql: ${TABLE}.Propertyname ;;
  }

  dimension: timestamp {
    type: string
    sql: ${TABLE}.Timestamp ;;
  }

  dimension: topic {
    type: string
    sql: ${TABLE}.Topic ;;
  }

  dimension: unix_end_time {
    type: number
    sql: ${TABLE}.UnixEndTime ;;
  }

  dimension: unix_start_time {
    type: number
    sql: ${TABLE}.UnixStartTime ;;
  }

  dimension: unixtime {
    type: number
    sql: ${TABLE}.Unixtime ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.Value ;;
  }

  dimension: window_end_time {
    type: string
    sql: ${TABLE}.WindowEndTime ;;
  }

  dimension: window_start_time {
    type: string
    sql: ${TABLE}.WindowStartTime ;;
  }


}
