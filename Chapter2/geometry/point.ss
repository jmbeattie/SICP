(define (make-point x y) (cons x y))

(define (x-point p) (car x))

(define (y-point p) (cdr y))

(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))
