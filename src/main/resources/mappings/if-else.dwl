%dw 1.0
 %output application/json
 %var num1 = 19 as :number
 %var num2 = 45 as :number
 
 ---
 {
     root:{
         (data:payload.a) when payload.a?,
         (data:payload.b) when payload.b?,
         (data:payload.c) when payload.c?,
         (data:payload.d) when payload.d?
     },
     greater: num1 when num1>num2 otherwise num2,
     
     Country: payload.country match {
					str when str == "usa" 
					or str == "aus" 
					or str == "india" 
					or str == "nz" -> upper str ,
					default -> upper "none"
				}
 }