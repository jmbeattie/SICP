(include "Chapter2/geometry/point.ss")

(define (make-segment p1 p2) (cons p1 p2))

(define (start-segment seg) (car seg))

(define (end-segment seg) (cdr seg))

(define (print-segment seg)
  (newline)
  (display "(")
  (display (start-segment seg))
  (display ",")
  (display (end-segment seg))
  (display ")"))

(define (mid-segment seg)
  (let ((p1 (start-segment seg))
        (p2 (end-segment seg)))
    (make-segment (/ (+ (point-x p1) (point-x p2)) 2) 
                  (/ (+ (point-y p1) (point-y p2)) 2))))