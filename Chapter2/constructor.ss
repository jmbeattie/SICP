(define (cons x y) (lambda (m) (m x y)))

(define (car z) (z (lambda (p q) p)))

(define (cdr z) (z (lambda (p q) q)))


(define (cons-num x y) 
	(define (iter-cons-num a x y)
		(cond ((> x 0) (iter-cons-num (* a 2) (- x 1) y))
		      ((> y 0) (iter-cons-num (* a 3) x (- y 1)))
		      (else a)))
	(iter-cons-num 1 x y))

(define (car-num z) 
	(define (car-num-iter a z)
		(if (= (remainder z 2) 1) a (car-num-iter (+ a 1) (/ z 2))))
	(car-num-iter 0 z))

(define (cdr-num z)  
	(define (cdr-num-iter a z)
		(if (not (= (remainder z 3) 0)) a (cdr-num-iter (+ a 1) (/ z 3))))
	(cdr-num-iter 0 z)) 


(define zero (lambda (f) (lambda (x) x)))

(define (add-1 n) (lambda (f) (lambda (x) (f ((n f) x)))))

;(define one (lambda (f) (lambda (x) (f (((lambda (f) (lambda (x) x)) f) x)))))

;(define two (lambda (f) (lambda (x) (f 
;		((lambda (f) (lambda (x) (f 
;			((lambda (f) (lambda (x) x) f) x))) f) x)))))

(define one (lambda (f x) (f x)))

(define two (lambda (f x) (f (f x))))
