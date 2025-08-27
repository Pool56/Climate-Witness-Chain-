; -------------------------------
; Data source (imported from Excel CSV)
; Each row becomes a fact like (value <number>)
; -------------------------------

(value 12)
(value 15)
(value 18)
(value 22)
(value 25)

; -------------------------------
; 1) Collect all values into a list
; -------------------------------

(= (all_values) (collect (map (lambda ($x) (nth $x 1)) (value _))))

; -------------------------------
; 2) Mean (average)
; -------------------------------

(= (mean)
   (let (($vals (all_values))
         ($n (len (all_values))))
     (if (> $n 0) (div (sum $vals) $n) 0)))

; -------------------------------
; 3) Variance
;    Formula: variance = Σ((xi - mean)^2) / n
; -------------------------------

(= (variance)
   (let (($vals (all_values))
         ($m (mean))
         ($n (len (all_values))))
     (if (> $n 0)
         (div (sum (map (lambda ($x) (pow (- $x $m) 2)) $vals)) $n)
         0)))

; -------------------------------
; 4) Standard Deviation
;    Formula: std_dev = sqrt(variance)
; -------------------------------

(= (std_dev)
   (sqrt (variance)))

; -------------------------------
; 5) Example Queries
; -------------------------------
;   (mean)      → average of Excel values
;   (variance)  → variance
;   (std_dev)   → standard deviation
