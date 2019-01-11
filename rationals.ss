(define (make-rat n d)
  (let ((g (gcd n d)))
    (cond ((or (and (> n 0) (> d 0)) (and (< n 0) (> d 0))) (cons (/ n g) (/ d g)))
	  (else (cons (/ (- n) g) (/ (- d) g))))))

(define (numer x) (car x))

(define (denom x) (cdr x))

(define (arith-rat func x y)
 (make-rat (func (* (numer x) (denom y)) (* (numer y) (denom x)))
	   (* (denom x) (denom y))))

(define (add-rat x y) (arith-rat + x y))

(define (sub-rat x y) (arith-rat - x y))

(define (mul-rat x y)
  (make-rat (* (numer x) (numer y)) (* (denom x) (denom y))))

(define (div-rat x y)
  (make-rat (* (numer x) (denom y)) (* (denom x) (numer y))))

(define (equal-rat? x y)
  (= (* (numer x) (denom y)) (* (denom x) (numer y))))
