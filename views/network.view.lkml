view: network {
  sql_table_name: `zlong_trial.network`
    ;;

  dimension: average {
    type: number
    sql: ${TABLE}.average ;;
  }

  dimension: clientip {
    type: string
    sql: ${TABLE}.clientip ;;
  }

  dimension: deviceid {
    type: string
    sql: ${TABLE}.deviceid ;;
  }

  dimension: diagtype {
    type: number
    sql: ${TABLE}.diagtype ;;
  }

  dimension: error {
    type: string
    sql: ${TABLE}.error ;;
  }

  dimension: isp {
    type: string
    sql: ${TABLE}.isp ;;
  }

  dimension: lost {
    type: number
    sql: ${TABLE}.lost ;;
  }

  dimension: max {
    type: number
    sql: ${TABLE}.max ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: net_type {
    type: number
    sql: ${TABLE}.net_type ;;
  }

  dimension: platform {
    type: number
    sql: ${TABLE}.platform ;;
  }

  dimension: target {
    type: string
    sql: ${TABLE}.target ;;
  }

  dimension: time {
    type: string
    sql: ${TABLE}.time ;;
  }

  dimension: total {
    type: number
    sql: ${TABLE}.total ;;
  }

  dimension: tracert {
    hidden: yes
    sql: ${TABLE}.tracert ;;
  }

  dimension: userid {
    type: string
    sql: ${TABLE}.userid ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}

view: network__tracert {
  dimension: delay {
    type: string
    sql: ${TABLE}.delay ;;
  }

  dimension: hop {
    type: string
    sql: ${TABLE}.hop ;;
  }
}
