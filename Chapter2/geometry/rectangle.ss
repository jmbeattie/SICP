(load "Chapter2/geometry/segment.ss")

(define (get-width rect) 
  (if (car rect) consequent))

(define (get-perimeter rect)
  (+ (* 2 (get-width rect)) (* 2 (get-height rect))))

(define (get-area rect) (* (get-width rect) (get-height rect)))