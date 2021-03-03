view: ping_stat_country_time_add_miss {
  sql_table_name: `zlong_trial.ping_stat_country_time_add_miss`
    ;;

  dimension: average {
    type: number
    sql: ${TABLE}.average ;;
  }

  dimension: avg_lost {
    type: number
    sql: ${TABLE}.avg_lost ;;
  }

  dimension: avg_total {
    type: number
    sql: ${TABLE}.avg_total ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: lost_rate {
    type: number
    sql: ${TABLE}.Lost_rate ;;
  }

  dimension: pert_10 {
    type: number
    sql: ${TABLE}.pert_10 ;;
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

  dimension_group: timekey {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.timekey ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
