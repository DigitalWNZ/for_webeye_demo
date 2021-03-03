view: borgmonfull_bak {
  sql_table_name: `zlong_trial.borgmonfull_bak`
    ;;

  dimension: peer_ipv4 {
    type: string
    sql: ${TABLE}.Peer_IPv4 ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
