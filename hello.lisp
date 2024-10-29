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

(defun logand-429 (x y)
    (if (not x) nil (if (not y) nil t)))

(defun logand-429smarter (x y)
    (if x (if y t)))

(defun logand-429b (x y)
    (cond ((not x) nil)
          ((not y) nil)
          (t t)))

(defun logand-429bsmarter (x y)
    (cond (x (cond (y t)))))

(defun logor-430 (x y)
    (or x y))

(defun logor-430cond (x y)
    (cond (x t)
          (y t)
          (t nil)))

;skipping to 435

;435: (and x y z) => (not (or (not x) (not y) (not z)))
;     (or x y z) => (not (and (not x) (not y) (not z)))

;skipping to 5 

;(defun poor-style (p)
;(setf p (+ p 5))
;(list ’result ’is p))

(defun poor-51 (p)
    (let ((q (+ 5 p)))
        (list 'result 'is q)))

;;; rolls a die
(defun throw-56 ()
    + 1 (random 6))

(defun throwtwo-56 ()
    (list (throw-56) (+ 1 (throw-56))))

(defun snakep-56 (x)
    (and (equal 1 (first x)) (equal 1 (second x))))

(defun snakep-56smart (x)
    (equal x (list 1 1)))

;;;T if throw is boxcar else nil
(defun boxp-56 (x)
    (and (equal 6 (first x)) (equal 6 (second x))))

(defun winp-56 (throw)
    (cond ((equal (+ (first throw) (second throw)) 7) t)
          ((equal (+ (first throw) (second throw)) 11) t)
          (t nil)))

(defun losep-56 (throw)
    (cond ((equal (+ (first throw) (second throw)) 2) t)
          ((equal (+ (first throw) (second throw)) 3) t)
          ((equal (+ (first throw) (second throw)) 12) t)
          (t nil)))

(defun trowval-56 (throw)
    (+ (first throw) (second throw)))

(defun losep-56b (throw)
    (member (trowval-56 throw) '(2 3 12)))

(defun saythrow-56 (throw)
    (cond ((snakep-56 throw) 'sneakysnek)
          ((boxp-56 throw) 'box)
          (t (trowval-56 throw))))


(defun craps-56 ()
    (let ((mathrow (throwtwo-56)))
        (append 
            (list 'you 'threw (saythrow-56 mathrow))
            (cond ((winp-56 mathrow) 'youwin)
              ((losep-56 mathrow) 'youlose)
              (t (list 'your 'point 'is (trowval-56 mathrow)))))))

;end of 5 remember in common lisp variables get bound not symbols
;(setf line '(roses are red))

(defun line-65 ()
    ;(reverse line))
    (first (last line)))

(defun lastel-66 (x)
    (car (last x)))

(defun lastel-66b (x)
    (car (reverse x)))

(defun nexlast-67 (x)
    (cadr (reverse x)))

(defun nexlas-67b (x)
    (and (rest x)
         (nth (- (length x) 2) x)))

(defun mybl-68 (x)
    (remove (car (last x)) x))

(defun mybl-68b (x)
    (reverse (rest (reverse x))))

(defun palp-610 (x)
    (equal x (reverse x)))

(defun map-611 (x)
    (append x (reverse x)))

;;;613-614
(intersection '(1 2 3) nil)
(intersection '(1 2 3) '(1 2 3))

;615 
(defun artp-615 (x)
    (intersection (list 'an 'the 'a) x))

(defun artp-615b (x)
    (or (member 'an x) (member 'the x) (member 'a x)))

(defun artp-615c (x)
    (not (and (not (member 'an x)) (not (member 'the x)) (not (member 'a x)))))

(defun vowel-617 (x)
    (union x '(a e i o u)))

(defun subsp-621 (x y)
    (equal nil (set-difference x y)))
