view: lz_net_dig_test {
  sql_table_name: `zlong_trial.lzNetDigTest`
    ;;

  dimension: average {
    type: number
    sql: ${TABLE}.Average ;;
  }

  dimension: client_ip {
    type: string
    sql: ${TABLE}.ClientIP ;;
  }

  dimension: device_id {
    type: string
    sql: ${TABLE}.DeviceID ;;
  }

  dimension: diagtype {
    type: number
    sql: ${TABLE}.Diagtype ;;
  }

  dimension: error {
    type: string
    sql: ${TABLE}.Error ;;
  }

  dimension: insert_id {
    type: string
    sql: ${TABLE}.InsertID ;;
  }

  dimension: isp {
    type: string
    sql: ${TABLE}.ISP ;;
  }

  dimension: lost {
    type: number
    sql: ${TABLE}.Lost ;;
  }

  dimension: max {
    type: number
    sql: ${TABLE}.Max ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: net_type {
    type: number
    sql: ${TABLE}.Net_type ;;
  }

  dimension: platform {
    type: number
    sql: ${TABLE}.Platform ;;
  }

  dimension: target {
    type: string
    sql: ${TABLE}.Target ;;
  }

  dimension: time {
    type: string
    sql: ${TABLE}.Time ;;
  }

  dimension: total {
    type: number
    sql: ${TABLE}.Total ;;
  }

  dimension: tracert {
    hidden: yes
    sql: ${TABLE}.Tracert ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.UserID ;;
  }

  dimension: lost_rate_per_row {
    type: number
    sql: if(${lost}=0,0,${lost}/${total}) ;;
    value_format_name: percent_2
  }
  measure: average_lost_rate {
    type: average
    sql: ${lost_rate_per_row} ;;
  }
  measure: max_lost_rate {
    type: max
    sql: ${lost_rate_per_row} ;;
  }



  measure: count {
    type: count
    drill_fields: [name]
  }
}

view: lz_net_dig_test__tracert {
  dimension: delay {
    type: string
    sql: ${TABLE}.Delay ;;
  }

  dimension: hop {
    type: string
    sql: ${TABLE}.Hop ;;
  }
}
