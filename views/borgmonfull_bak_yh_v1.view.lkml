view: borgmonfull_bak_yh_v1 {
  sql_table_name: `zlong_trial.borgmonfull_bak_yh_v1`
    ;;

  dimension: gcp_peer_asn {
    type: string
    sql: ${TABLE}.gcp_peer_asn ;;
  }

  dimension: peer_ipv4 {
    type: string
    sql: ${TABLE}.Peer_IPv4 ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
