view: compare_week {
  sql_table_name: `allen-first.haoya.compare_week`
    ;;

  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }

  dimension_group: order {
    type: time
    timeframes: [
      raw,
      date,
      week,
      week_of_year,
      month,
      quarter,
      year
    ]
    convert_tz: no
    # datatype: date
    sql: timestamp(${TABLE}.order_date) ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      date,
      week,
      week_of_year,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: timestamp(${TABLE}.order_date) ;;
  }



  dimension: orderid {
    type: number
    value_format_name: id
    sql: ${TABLE}.orderid ;;
  }

  dimension: amount_tier {
    type: tier
    tiers: [100,200,300,500,1000]
    sql: ${amount} ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
