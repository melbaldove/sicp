(define (f-recursive n)
  (cond ((< n 3) n)
        (else (+ (f-recursive (- n 1)) (* 2 (f-recursive (- n 2))) (* 3 (f-recursive (- n 3)))))))

(define (f-iterative n)
  (f-iter 2 1 0 n))

(define (f-iter a b c count)
  (if (= count 0) c
    (f-iter (+ a (* 2 b) (* 3 c)) a b (- count 1))))
