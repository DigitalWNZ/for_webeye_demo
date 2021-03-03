view: ping_stat_ip {
  sql_table_name: `zlong_trial.ping_stat_ip`
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

  dimension: end_ip {
    type: string
    sql: ${TABLE}.end_ip ;;
  }

  dimension: isp {
    type: string
    sql: ${TABLE}.ISP ;;
  }

  dimension: pert_00 {
    type: number
    sql: ${TABLE}.pert_00 ;;
  }

  dimension: pert_10 {
    type: number
    sql: ${TABLE}.pert_10 ;;
  }

  dimension: pert_100 {
    type: number
    sql: ${TABLE}.pert_100 ;;
  }

  dimension: pert_20 {
    type: number
    sql: ${TABLE}.pert_20 ;;
  }

  dimension: pert_30 {
    type: number
    sql: ${TABLE}.pert_30 ;;
  }

  dimension: pert_40 {
    type: number
    sql: ${TABLE}.pert_40 ;;
  }

  dimension: pert_50 {
    type: number
    sql: ${TABLE}.pert_50 ;;
  }

  dimension: pert_60 {
    type: number
    sql: ${TABLE}.pert_60 ;;
  }

  dimension: pert_70 {
    type: number
    sql: ${TABLE}.pert_70 ;;
  }

  dimension: pert_80 {
    type: number
    sql: ${TABLE}.pert_80 ;;
  }

  dimension: pert_90 {
    type: number
    sql: ${TABLE}.pert_90 ;;
  }

  dimension: start_ip {
    type: string
    sql: ${TABLE}.start_ip ;;
  }

  dimension: sum_lost {
    type: number
    sql: ${TABLE}.sum_lost ;;
  }

  dimension: sum_total {
    type: number
    sql: ${TABLE}.sum_total ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
