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

(defun constrain-410 (x max min)
    (cond ((> min x) min)
          ((> x max) max)
          (t x)))

(defun constrain-410b (x max min)
    (if (> x max) max (if (> min x) min x)))

(defun firstzero-411 (x)
    (cond ((zerop (first x)) 'first)
          ((zerop (second x)) 'second)
          (t 'third)))

(defun cycle-412 (x)
    (cond ((equal x 99) 1)
          (t (+ x 1))))

(defun howcompute-413 (x y z)
    (cond ((equal z (+ x y)) 'product-of)
          (t 'beatsme))) ;etc etc

(defun geq-415 (x y)
    (or (> x y) (equal x y)))

(defun square-416 (x)
    (or (and (oddp x) (> x 0) (* x x))
        (and (oddp x) (< x 0) (* 2 x))
        (and (/ x 2))))

(defun gen-417 (x y)
    (cond ((and (or (equal x 'boy) (equal x 'girl)) (equal y 'child)) t)
          ((and (or (equal x 'man) (equal x 'women)) (equal y 'adult)) t)))

(defun cond-419 (x y z w)
    (cond ((not  x) nil) ;not x should verify that not nil?
          ((not  y) nil)
          ((not z) nil)
          (t w))) ;either w is truthy so return w and if its nil will still return nil

(defun nestedif-419 (x y z w)
    (if x (if y (if z w))))

(defun compare-420 (x y)
    (if (< x y) 'xsmaller 
        (if (> x y) 'xlarger 'numequal)))

(defun compare-420b (x y)
    (or (and (equal x y) 'numequal)
        (and (< x y) 'xsmaller)
        (and (> x y) 'xlarger)))

(defun gtest-421 (x y)
    (if (> x y) t 
        (if (zerop x) t (zerop y))))

(defun gtest-421b (x y)
    (cond ((> x y) t)
          ((zerop x) t)
          (t (zerop y))))

(defun boilingp-422 (temp scale)
    (cond ((equal scale 'CELSIUS) (> temp 100))
          ((equal scale 'FARENHEIT) (> temp 212))))

(defun boilingp-422b (temp scale)
    (or (and (equal scale 'CELSIUS) 
             (> temp 100))
        (and (equal scale 'FARENHEIT) 
             (> temp 212))))

