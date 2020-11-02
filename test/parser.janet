(import testament :prefix "" :exit true)
(import ../build/claret-syntax)


(deftest parser-init
  (def p (claret-syntax/parser))
  (is (= :claret/parser (type p))))


(deftest parser-initial-state
  (def p (claret-syntax/parser))
  (def status (:status p))
  (is (= :root status)))


(deftest parser-parsing
  (def p (claret-syntax/parser))
  (:consume p "(+ 1 1)")
  (is (= '(+ 1 1) (:produce p))))


(run-tests!)
