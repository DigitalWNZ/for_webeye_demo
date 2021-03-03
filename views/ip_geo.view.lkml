view: ip_geo {
  sql_table_name: `zlong_trial.ipGeo`
    ;;

  dimension: accuracy_radius {
    type: number
    sql: ${TABLE}.accuracy_radius ;;
  }

  dimension: center_point {
    type: string
    sql: ${TABLE}.center_point ;;
  }

  dimension: geoname_id {
    type: string
    sql: ${TABLE}.geoname_id ;;
  }

  dimension: is_anonymous_proxy {
    type: yesno
    sql: ${TABLE}.is_anonymous_proxy ;;
  }

  dimension: is_satellite_provider {
    type: yesno
    sql: ${TABLE}.is_satellite_provider ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: network {
    type: string
    sql: ${TABLE}.network ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}.postal_code ;;
  }

  dimension: registered_country_geoname_id {
    type: string
    sql: ${TABLE}.registered_country_geoname_id ;;
  }

  dimension: represented_country_geoname_id {
    type: string
    sql: ${TABLE}.represented_country_geoname_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
