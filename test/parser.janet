(import testament :prefix "" :exit true)
(import ../build/parser-claret :as claret)


(deftest parser-init
  (def p (claret/parser))
  (is (= :claret/parser (type p))))


(deftest parser-initial-state
  (def p (claret/parser))
  (def status (:status p))
  (is (= :root status)))


(deftest parser-parsing
  (def p (claret/parser))
  (:consume p "(+ 1 1)")
  (is (= '(+ 1 1) (:produce p))))


(run-tests!)
