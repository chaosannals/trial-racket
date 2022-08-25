#lang racket

(require simple-barcode)

(barcode-write 'png "750103131130" "barcode_ean13.demo.png")
(barcode-write 'png "750103131130" "barcode_ean13_w5.demo.png" #:brick_width 5)
(barcode-write 'png "750103131130" "barcode_ean13_w10.demo.png" #:brick_width 10 #:font_size 6)
(barcode-write 'png "750103131130" "barcode_ean13_color.demo.png" #:color_pair '("red" . "gray"))
(barcode-write 'png "750103131130" "barcode_ean13_trans.demo.png" #:color_pair '("red" . "transparent"))

(printf "~a,~a,~a,~a\n"
        (barcode-read "barcode_ean13.demo.png")
        (barcode-read "barcode_ean13_w5.demo.png")
        (barcode-read "barcode_ean13_color.demo.png")
        (barcode-read "barcode_ean13_trans.demo.png"))

(barcode-write 'png "chenxiao770117" "barcode_code128.demo.png" #:code_type 'code128)
(printf "~a\n" (barcode-read "barcode_code128.demo.png" #:code_type 'code128))
 
(barcode-write 'png "CHEN" "barcode_code39.demo.png" #:code_type 'code39)
(printf "~a\n" (barcode-read "barcode_code39.demo.png" #:code_type 'code39))
 
(barcode-write 'png "CHEN" "barcode_code39_checksum.demo.png" #:code_type 'code39_checksum)
(printf "~a\n" (barcode-read "barcode_code39_checksum.demo.png" #:code_type 'code39_checksum))


(barcode-write 'svg "750103131130" "barcode_ean13.demo.svg")
(barcode-write 'svg "750103131130" "barcode_ean13_w5.demo.svg" #:brick_width 5)
(barcode-write 'svg "750103131130" "barcode_ean13_w10.demo.svg" #:brick_width 10)
(barcode-write 'svg "750103131130" "barcode_ean13_color.demo.svg" #:color_pair '("red" . "gray"))
