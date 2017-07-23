*LIST "aList"
1: Item list 01
2: Item list 02
3: Item list 03
4: Item list 04
5: Item list 05

*QUESTION 10 *NUMBER 61L2 *BUT 99 "Don't know"
A numeric question

*QUESTION 20 *ALPHA 63L20
An alpha question

*QUESTION 30 *CODES 83L1 *BUT 9 "Don't know"
A single codes question no list
1: s answer 01
2: s answer 02
3: s answer 03
4: s answer 04
5: s answer 05

*QUESTION 35 *CODES 84L1
A single codes question - list
*USELIST "aList"

*QUESTION 40 *CODES 85L5 *MULTI *ROT
A multi codes question no list and ROT
1: m answer 01
2: m answer 02
3: m answer 03
4: m answer 04
5: m answer 05 

*QUESTION 45 *CODES 90L5 *MULTI
A multi codes question - list
*USELIST "aList"

*TEXTVARS varRepeat

*REPEAT 3 *FIELD 95L3

  *IF [?R=1] *PUT varRepeat "01"
  *IF [?R=2] *PUT varRepeat "02"
  *IF [?R=3] *PUT varRepeat "03"

  *TABLE "Rrrepeat *? varRepeat"
  
*QUESTION 60 *CODES 1L1
  Number *? varRepeat is:

  1: 1 Good
  2: 2 Average
  3: 3 Bad

*ENDREP

*QUESTION 70 *OPEN 98L1
An open question

*QUESTION 99 *CODES 99L1
How do we end this thing?
1: end          *END
2: endngb       *ENDNGB
3: 200          *ENDST 200
4: dropped-out  *ENDST 101
