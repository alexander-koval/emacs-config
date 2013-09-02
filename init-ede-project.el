;;; init-ede-project.el --- Configuration for initialize my custom ede projects
;;; Commentary:
;; Configuration for initialize my custom ede projects
(require 'cedet)
(require 'eieio)
(require 'ede/source)
(require 'ede/base)
(require 'ede/auto)
(require 'ecb)
(require 'cedet-java)
;;(require 'sr-speedbar)
;;(require 'eassist)

;;; Code:
(when (cedet-ectag-version-check t)
  (semantic-load-enable-primary-ectags-support))

(global-ede-mode t)
(ede-enable-generic-projects)

(declare-function ede-commit-project "ede/custom")
(declare-function ede-convert-path "ede/files")
(declare-function ede-directory-get-open-project "ede/files")
(declare-function ede-directory-get-toplevel-open-project "ede/files")
(declare-function ede-directory-project-p "ede/files")
(declare-function ede-find-subproject-for-directory "ede/files")
(declare-function ede-project-directory-remove-hash "ede/files")
(declare-function ede-toplevel "ede/base")
(declare-function ede-toplevel-project "ede/files")
(declare-function ede-up-directory "ede/files")
(declare-function semantic-lex-make-spp-table "semantic/lex-spp")

(global-srecode-minor-mode t)

;;(global-set-key [f2] 'sr-speedbar-toggle)
(global-set-key (kbd "<f2>") 'ecb-toggle-ecb-windows)

(defun set-key-ede-mode-hook ()
  "Set up hot keys for simplify working in ede."
  (local-set-key (kbd "C-c , f") 'ede-find-file))

(add-hook 'c-mode-common-hook 'set-key-ede-mode-hook)

(defvar ede-projects-dir (expand-file-name "ede-projects"
                                         (file-name-directory load-file-name))
  "This is folder contains configurations for my custom projects.")
;; (defvar rocket-through-file (expand-file-name "rocket-througt.el" ede-projects-dir)
;;   "This is configuration file for Rocket Through Project")
;; (load rocket-through-file)

;; ;; ;;
(defvar victorian-rush-hour-file (expand-file-name "victorianrushhour.el" ede-projects-dir)
  "This is configuration file for Victorian Rush Hour Project.")
(load victorian-rush-hour-file)

(defvar rumble-file (expand-file-name "rumble.el" ede-projects-dir)
  "This is configuration file for Rumble Project.")
(load rumble-file)


(provide 'init-ede-project)
;;; init-ede-project.el ends here
