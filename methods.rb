def disp_plans(plans)
  puts "旅行プランを選択して下さい。"
  plans.each.with_index(1) do |plan, i|
    puts "#{i}. #{plan[:place]}旅行(#{plan[:price]}円)"
  end
end

def chose_plan(plans)
  while true
    print "プランの番号を選択 >"
    plan_num = gets.to_i
    break if (FIRST_PLAN_NUM..LAST_PLAN_NUM).include?(plan_num)
    puts "#{FIRST_PLAN_NUM}~#{LAST_PLAN_NUM}から選択してください"
  end
  plans[plan_num - 1]
end

def decide_num_of_people(chosen_plan)
  puts "#{chosen_plan[:place]}旅行ですね"  
  puts "何名で予約されますか？"
  while true
    print "人数を入力 >"
     num_of_people = gets.to_i
    break if num_of_people > 0
    puts "1以上を入力してください"
  end
  num_of_people
end

def cal_total_price(chosen_plan, num_of_people)
  puts "#{num_of_people}名ですね。"

  total_price = chosen_plan[:price] * num_of_people

  if num_of_people >= DISCOUNT_STANDARD_VALUE
    total_price *= (1 - DISCOUNT_RATE)
    puts "#{DISCOUNT_STANDARD_VALUE}名以上ですので#{(DISCOUNT_RATE * 100).floor}%割引となります。"
  end

  puts "合計料金は#{total_price.floor}円になります。"

end
