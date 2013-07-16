;;; Commentary:
;;; Code:
(require 'auto-complete)
(require 'auto-complete-config)
(require 'semantic/senator)
(require 'semantic/ia)

(defun ac-semantic-candidate (prefix)
  (if (memq major-mode
            '(c-mode c++-mode jde-mode java-mode))
      (mapcar 'semantic-tag-name
              (ignore-errors
                (or (semantic-ia-get-completions
                     (semantic-analyze-current-context) (point))
                    (senator-find-tag-for-completion (regexp-quote prefix)))))))

(defvar ac-source-semantic
  '((candidates . (lambda () (all-completions ac-prefix (ac-semantic-candidate ac-prefix)))))
  "Source for semantic.")

(provide 'auto-complete-semantic)
