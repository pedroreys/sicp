; previous definition of the sqrt-iter procedure
;(define (sqrt-iter guess x)
;  (if (good-enough? guess x)
;      guess
;      (sqrt-iter (improve guess x)
;                  x)))

(define (improve guess x) 
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
    (< (abs (- (square guess) x)) 0.001))

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x)
            x)))

; what happens when the new sqrt-iter, using the new-if, procedure is evaluated?

; the interpreter aborts with a 'maximum recursion depth exceeded' because the interpreter is using Applicative-Order evaluated and both branches of new-if are evaluated independent of the predicate evaluation.
; in the first definition this doesn't occur becuase the if is an special form procedure (as well as cond) so that only the branches are only evaluated if needed, depending on the result of the predicate evaluation;
; this happens because although new-if is using an special form procedure (cond) the new-if procedure itself is not an special form, and regular Applicative-Order evaluation will happen;
