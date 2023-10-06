(asdf:defsystem #:enhanced-unwind-protect

  :author "Jean-Philippe Paradis <hexstream@hexstreamsoft.com>"

  :license "Unlicense"

  :description "Provides an enhanced UNWIND-PROTECT that makes it easy to detect whether the protected form performed a non-local exit or returned normally."

  :depends-on ()

  :version "1.0"
  :serial cl:t
  :components ((:file "package")
               (:file "main"))

  :in-order-to ((asdf:test-op (asdf:test-op #:enhanced-unwind-protect_tests))))
