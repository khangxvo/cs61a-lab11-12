(define (substitute s old new) 
	;'YOUR-CODE-HERE
	; (if (pair? (car s)) (substitute (car s) old new)
	; 	(cond 
	; 		((null? s) nil)
	; 		; ((pair? (car s)) (substitute (car s) old new))
	; 		((equal? (car s) old) (cons new (substitute (cdr s) old new)))
	; 		; (display 'here)
	; 		(else (cons (car s) (substitute (cdr s) old new)))
	; 	)
	; )
	(cond 
		((null? s) nil)
		; ((pair? (car s)) (substitute (car s) old new))
		((equal? (car s) old) (cons new (substitute (cdr s) old new)))
		; (display 'here)
		(else (cons (if (pair? (car s)) (substitute (car s) old new) (car s)) (substitute (cdr s) old new)))
	)
)

; Feel free to use these helper procedures in your solution
(define (map fn s)
  (if (null? s)
      nil
      (cons (fn (car s)) (map fn (cdr s)))))

(define (filter fn s)
  (cond 
    ((null? s)    nil)
    ((fn (car s)) (cons (car s) (filter fn (cdr s))))
    (else         (filter fn (cdr s)))))

(define (count x s) 'YOUR-CODE-HERE)

(define (unique s) 'YOUR-CODE-HERE)

(define (tally names) 'YOUR-CODE-HERE)
