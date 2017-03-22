(import
	(scheme base)
	(scheme write)
	(scheme process-context))

(define (yig-run-repl)
	(display "yig chybi REPL")
	(newline)
	(display "--------------")
	(newline)
	(define (prompt)
		(display "> ")
		(read-line))
	(prompt)
	(display "error: NYI... exiting")
	(newline))

(let ((argc (length (command-line))))
	(cond ((= argc 1) (yig-run-repl))))



