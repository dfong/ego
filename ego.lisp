(defun S(i j c)(list(write-string(subseq "(defun S(i j c)(list(write-string(subseq i j))(write-char(code-char c))))(S 0 41 34)(S 0 109 34)(S 40 109 10)" i j))
(write-char(code-char c))))(S 0 41 34)(S 0 109 34)(S 40 109 10)
