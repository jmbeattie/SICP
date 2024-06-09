(load "Chapter2/rationals/rationals.ss")

(define (test-case x y) (newline) (display x) (display " : ") (display y) (newline))

(define rat1 (make-rat 3 4))
(define rat2 (make-rat (- 3) (- 4)))
(define rat3 (make-rat (- 3) 4))
(define rat4 (make-rat 3 (- 4)))
(define rat5 (make-rat 6 8))

(test-case "3/4 == -3/-4" (assert (equal-rat? rat1 rat2)))
(test-case "3/4 == 6/8" (assert (equal-rat? rat1 rat5)))
(test-case "-3/4 == 3/-4" (assert (equal-rat? rat3 rat4)))
(test-case "3/4 != -3/4" (assert (not (equal-rat? rat1 rat3))))
(test-case "3/4 != 3/-4" (assert (not (equal-rat? rat1 rat4))))
(test-case "-3/-4 != -3/4" (assert (not (equal-rat? rat2 rat3))))
(test-case "-3/-4 != 3/-4" (assert (not (equal-rat? rat2 rat4))))
(test-case "3/4 != 3/-4" (assert (equal-rat? rat1 rat4)))