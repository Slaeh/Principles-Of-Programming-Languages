;Harjit Liyal

;Solution to Problem 1 
(a) y   
(b) n   
(c) n   
(d) y   
(e) n   
(f) y   
(g) y

;Solution to Problem 2
(a) atom      
(b) list of 4 elements    
(c) neither
(d) neither   
(e) list of 2 elements    
(f) neither
(g) list of 3 elements    
(h) list of 2 elements

;Solution to Problem 3
(setq x '(a b c))
   (A B C)
   > (append x x)
   (A B C A B C)

;Solution to Problem 4
(QUOTE (QUOTE (A)))
   'a = (QUOTE A) ;Is a list of two symbols that evaluates to the symbol A.

;Solution to Problem 5
(a) (setq y (list 'a 'b))
   (b) (list 'd (car y))

;Solution to Problem 6
(defun sqr (side)
    (list (* 4 side) (* side side)))

;Solution to Problem 7
(defun quadratic (a b c)
    (list (/ (+ (- b)
        (sqrt (- (* b b) (* 4 a c))))
            (* 2 a))
            (/ (- (- b)
                (sqrt (- (* b b) (* 4 a c))))
            (* 2 a))))

;Solution to Problem 8
(defun area-of-circle (radius)
    (* pi radius radius))

;Solution to Problem 9
(defun ftoc (fahrenheit)
    (* (- fahrenheit 32.0) 5/9))

;Solution to Problem 10
(defun rotate-left (lst)
    (append (cdr lst) (list (car lst))))

;Solution to Problem 11
(defun square (x) (* x x))
    
    (defun euclidean-distance (p1 p2)
       (sqrt (+ (square (- (car p1) (car p2)))
                (square (- (cadr p1) (cadr p2))))))

;Solution to Problem 12
(defun head (lst) (car lst))
(defun tail (lst) (cdr lst))

;Solution to Problem 13
(defun switch (2-list)
    (list (cadr 2-list) (car 2-list)))

;Solution to Problem 14
70

;Solution to Problem 15
(a) (car (cdr (cdr E)))
(b) (car (cadr (cadr E))) = (car   (car (cdr   (car (cdr E)) )) )
(c) (car (cadr (cadr (car (car E))))) = (car (car (cdr (car (cdr (car (car E)))))))

;Solution to Problem 16
(a) (cons 'a (cons 'b (cons 'x (cons 'd nil))))

   (b) (x d) =                 (cons 'x
                                     (cons 'd 
                                           nil))
       Hence:
       (b (x d)) = (cons 'b
                         (cons (cons 'x
                                     (cons 'd 
                                           nil))
                               nil))

       Hence (a (b (x d))) =
       (cons 'a
             (cons (cons 'b
                         (cons (cons 'x
                                     (cons 'd 
                                           nil))
                               nil))
                   nil))

   (c) (b (x) d) =                  (cons 'b
                                          (cons (cons 'x nil)
                                                (cons 'd 
                                                      nil)))
       Hence:
       (a (b (x) d)) =  (cons 'a
                              (cons (cons 'b
                                          (cons (cons 'x nil)
                                                (cons 'd 
                                                       nil)))
                                    nil))
       Hence:
       (((a (b (x) d)))) =
           (cons (cons (cons 'a
                             (cons (cons 'b
                                         (cons (cons 'x nil)
                                               (cons 'd 
                                                     nil)))
                                   nil))
                        nil)
                  nil)

;Solution to Problem 17
(list (cons (list (first (first E)) 
                      (second (first E)))  
                (rest (rest (first E))))
          (cons 'a 
                (cons 'b 
                      (rest (rest (third E))))))

;Solution to Problem 18
(list (cons (first (first E)) 
                (cons 'a 
                      (rest (rest (first E)))))
          (second (second E))
          (third (third E))
          (cons (third (second E)) 
                (rest (rest (third E)))))

;Solution to Problem 19 
(list (append (first E) (list (second (second E)))) 
    (append (second E) (rest (rest (third E)))))

;Solution to Problem 20
(list (cons 'a (rest (first E)))
    (cons (first (first E)) 
        (cons (list (second (third E))
                    (third (third E)))
            (rest (rest (rest (third E)))))))
