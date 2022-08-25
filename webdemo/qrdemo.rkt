#lang racket
 
(require simple-qr)
 
;; block's default width is 5
 
(qr-write "https://github.com/simmone" "normal.demo.png")
 
(qr-write "https://github.com/simmone" "normal_color.demo.png" #:color '("#ffbb33" . "#0d47a1"))
 
(qr-write "https://github.com/simmone" "normal_trans.demo.png" #:color '("#9933CC" . "transparent"))
 
(qr-write "https://github.com/simmone" "small.demo.png" #:module_width 2)
 
(qr-write "https://github.com/simmone" "large.demo.png" #:module_width 10)
 
(printf "~a\n~a\n~a\n"
        (qr-read "normal.demo.png")
        (qr-read "small.demo.png")
        (qr-read "large.demo.png"))
 
; (printf "~a\n" (qr-read "damaged.demo.png"))
 
(qr-write "https://github.com/simmone" "normal.demo.svg" #:output_type 'svg)
 
(qr-write "https://github.com/simmone" "normal_color.demo.svg" #:color '("#ffbb33" . "#0d47a1") #:output_type 'svg)
 
(qr-write "https://github.com/simmone" "normal_trans.demo.svg" #:color '("#9933CC" . "transparent") #:output_type 'svg)
