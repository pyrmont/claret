(declare-project
  :name "Claret Parser"
  :description "A Clojure-inspired parser for the Janet VM"
  :author "Michael Camilleri"
  :license "MIT"
  :url "https://github.com/pyrmont/claret"
  :repo "git+https://github.com/pyrmont/claret"
  :dependencies ["https://github.com/pyrmont/testament"])


(def cflags
  (case (os/which)
    :windows ["/Iutf8.h"]
    ["-Iutf8.h" "-std=c99" "-Wall" "-Wextra" "-O3"]))


(def lflags
  [])


(declare-native
  :name "claret-parser"
  :cflags cflags
  :lflags lflags
  :headers ["src/claret/parser.h"]
  :source ["src/claret/parser.c"])
