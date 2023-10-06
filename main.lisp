(in-package #:enhanced-unwind-protect)

(defmacro unwind-protect ((&optional (abortp nil abortp-supplied-p)) protected-form &body cleanup-forms)
  (if abortp-supplied-p
      (let ((abortp-var (gensym (string '#:abortp))))
        `(let ((,abortp-var t))
           (cl:unwind-protect (multiple-value-prog1 ,protected-form
                                (setf ,abortp-var nil))
             ,(etypecase abortp
                (boolean
                 `(,(if abortp 'when 'unless)
                   ,abortp-var
                   ,@cleanup-forms))
                (symbol
                 `(symbol-macrolet ((,abortp ,abortp-var))
                    ,@cleanup-forms))))))
      `(cl:unwind-protect ,protected-form ,@cleanup-forms)))
