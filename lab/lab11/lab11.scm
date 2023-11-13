(define (over-or-under num1 num2) 
    ;'YOUR-CODE-HERE
    ;(if (< num1 num2) -1 
        ;(if (= num1 num2) 0 1)))
    (cond
        ((< num1 num2) -1)
        ((= num1 num2) 0)
        (else 1)
        )
    )
    

(define (make-adder num) 
    ;'YOUR-CODE-HERE
    (lambda (inc) (+ num inc))
    )
    

(define (composed f g) 
    ;'YOUR-CODE-HERE
    (lambda (x) (f (g x)))
    )

(define (repeat f n) 
    ;'YOUR-CODE-HERE
    ;(if (= n 0) 
        ;f
        ;(* f (repeat f (- n 1))))
    (if (= n 0) 
        (lambda (x) x)
        (composed f (repeat f (- n 1)))
        )
    )
        

(define (max a b)
  (if (> a b)
      a
      b))

(define (min a b)
  (if (> a b)
      b
      a))

(define (gcd a b) 
    ;'YOUR-CODE-HERE
    ; 1) if either a or b divisble for each other, result is the smaller one
    ; 2) else recursive call on smaller value and the remainder of a and b)
    (if (or (zero? (modulo a b)) (zero? (modulo b a)))
        (min a b)
    (gcd (min a b) (modulo (max a b) (min a b)))
    )
)
