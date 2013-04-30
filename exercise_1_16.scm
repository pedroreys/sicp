;Design a procedure that evolves an iterative exponwnriation process that uses successive squaring and uses a logarithmic number of steps, as does fast-expr.
;(Hint: using the observation that (b ^(n/2)) ^2) = ((b ^2) ^(n/2)), keep, along with the exponent n and the base b, an aditional state veriable a, and define the state
;transformation in sucha a wauy that the producto ab^2 is unchaged from statre to state.
;At the beginning of the process a is taken to be 1, and the answare is given by the value of a at the end of the process. In general, the techniue of defining an inaviant
;quantity that remains unchanged from state to state is a powefil wau to think about the design of iterative algoriths)


(define (expr-iter b n a)
  (cond ((= n 0) a)
        ((even? n) (expr-iter (square b) (/ n 2) a))
        (else (expr-iter b (- n 1) (* a b)))))

(define (even? n)
  (= (remainder n 2) 0))

(define (square x)
  (* x x))

(define (fast-expt b n)
  (expr-iter b n 1))
