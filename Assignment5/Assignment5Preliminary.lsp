;Harjit Liyal

;Solution to Problem A 1 
(defun my-index (N L)  
(let ((X (index (- N 1) (cdr L))))  
     X))

;Solution to Problem B 2 
(defun my-min-first (L)                        
(let ((X (min-first (cdr L)))) 
     (if (>= (car X) (car L)) L 
     (cons (car X) (cons (car L) (cdr X))))))

;Solution to Problem C 3 
(defun my-ssort (L)                           
(let* ((L1 (min-first L))                  
      (X (ssort (cdr L1)))) 
      (cons (car L1) X)))
