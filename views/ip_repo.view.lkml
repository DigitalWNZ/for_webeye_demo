view: ip_repo {
  sql_table_name: `zlong_trial.ipRepo`
    ;;

  dimension: carrier {
    type: string
    sql: ${TABLE}.carrier ;;
  }

  dimension: end_ip_int {
    type: number
    sql: ${TABLE}.end_ip_int ;;
  }

  dimension: end_ip_oct {
    type: string
    sql: ${TABLE}.end_ip_oct ;;
  }

  dimension: organization {
    type: string
    sql: ${TABLE}.organization ;;
  }

  dimension: sld {
    type: string
    sql: ${TABLE}.sld ;;
  }

  dimension: start_ip_int {
    type: number
    sql: ${TABLE}.start_ip_int ;;
  }

  dimension: start_ip_oct {
    type: string
    sql: ${TABLE}.start_ip_oct ;;
  }

  dimension: tld {
    type: string
    sql: ${TABLE}.tld ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
