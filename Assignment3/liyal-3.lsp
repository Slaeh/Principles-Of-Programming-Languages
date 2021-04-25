;This file can be viewed on Euclid using less -x4 liyal-3.lsp
;Harjit Liyal

;Solution to Problem 1 
(defun MIN-2 (A B)
    (cond 
        ((not (and (numberp A) (numberp B))) 'ERROR)
        ((<= A B) A)
        ((> A B) B)))

;Solution to Problem 2 
(defun SAFE-AVG (X Y) 
    (and (numberp X) (numberp Y) (/ (+ X Y) 2)))
 
;Solution to Problem 3
(defun ODD-GT-MILLION (A)
    (and (integerp A) (oddp A) (> A 1000000)))

;Solution to Problem 4
(defun MULTIPLE-MEMBER (X Y)
    (and (or (symbolp X) (numberp X) (listp Y)) (member X (cdr (member X Y)))))

;Solution to Problem 5 
(defun MONTH->INTEGER (X)
    (cond 
        ((eq X 'January) 1)
        ((eq X 'February) 2)
        ((eq X 'March) 3)
        ((eq X 'April) 4)
        ((eq X 'May) 5)
        ((eq X 'June) 6)
        ((eq X 'July) 7)
        ((eq X 'August) 8)
        ((eq X 'September) 9)
        ((eq X 'October) 10)
        ((eq X 'November) 11)
        ((eq X 'December) 12)
        (t 'error )))

;Solution to Problem 6
(defun SCORE->GRADE (S)
    (cond
        ((not (numberp S)) NIL)
        ((>= S 90) 'A)
        ((and (< S 90) (>= S 87)) 'A-)
        ((and (< S 87) (>= S 83)) 'B+)
        ((and (< S 83) (>= S 80)) 'B)
        ((and (< S 80) (>= S 77)) 'B-)
        ((and (< S 77) (>= S 73)) 'C+)
        ((and (< S 73) (>= S 70)) 'C)
        ((and (< S 70) (>= S 60)) 'D)
        ((< S 60)'F)))

;Solution to Problem 7
(defun GT (A B)
    (and (numberp A) (numberp B) (> A B)))

;Solution to Problem 8
(defun SAME-PARITY (X Y)
    (or (and (integerp X) (integerp Y) (evenp X) (evenp Y)) (and (integerp X) (integerp Y) (oddp X) (oddp Y))))

;Solution to Problem 9
(defun SAFE-DIV (A B)
    (and (numberp A) (numberp B) (not (zerop B)) (/ A B)))
