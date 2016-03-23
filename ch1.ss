; Exercises from Lecture-1a and chapter 1
3

(+ 3 4 8)

; Standard linear string
(+  (* 3 (+ 7 19.5)) 4)

; Pretty printing indentation
(+ (* 3 5) 
   (* 47 
      (- 20 6.8))
   12)

; Using define
(define A (* 5 5))
(* A A)
(define B (+ A (* 5 A)))
B
(+ A (/ B 5))

; Squaring in Lisp
(define (square x) (* x x))
(square 10)

; Using lambda as syntactic sugar
(define square (lambda (x) (* x x)))
(square 10)


; Conditional expressions and predicates

; General form of a conditional expression
(define (abs x)
  (cond ((> x 0) x)
        ((= x 0) 0)
        ((< x 0) (- x))))

; Another way of the absolutely value procedure
(define (abs x)
  (cond ((< x 0) (- x))
    (else x)))

(abs 0)

; Yet another way
(define (abs x)
  (if (< x 0)
      (- x)
      x))

(abs 49)
(abs 0)
(abs -4)

; (if <predicate> <consequent> <alternative>)
(if (> 1 0) 
    "One is greater than zero" 
    "Zero is less than one")

; Additional primitive predicates
(define (>= x y)
  (or (> x y) (= x y)))

(>= 4 5)
(>= 4 4)
(>= 5 4)

(define (>= x y)
  (not (< x y)))
(>= 4 5)
(>= 4 4)
(>= 5 4)


; Exercise 1.2 solution

(/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5)))))
   (* 3 (- 6 2) (- 2 7)))

; Exercise 1.3 solution

(define (square x) (* x x))

(define (sum-of-squares x y) (+ (square x)
                                (square y)))

(define (<= x y)
  (not (< x y)))

(define (sum-and-square-of-two-largest x y z)
  (cond ((and (<= x y) (<= x z)) (sum-of-squares y z))
        ((and (<= y x) (<= y z)) (sum-of-squares x z))
        (else (sum-of-squares x y))))
      
; 1.3 tests
(sum-and-square-of-two-largest 1 2 3) ; 13
(sum-and-square-of-two-largest 4 10 5) ; 125

; Exercise 1.4






