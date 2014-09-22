;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname hw01) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;;Alvin Giles
;;Homework 01
;;Assignment URL: www.radford.edu/itec380/2014fall-ibarland/Homeworks/hw01.html


;; 1a. 31
;; 1b. "sis"
;;1c. true
;;1d. true
;;1e. #i11.0
;;1f. 3
;;1g. #i3.141592653589793
;;1i. +: expected a function call, but there is no open parenthesis before this function
;;1j. 2
;;    +: expected a function call, but there is no open parenthesis before this function
;;1k. unction call: expected a function after the open parenthesis, but found a number
;;1l.function call: expected a function after the open parenthesis, but found a part
(define country "Morocco")
(define art-style "rococo")
(define gangsta "racketeer")

(string-ref country 3)
(string-ref country (- (string-length country) 2))
(string<? art-style (substring country 2 5))
(substring gangsta 0 (quotient (string-length gangsta) 2))
(define seconds (* (* (* 60 60) 24) 365))
(define x (abs (- seconds (* pi (expt 10 7)))))
(define y (abs (- seconds (expt 75 4))))
(> x y)
;;x refers to the statement pi 10^7 and y refers to 75^4
;;being that the difference in computations between the actual of y is lower, it gives a
;;between estimate by being a closer approximation.