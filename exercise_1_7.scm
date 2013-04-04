(define (sqrt-iter previous-guess guess x)
  (if (good-enough? previous-guess guess)
        guess
        (sqrt-iter  guess 
                    (improve guess x)
                    x)))

(define (good-enough? previous-guess guess)  
       (< (abs (- previous-guess guess)) 0.001))