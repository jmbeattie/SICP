;Exercise 2.1
(define (make-rat x y)
  (let ((g (gcd x y)))
    (if (< y 0) (cons (- (/ x g)) (- (/ y g))) (cons (/ x g) (/ y g))))
)
;End Exercise 2.1

(define (numer x) (car x))

(define (denom x) (cdr x))

(define (print-rat x)
  (newline)
  (display (numer x))
  (display "/")
  (display (denom x))
)

(define (add-rat x y)
  (make-rat (+ (* (numer x) (denom y))
                (* (numer y) (denom x)))
            (* (denom x) (denom y))))

(define (sub-rat x y)
  (make-rat (- (* (numer x) (denom y))
                (* (numer y) (denom x)))
            (* (denom x) (denom y))))

(define (mul-rat x y)
  (make-rat (* (numer x) (numer y)) (* (denom x) (denom y))))

(define (mul-rat x y)
  (make-rat (* (numer x) (denom y)) (* (denom x) (numer y))))

(define (equal-rat? x y)
  (= (* (numer x) (denom y)) (* (denom x) (numer y))))
