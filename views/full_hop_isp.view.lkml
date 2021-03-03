view: full_hop_isp {
  sql_table_name: `zlong_trial.full_Hop_ISP`
    ;;

  dimension: client_ip {
    type: string
    sql: ${TABLE}.ClientIP ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: delay0 {
    type: string
    sql: ${TABLE}.Delay0 ;;
  }

  dimension: delay1 {
    type: string
    sql: ${TABLE}.Delay1 ;;
  }

  dimension: delay_gcp {
    type: string
    sql: ${TABLE}.Delay_gcp ;;
  }

  dimension: end_ip {
    type: string
    sql: ${TABLE}.end_ip ;;
  }

  dimension: hop0 {
    type: string
    sql: ${TABLE}.Hop0 ;;
  }

  dimension: hop1 {
    type: string
    sql: ${TABLE}.Hop1 ;;
  }

  dimension: hop_gcp {
    type: string
    sql: ${TABLE}.Hop_gcp ;;
  }

  dimension: insert_id {
    type: string
    sql: ${TABLE}.InsertID ;;
  }

  dimension: isp {
    type: string
    sql: ${TABLE}.ISP ;;
  }

  dimension: start_ip {
    type: string
    sql: ${TABLE}.start_ip ;;
  }

  dimension: time {
    type: string
    sql: ${TABLE}.Time ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
