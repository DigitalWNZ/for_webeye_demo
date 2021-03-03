view: client_ip {
  sql_table_name: `zlong_trial.client_ip`
    ;;

  dimension: ip {
    type: string
    sql: ${TABLE}.ip ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
