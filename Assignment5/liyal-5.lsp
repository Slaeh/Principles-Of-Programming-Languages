;This file can be viewed on Euclid using less -x4 liyal-5.lsp
;Harjit Liyal

;Solution to Problem 1 
(defun index (N L) 
    (cond
        ((NULL L) 'ERROR)
        ((equal N 1) (car L))
        (T (index (- N 1) (cdr L)))))


;Solution to Problem 2 
(defun min-first (A)
    (if (endp (cdr A)) A
        (let ((X (min-first (cdr A)))) 
        (if (>= (car X) (car A)) A 
        (cons (car X) (cons (car A) (cdr X)))))))


;Solution to Problem 3
(defun ssort (B)
    (if (endp (cdr B)) B
        (let* ((L1 (min-first B))                  
              (L (ssort (cdr L1)))) 
            (cons (car L1) L))))


;Solution to Problem 4 
(defun partition (L P)
     (if (null L) (list NIL NIL)
     (let ((A (partition (cdr L) P)))
     (if (< (car L) P) 
          (list (cons (car L) (car A)) (cadr A))
          (list (car A) (cons (car L) (cadr A)))))))

(defun QSORT (L) 
    (IF (ENDP L) NIL                                  
        (LET ((PL (PARTITION (CDR L) (CAR L))))
        (append (QSORT (car PL)) (cons (car L)(QSORT (cadr PL)))))))


;Solution to Problem 5
(defun merge-lists (X Y)
    (if (or (ENDP X) (ENDP Y)) (or X Y) 
    (if (< (car X) (car Y)) (cons (car X) (merge-lists (cdr X) Y))
    (cons (car Y) (merge-lists X (cdr Y))))))


;Solution to Problem 6 
(defun split-list (L)
     (if (null L) (list NIL NIL)
     (let ((Y (split-list (cdr L))))
     (list (cons (car L) (cadr Y)) (car Y)))))

(defun msort (A)
    (if (null (cdr A)) A
        (let ((B (split-list A)))
        (if (null (cadr B))
            (merge-lists (car B) (cadr B))
            (merge-lists (msort (car B)) (msort (cadr B)))))))


;Solution to Problem 7
(defun remove-adj-dupl (A)
  (COND ((NULL A) nil)
        ((null (cdr A)) A)
        (t (if (equal (car A) (cadr A))
        (remove-adj-dupl (cdr A))
        (cons (car A) (remove-adj-dupl (cdr A)))))))


;Solution to Problem 8
(defun unrepeated-elts (A)
  (cond ((null A) nil)
        ((or (endp (cdr A)) (not (equal (car A) (cadr A)))) (cons (car A) (unrepeated-elts (cdr A))))
        ((or (endp (cddr A)) (not (equal (car A) (caddr A)))) (unrepeated-elts (cddr A)))
        (t (unrepeated-elts (cdr A)))))


;Solution to Problem 9 
(defun repeated-elts (A)
  (cond ((null A) nil)
        ((or (endp (cdr A)) (not (equal (car A) (cadr A)))) (repeated-elts (cdr A)))
        ((or (endp (cddr A)) (not (equal (car A) (caddr A)))) (cons (car A) (repeated-elts (cddr A))))
        (t (repeated-elts (cdr A)))))


;Solution to Problem 10 
(defun count-first (A)
    (cond
        (t (if (equal (car A) (cadr A))
        (+ 1 (count-first (rest A))) 1))))

(defun count-second (B)
    (cond
        ((null B) nil)
        (t (if (equal (car B) (cadr B))
        (count-second (rest B))
        (rest B)))))

(defun count-repetitions (L1)
    (cond
        ((null L1) nil)
        (t (let ((A (count-first L1))
        (B (count-second L1)))
        (append (list (cons A (list (car L1)))) (count-repetitions B))))))


;Solution to Problem 11 
(defun subset (X Y)
    (cond
        ((null Y) nil)
        (t (if (funcall X (car Y))
        (cons (car Y) (subset X (rest Y)))
        (subset X (rest Y))))))


;Solution to Problem 12
(defun our-some (X Y)
    (cond
        ((null Y) nil)
        (t (if (funcall X (car Y)) Y
        (our-some X (rest Y))))))

(defun our-every (X Y)
    (cond
        ((null Y) t)
        (t (if (funcall X (car Y))
        (our-every X (rest Y)) nil))))


;Solution to Problem 13
(defun partition1 (A L1 B)
    (if (endp L1) (list nil nil)
    (let ((C (partition1 A (cdr L1) B)))
        (if (funcall A (car L1) B)
            (list (cons (car L1) (car C)) (cadr C))
            (list (car C) (cons (car L1) (cadr C)))))))

(defun QSORT1 (A L2)
       (if (endp L2) NIL
           (let ((L3 (PARTITION1 A (CDR L2) (CAR L2))))
                (append (QSORT1 A (car L3)) (cons (car L2) (QSORT1 A (cadr L3)))))))


;Solution to Problem 14 
(defun helper (X Y Z)
    (cond
        ((null X) nil)
        (t (if (equal Z 1)
        (cons (funcall Y (car X)) (rest X) )
        (cons (car X) (helper (rest X) Y (- Z 1)))))))


(defun calc-length (X Y A)
    (cond
        ((null X) nil)
        ((equal A 0) nil)
        (t (cons (helper X Y A) (calc-length X Y (- A 1))))))

(defun foo (X Y)
    (cond
        ((null X) nil)
        (t (let ((A (length Y)))
        (let ((B (calc-length Y X A)))
        (reverse B))))))


;Solution to Problem 15a
(defun tr-add (X Y)
    (cond
        ((null X) Y)
        (t (tr-add (rest X) (+ Y (car X))))))

(defun tr-mul (X Y)
    (cond
        ((null X) Y)
        (t (tr-mul (rest X) (* Y (car X))))))

(defun tr-fac (Z Y)
    (cond
        ((null Z) Y)
        ((zerop Z) Y)
        (t (tr-fac (- Z 1) (* Y Z))))) 


;Solution to 15b 
(defun slow-primep (A)
    (cond
        ((equal (mod (tr-fac (- A 1) 1) A) (- A 1)) t)
        (t nil)))


;Solution to Problem 16a
(defun transpose1 (A)
    (cond ((null (cdr A)) (mapcar #'list (car A)))
        (t (mapcar #'cons (car A) (transpose1 (cdr A))))))


;Solution to Problem 16b
(defun transpose2 (B)
  (cond ((null (cdar B)) (list (mapcar #'car B)))
        (t (cons (mapcar #'car B) (transpose2 (mapcar #'cdr B))))))

;Solution to Problem 16c 
(defun transpose3 (C)
    (apply #'mapcar #'list C))
