

; Think about what is required to create a "square root" program...

; Think about the difference between:
; 1) a MATHEMATICAL FUNCTION
; 2) a COMPUTATIONAL PROCEDURE

; page 28 of SICP - this is great:
; "The contrast between function and procedure
;  is a reflection of the general distinction
; between describing properties of things and
; describing how to do things, or, as it is
; sometimes referred to, the distinction
; between DECLARATIVE knowledge and
; IMPERATIVE knowledge. In mathematics we are
; usually concerned with declarative (what is)
; descriptions, whereas in computer science
; we are usually concerned with imperative 
; (how to) descriptions.

; that said, we know the properties we want
; our square root function to have. 
; if we define it as:
; sqrt(x) == y 
; where y * y == x... that is a set of
; relational properties of the operands
; and


; operands vs arguments vs parameters:
; https://stackoverflow.com/questions/32520961/getting-the-terminology-straight-operands-parameters-and-arguments

; we'll use Newtons method of approximating square roots:

; let "threshold" be the threshold we must meet between
;     the approximate / real answer where we stop 
; "x" will be the number we want to find sqrt of
; begin with a value defined for "guess" (let's use 1)
; find x/1, let that be assigned to "temp"
; find the average between "temp" and "guess"
;     save this new value into "guess" variable
; repeat this until 


