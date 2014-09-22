;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname hw02) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
#|
 Alvin Giles
 Homework 2: defining functions
 http://www.radford.edu/~itec380/2014fall-ibarland/Homeworks/hw02.html
 
|#

;; has-suffix? : string string -> boolean
;;returns whether the second string entry is a suffix of the first string entry

(define (has-suffix? word suffix)
  (string=? suffix (substring word (- (string-length word) (string-length suffix))))
)

;;test cases
(check-expect (has-suffix? "fixed" "ed") true)
(check-expect (has-suffix? "suffix" "") true)
(check-expect (has-suffix? "weaker" "r") true)
(check-expect (has-suffix? "meat" " ") false)
(check-expect (has-suffix? "pendant" "ant") true)

;;handle-dir-response : [string,boolean,'private] -> String
;;handles a direstory response
(define (handle-dir-response directory-response)
  (cond [(string? directory-response) (string-append directory-response "@radford.edu")]
        [(equal? directory-response #f) "This person does not exist" ]
        [(equal? directory-response 'private) "Information not published...."]
        )
  )

;;test cases
(check-expect (handle-dir-response "ibarland") "ibarland@radford.edu")
(check-expect (handle-dir-response "") "@radford.edu")
(check-expect (handle-dir-response #f) "This person does not exist")
(check-expect (handle-dir-response 'private) "Information not published....")
