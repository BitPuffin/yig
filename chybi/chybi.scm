(import
  (scheme base)
  (scheme write)
  (scheme process-context))

(define (run-repl)
  (display "Let's get yiggy with chybi!")
  (newline)
  (display "---------------------------")
  (newline)
  (define (prompt)
    (display "> ")
    (read-line))
  (define (read-more)
    (read-line))
  (define (show result)
    (display result)
    (newline))
  (define (repl)
    (let ((line (prompt)))
        (unless (or (equal? line "exit") (equal? line "quit"))
          (show line)
          (repl))))
  (repl))

(let ((argc (length (command-line))))
  (cond ((= argc 1) (run-repl))))



