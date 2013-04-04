Observe that our model of evaluation allows for combinations whose operators are compound expressions. use this observation to describe the behavior of the following procedure:

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))


the a-plus-abs-b procedure will evaluate the (> b o) expression. If b > 0 then the + operator will be applied to the operands a and b. otherwise, the - operator will be applied to a and b.


