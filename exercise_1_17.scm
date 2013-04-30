(define (double x)
  (+ x x))

(define (halve x)
  (/ x 2))

(define (even? x)
  (= 0 (remainder x 2)))


; a * b = 2 * (a * b/2) if b is even
; a + b = a + a * (b -1) if b is odd

(define (fast-mult a b)
  (cond ((= b 0) 0)
        ((= b 1) a)
        ((even? b) (double (fast-mult a (halve b))))
        (else (+ a (fast-mult a (- b 1))))
  ))