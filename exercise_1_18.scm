(define (mult-iter a b r)
  (cond ((= b 0) 0)
        ((even? b) (double (mult-iter a (halve b) r )))
        (else (+ a (mult-iter a (- b 1) (+ r a))))))

(define (fast-mult a b)
  (mult-iter a b 0))