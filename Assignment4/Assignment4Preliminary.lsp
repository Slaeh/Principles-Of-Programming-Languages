;Harjit Liyal


;Problem A 1
(defun my-sum (L)    
(let ((X (sum (cdr L)))
     (Y (car L)))
     (+ X Y)))

;Problem B 2
(defun my-neg-nums (L)
(let ((X (neg-nums (cdr L)))) 
     (if (minusp (car L)) (cons (car L) X) X)))

;Problem C 3
(defun my-inc-list-2 (L N)
(let ((X (inc-list-2 (cdr L) N)))
     (cons (+ (car L) N) X)))

;Problem D 4
(defun my-insert (N L)                 
(let ((X (insert N (cdr L))))
     (if (> (car L) N) (cons N L) (cons (car L) X))))

;Problem E 5
(defun my-isort (L) 
(let ((X (isort (cdr L))))
 (insert (car L) X)))

;Problem F 6
(defun my-split-list (L)  
(let ((X (split-list (cdr L))))
     (list (cons (car L) (cadr X)) (car X))))

;Problem G 7
(defun my-partition (L P) 
(let ((X (partition (cdr L) P)))
     (if (>= (car L) P) 
          (list (car X) (cons (car L) (cadr X))) 
          (list(cons (car L) (car X)) (cadr X)))))
          