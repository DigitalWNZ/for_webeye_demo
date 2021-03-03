view: first_2_hop {
  derived_table: {
    sql: select
      insertID,
      UserID,
      ClientIP,
      name,
      Time,
      tracert[offset(0)].Hop as Hop0,
      tracert[offset(0)].Delay as Delay0,
      if(array_length(Tracert)<=1,null,tracert[offset(1)].Hop) as Hop1,
      if(array_length(Tracert)<=1,null,tracert[offset(1)].Delay) as Delay1
      from `allen-first.zlong_trial.lzNetDigTest`
      where diagtype=2
 ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: insert_id {
    type: string
    sql: ${TABLE}.insertID ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.UserID ;;
  }

  dimension: client_ip {
    type: string
    sql: ${TABLE}.ClientIP ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: time {
    type: string
    sql: ${TABLE}.Time ;;
  }

  dimension: hop0 {
    type: string
    sql: ${TABLE}.Hop0 ;;
  }

  dimension: delay0 {
    type: string
    sql: ${TABLE}.Delay0 ;;
  }

  dimension: delay0_value {
    type: number
    sql: safe_cast(${delay0} as INT64) ;;
  }

  dimension: delay_0_tier {
    type: tier
    tiers:[0,10,20,30]
    sql: ${delay0_value} ;;
  }

  dimension: hop1 {
    type: string
    sql: ${TABLE}.Hop1 ;;
  }

  dimension: delay1 {
    type: string
    sql: ${TABLE}.Delay1 ;;
  }

  set: detail {
    fields: [
      insert_id,
      user_id,
      client_ip,
      name,
      time,
      hop0,
      delay0,
      hop1,
      delay1
    ]
  }
}
