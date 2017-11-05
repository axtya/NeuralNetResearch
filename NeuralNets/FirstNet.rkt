#lang racket

;Task: hard-code a simple neual network to either add or subtract two numbers, a and b
; Three input neurons, a, b, and a neuron to indicate which operation is being performed
; One output neuron to represent the result

(define (multiply-list a b)
  (if (empty? a)
      empty
      (cons (* (car a) (car b))
            (multiply-list (cdr a) (cdr b)))))

(define (evaluate inputs weights) ;evaluates result, input and weights are vectors
  (apply + (multiply-list (inputs) (weights))))

(define (input_addition) (list 1 2))
(define (weight_addition) (list 1 1))

(evaluate input_addition weight_addition)