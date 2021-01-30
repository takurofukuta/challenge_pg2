require "./methods"


plans = [
  { place: "沖縄", price: 10000 },
  { place: "北海道", price: 20000 },
  { place: "九州", price: 15000 }
]

FIRST_PLAN_NUM = 1
LAST_PLAN_NUM = plans.size
DISCOUNT_RATE = 0.1
DISCOUNT_STANDARD_VALUE = 5

disp_plans(plans)
chosen_plan = chose_plan(plans)
num_of_people = decide_num_of_people(chosen_plan)
cal_total_price(chosen_plan, num_of_people)