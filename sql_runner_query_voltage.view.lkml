view: sql_runner_query_voltage {
  derived_table: {
    sql: SELECT distinct timestamp,
          poc_ota_ml.OEM_MODEL  AS poc_ota_ml_oem_model,
          poc_ota_ml.DSN  AS poc_ota_ml_dsn,
          poc_ota_ml.locationname  AS poc_ota_ml_locationname,
          poc_ota_ml.Propertyname  AS poc_ota_ml_propertyname,
          poc_ota_ml.Value  AS poc_ota_ml_value,
          poc_ota_ml.Processtype  AS poc_ota_ml_processtype,
          windowstarttime, windowendtime
      FROM `ota_ml.POC_OTA_ML`
           AS poc_ota_ml
      where poc_ota_ml.Processtype ='Max' and Propertyname='Voltage'
      order by Value desc
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: timestamp {
    type: string
    sql: ${TABLE}.timestamp ;;
  }

  dimension: poc_ota_ml_oem_model {
    type: string
    sql: ${TABLE}.poc_ota_ml_oem_model ;;
  }

  dimension: poc_ota_ml_dsn {
    type: string
    sql: ${TABLE}.poc_ota_ml_dsn ;;
  }

  dimension: poc_ota_ml_locationname {
    type: string
    sql: ${TABLE}.poc_ota_ml_locationname ;;
  }

  dimension: poc_ota_ml_propertyname {
    type: string
    sql: ${TABLE}.poc_ota_ml_propertyname ;;
  }

  dimension: poc_ota_ml_value {
    type: number
    sql: ${TABLE}.poc_ota_ml_value ;;
  }

  dimension: poc_ota_ml_processtype {
    type: string
    sql: ${TABLE}.poc_ota_ml_processtype ;;
  }

  dimension: windowstarttime {
    type: string
    sql: ${TABLE}.windowstarttime ;;
  }

  dimension: windowendtime {
    type: string
    sql: ${TABLE}.windowendtime ;;
  }

  set: detail {
    fields: [
      timestamp,
      poc_ota_ml_oem_model,
      poc_ota_ml_dsn,
      poc_ota_ml_locationname,
      poc_ota_ml_propertyname,
      poc_ota_ml_value,
      poc_ota_ml_processtype,
      windowstarttime,
      windowendtime
    ]
  }
}
