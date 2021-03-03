view: delay1_hist_isp {
  sql_table_name: `zlong_trial.delay1_hist_ISP`
    ;;

  dimension: bucket {
    type: string
    sql: ${TABLE}.bucket ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  dimension: isp {
    type: string
    sql: ${TABLE}.ISP ;;
  }

  dimension: occurance {
    type: number
    sql: ${TABLE}.occurance ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
