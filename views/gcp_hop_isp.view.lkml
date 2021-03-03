view: gcp_hop_isp {
  sql_table_name: `zlong_trial.gcp_Hop_ISP`
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

  dimension: delay_gcp {
    type: string
    sql: ${TABLE}.Delay_gcp ;;
  }

  dimension: end_ip {
    type: string
    sql: ${TABLE}.end_ip ;;
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

  measure: count {
    type: count
    drill_fields: []
  }
}
