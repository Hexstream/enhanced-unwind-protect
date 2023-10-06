(asdf:defsystem #:enhanced-unwind-protect_tests

  :author "Jean-Philippe Paradis <hexstream@hexstreamsoft.com>"

  :license "Unlicense"

  :description "enhanced-unwind-protect unit tests."

  :depends-on ("enhanced-unwind-protect"
               "parachute")

  :serial cl:t
  :components ((:file "tests"))

  :perform (asdf:test-op (op c) (uiop:symbol-call '#:parachute '#:test '#:enhanced-unwind-protect_tests)))
