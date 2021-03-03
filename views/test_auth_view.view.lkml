view: test_auth_view {
  sql_table_name: `zlong_trial.test_auth_view`
    ;;

  dimension: country_iso_code {
    type: string
    sql: ${TABLE}.country_iso_code ;;
  }

  dimension: country_name {
    type: string
    sql: ${TABLE}.country_name ;;
  }

  dimension: network {
    type: string
    sql: ${TABLE}.network ;;
  }

  measure: count {
    type: count
    drill_fields: [country_name]
  }
}
