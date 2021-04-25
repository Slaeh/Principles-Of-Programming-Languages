;This file can be viewed on Euclid using less -x5 liyal-4.lsp
;Harjit Liyal


;Solution to Problem 1 
(defun sum (A)
(if (null A) 0
     (+ (sum (cdr A)) (car A))))

;Solution to Problem 2
(defun neg-nums (L)
(if (null L) NIL
     (let ((Y (neg-nums (cdr L))))
          (if (minusp (car L)) (cons (car L) Y) Y))))

;Solution to Problem 3
(defun inc-list-2 (L N)
(if (null L) NIL
     (let ((A (inc-list-2 (cdr L) N)))
     (cons (+ (car L) N) A))))

;Solution to Problem 4
(defun insert (N L)
(if (null L) (list N) 
     (let ((B (insert N (cdr L))))
     (if (>= (car L) N) (cons N L) (cons (car L) B)))))

;Solution to Problem 5 
(defun isort (L)
     (if (null L) NIL
          (let ((C (isort (cdr L))))
               (insert (car L) C))))
     
;Solution to Problem 6
(defun split-list (L)
     (if (null L) (list NIL NIL)
     (let ((Y (split-list (cdr L))))
     (list (cons (car L) (cadr Y)) (car Y)))))

;Solution to Problem 7
(defun partition (L P)
     (if (null L) (list NIL NIL)
     (let ((A (partition (cdr L) P)))
     (if (< (car L) P) 
          (list (cons (car L) (car A)) (cadr A))
          (list (car A) (cons (car L) (cadr A)))))))

;Solution to Problem 8
(defun POS (E L)  
     (COND ((ENDP L) 0)                        
           ((EQUAL E (CAR L)) 1)                        
           (T (LET ((A (POS E (CDR L))))
               (if (zerop A) 0 (+ A 1))))))

;Solution to Problem 9
(defun split-nums (N)
    (if (zerop N) (list '(0) NIL)
        (let ((X (split-nums (- N 1))))
            (if (evenp N)
                (cons (cons N (first X)) (rest X))
                    (list (car X) (cons N (cadr X)))))))

;Solution to Problem 10
(defun set-union (X Y)
     (cond ((null Y) X)
     ((member (car Y) X) (set-union X (cdr Y))) 
     (t (set-union (cons (car Y) X) (cdr Y)))))

;Solution to Problem 11
(defun set-remove (A B)
     (cond ((null B) nil)
           ((equal (first B) A) (rest B))
           (t (cons (first B) (set-remove A (rest B))))))

;Solution to Problem 12 
(defun set-excl-union (s1 s2)
     (if (null s2) s1
     (let ((X (set-excl-union s1 (rest s2))))
     (if (not (member (car s2) s1)) 
     (append X (list (car s2)))
     (set-remove (car s2) X)))))

;Solution to Problem 13
(defun singletons (e)
    (if (null e) NIL
    (let ((X (singletons (rest e))))
    (if (not (member (car e) (rest e)))
        (append (list (first e)) X)
        (set-remove (car e) X)))))
        