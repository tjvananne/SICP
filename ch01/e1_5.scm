
; I'm kind of stumped on this question... not sure if there will
; be answers later on. My guess is that one of these forms
; of execution (normal form?) will result in an infinite 
; loop where (p) in the body of the function never evaluates?

(define (p) (p))

(p)

; holy shit I think I was right. This actually is an infinite loop.
; the scheme repl makes it look like it simply returned "p" as 
; a value itself. but then my computer fans kicked on and I realized
; that the "scheme" process had been running on my computer for
; a while at about 33% cpu utilization.

; scheme < e1_5.scm (is how to run this)
