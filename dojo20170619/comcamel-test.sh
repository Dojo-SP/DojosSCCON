it_primeiro_exemplo() {
  test "$(comcamel '1+2*3*4+5')" == \
       "The maximum and minimum are 81 and 30."
}

it_1_mais_1() {
  test "$(comcamel 1+1)" == \
       "The maximum and minimum are 2 and 2."
}

it_1_vezes_2() {
  test "$(comcamel 1\*2)" == \
       "The maximum and minimum are 2 and 2."
}

it_numero_3(){
  test "$(comcamel 3)" == \
       "The maximum and minimum are 3 and 3."
}

it_verificar_duas_operacoes(){
  test "$(comcamel 1\*2+1)" == \
       "The maximum and minimum are 3 and 3."
}

it_verificar_numero_4(){
  test "$(comcamel 2+2)" == \
       "The maximum and minimum are 4 and 4."
  test "$(comcamel 4)" == \
       "The maximum and minimum are 4 and 4."
  test "$(comcamel 3+1)" == \
       "The maximum and minimum are 4 and 4."
  test "$(comcamel 1+3)" == \
       "The maximum and minimum are 4 and 4."
}

it_verificar_numero_5() {
  test "$(comcamel 2+3)" == \
       "The maximum and minimum are 5 and 5."
  test "$(comcamel 3+2)" == \
       "The maximum and minimum are 5 and 5."
  test "$(comcamel 5)" == \
       "The maximum and minimum are 5 and 5."
  test "$(comcamel 1+4)" == \
       "The maximum and minimum are 5 and 5."
  test "$(comcamel 4+1)" == \
       "The maximum and minimum are 5 and 5."
}

it_1_mais_3_vezes_2_mais_1() {
  # ((1 + 3) * 2) + 1 = 9
  # (1 + 3) * (2 + 1) = 12
  # 1 + (3 * (2 + 1)) = 10
  # 1 + (3 * 2) + 1 = 8
  test "$(comcamel 1+3\*2+1)" == \
       "The maximum and minimum are 12 and 8."
}

it_10_mais_10() {
  test "$(comcamel 10+10)" == \
       "The maximum and minimum are 20 and 20."
}

it_20_mais_20() {
  test "$(comcamel 20+20)" == \
       "The maximum and minimum are 40 and 40."
}

it_100_mais_100() {
  test "$(comcamel 100+100)" == \
       "The maximum and minimum are 200 and 200."
}

it_1000_mais_1000() {
  test "$(comcamel 1000+1000)" == \
       "The maximum and minimum are 2000 and 2000."
}

it_1000_mais_1000_vezes_2() {
  test "$(comcamel 1000+1000\*2)" == \
       "The maximum and minimum are 4000 and 3000."
  test "$(comcamel 2\*1000+1000)" == \
       "The maximum and minimum are 4000 and 3000."
  test "$(comcamel 1000\*2+1000)" == \
       "The maximum and minimum are 1002000 and 3000."
}

it_1_2_3() {
  test "$(comcamel 1+2\*3)" == \
       "The maximum and minimum are 9 and 7."
  test "$(comcamel 2\*1+3)" == \
       "The maximum and minimum are 8 and 5."
  test "$(comcamel 2+1\*3)" == \
       "The maximum and minimum are 9 and 5."
  test "$(comcamel 1+3\*2)" == \
       "The maximum and minimum are 8 and 7."
}

it_1_2_4() {
  test "$(comcamel 1+2\*4)" == \
       "The maximum and minimum are 12 and 9."
  test "$(comcamel 2\*1+4)" == \
       "The maximum and minimum are 10 and 6."
  test "$(comcamel 2+1\*4)" == \
       "The maximum and minimum are 12 and 6."
  test "$(comcamel 1+4\*2)" == \
       "The maximum and minimum are 10 and 9."
}

it_2_3_4() {
  test "$(comcamel 2+3\*4)" == \
       "The maximum and minimum are 20 and 14."
  test "$(comcamel 2\*3+4)" == \
       "The maximum and minimum are 14 and 10."
  test "$(comcamel 4+3\*2)" == \
       "The maximum and minimum are 14 and 10."
  test "$(comcamel 2+4\*3)" == \
       "The maximum and minimum are 18 and 14."
}
