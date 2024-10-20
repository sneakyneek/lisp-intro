(defun hello ()
    (write-line "What's your name")
    (let ((name (read-line)))
        (format t "hello, ~A.~%" name)))

(defun harf (x) 
    (/ x 2))

(defun cubee (x)
    (* x x x))

(defun oneme (x y)
    (equal x (+ 1 y)))

(defun pythag (x y)
    (sqrt (+ (* x x)(* y y))))

(defun mpg (start ende gallons)
    (/ (- ende start)gallons ))

(defun longey (x y)
    (> (length x) (length y)))

(defun addyyylen (x) 
    (cons (length x) x))

(defun myfun (x y) 
    (list (list x) y))

(defun firpe (x y)
    (equal x (first y)))

(defun middie (x)
    (+ 1 (second x)))

(defun ftoc (x)
    (/ 9(* 5 (- x 32))))

(defun backitu (x y)
   ( reverse (cons x (reverse y))))

(defun powy (num times)
    (cond ((zerop times) 1) 
            (t (* num (powy num (- times 1))))))

(defun makeeven (x)
    (if (evenp x) (list x) (+ x 1)))

(defun growit (x)
    (if (> 0 x) (+ x 1) (- x 1)))

(defun mynot (x)
    (if x nil t))

(defun orderr (x y)
    (if (> x y) (list y x) (list x y)))

(defun myass (x)
    (cond ((> x 0) x) 
        (t (* -1 x))))

(defun emphasize3 (x)
(cond ((equal (first x) 'good) (cons 'great (rest x)))
((equal (first x) 'bad) (cons 'awful (rest x)))
(t (cons 'very x))))

(defun make-odd (x)
(cond (t x)
((not (oddp x)) (+ x 1))))

; Above exercise is 4.9 everything above is a random assortment of those exercises