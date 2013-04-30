
(define (sqrtcube-iter previous-guess guess x)
  (if(good-enough? previous-guess guess)
    guess
    (sqrtcube-iter
      guess
      (improve guess x)
      x)))


(define (good-enough? previous-guess guess)  
       (< (abs (- previous-guess guess)) 0.001))


(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))


(define (sqrtcube x) (sqrtcube-iter 0 1.0 x))