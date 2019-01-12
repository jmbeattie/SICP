(define (make-point x y) (cons x y))

(define (x-point p) (car p))

(define (y-point p) (cdr p))

(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))

(define (make-segment p1 p2) (cons p1 p2))

(define (start-segment line) (car line))

(define (end-segment line) (cdr line))

(define (average x y) (/ (+ x y) 2))

(define (midpoint-segment line)
  (make-point (average (x-point (start-segment line)) (x-point (end-segment line))) 
	      (average (y-point (start-segment line)) (y-point (end-segment line)))))

(define (make-rect1 ul br) (cons ul br))

(define (make-rect2 line) (cons (start-segment line) (end-segment line)))

(define (rect-width rect) (- (x-point (car rect)) (x-point (cdr rect))))

(define (rect-height rect) (- (y-point (car rect)) (y-point (cdr rect))))

(define (rect-perim rect) (+ (abs (* 2 (rect-width rect))) (abs (* 2 (rect-height rect)))))

(define (rect-area rect) (* (rect-width rect) (rect-height rect)))
