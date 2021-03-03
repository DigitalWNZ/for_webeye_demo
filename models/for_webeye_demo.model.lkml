connection: "for_webeye_demo"

# include all the views
include: "/views/**/*.view"

datagroup: for_webeye_demo_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: for_webeye_demo_default_datagroup

# explore: 1_2_hop_isp {}

explore: borgmonfull {}

explore: borgmonfull_bak {}

explore: borgmonfull_bak_yh {}

explore: borgmonfull_bak_yh_v1 {}

explore: cdn0804 {}

explore: client_ip {}

explore: connection_reg_r3 {}

explore: delay0_hist_isp {}

explore: delay1_hist_isp {}

explore: delay_gcp_hist_isp {}

explore: full_hop_isp {}

explore: gcp_hop_isp {}

explore: geo_ip_country {}

explore: geo_ip_country_range {}

explore: geo_ip_isp {}

explore: geo_ip_isp_range {}

explore: ip_geo {}

explore: ip_repo {}

explore: lz_net_dig_test {
  join: lz_net_dig_test__tracert {
    view_label: "Lz Net Dig Test: Tracert"
    sql: LEFT JOIN UNNEST(${lz_net_dig_test.tracert}) as lz_net_dig_test__tracert ;;
    relationship: one_to_many
  }
}

explore: first_2_hop {}


explore: lz_net_dig_test_1 {
  view_name: lz_net_dig_test
  sql_always_where: ${lz_net_dig_test.diagtype} = 1
      and (NET.SAFE_IP_FROM_STRING(${lz_net_dig_test.client_ip}) BETWEEN NET.SAFE_IP_FROM_STRING(${geo_ip_country_range.start_ip}) AND NET.SAFE_IP_FROM_STRING(${geo_ip_country_range.end_ip}))
      and (NET.SAFE_IP_FROM_STRING(${lz_net_dig_test.client_ip}) BETWEEN NET.SAFE_IP_FROM_STRING(${geo_ip_isp_range.start_ip}) AND NET.SAFE_IP_FROM_STRING(${geo_ip_isp_range.end_ip}))  ;;
    join: geo_ip_country_range {
      type: left_outer
      sql_on: NET.IP_TRUNC(NET.SAFE_IP_FROM_STRING(${lz_net_dig_test.client_ip}),16) = NET.IP_TRUNC(NET.SAFE_IP_FROM_STRING(${geo_ip_country_range.start_ip}),16) ;;
      relationship: many_to_one
    }
    join: geo_ip_isp_range {
      type: left_outer
      sql_on: NET.IP_TRUNC(NET.SAFE_IP_FROM_STRING(${lz_net_dig_test.client_ip}),16) = NET.IP_TRUNC(NET.SAFE_IP_FROM_STRING(${geo_ip_isp_range.start_ip}),16) ;;
      relationship: many_to_one
    }
  }

  # explore: lz_net_dig_test {
  #   sql_always_where: ${lz_net_dig_test.diagtype} = 1
  #   and (NET.SAFE_IP_FROM_STRING(${lz_net_dig_test.client_ip}) BETWEEN NET.SAFE_IP_FROM_STRING(${geo_ip_country_range.start_ip}) AND NET.SAFE_IP_FROM_STRING(${geo_ip_country_range.end_ip}))
  #   and (NET.SAFE_IP_FROM_STRING(${lz_net_dig_test.client_ip}) BETWEEN NET.SAFE_IP_FROM_STRING(${geo_ip_isp_range.start_ip}) AND NET.SAFE_IP_FROM_STRING(${geo_ip_isp_range.end_ip}))  ;;
  #   join: geo_ip_country_range {
  #     type: left_outer
  #     sql_on: NET.IP_TRUNC(NET.SAFE_IP_FROM_STRING(${lz_net_dig_test.client_ip}),16) = NET.IP_TRUNC(NET.SAFE_IP_FROM_STRING(${geo_ip_country_range.start_ip}),16);;
  #     relationship: many_to_one
  #   }
  #   join: geo_ip_isp_range {
  #     type: left_outer
  #     sql_on: NET.IP_TRUNC(NET.SAFE_IP_FROM_STRING(${lz_net_dig_test.client_ip}),16) = NET.IP_TRUNC(NET.SAFE_IP_FROM_STRING(${geo_ip_isp_range.start_ip}),16) ;;
  #     relationship: many_to_one
  #   }
  # }
  #   # select * from a join b on ---- join c on ---- where xxxxx


explore: lz_net_dig_test_temp {
  join: lz_net_dig_test_temp__tracert {
    view_label: "Lz Net Dig Test Temp: Tracert"
    sql: LEFT JOIN UNNEST(${lz_net_dig_test_temp.tracert}) as lz_net_dig_test_temp__tracert ;;
    relationship: one_to_many
  }
}

explore: lz_net_dig_test_temp_1 {
  join: lz_net_dig_test_temp_1__tracert {
    view_label: "Lz Net Dig Test Temp 1: Tracert"
    sql: LEFT JOIN UNNEST(${lz_net_dig_test_temp_1.tracert}) as lz_net_dig_test_temp_1__tracert ;;
    relationship: one_to_many
  }
}

explore: lz_net_dig_test_temp_2 {
  join: lz_net_dig_test_temp_2__tracert {
    view_label: "Lz Net Dig Test Temp 2: Tracert"
    sql: LEFT JOIN UNNEST(${lz_net_dig_test_temp_2.tracert}) as lz_net_dig_test_temp_2__tracert ;;
    relationship: one_to_many
  }
}

explore: network {
  join: network__tracert {
    view_label: "Network: Tracert"
    sql: LEFT JOIN UNNEST(${network.tracert}) as network__tracert ;;
    relationship: one_to_many
  }
}

explore: ping_stat_country_base {}

explore: ping_stat_country_time {}

explore: ping_stat_country_time_add_miss {}

explore: ping_stat_ip {}

explore: test_auth_view {}
