;;; init-ede-project.el --- Configuration for initialize my custom ede projects
;;; Commentary:
;; Configuration for initialize my custom ede projects
(require 'semantic/bovine/c)
(require 'eassist)

;;; Code:
(when (cedet-ectag-version-check t)
  (semantic-load-enable-primary-ectags-support))

;; SRecode
(global-srecode-minor-mode 1)

(add-to-list 'semantic-default-submodes 'global-semanticdb-minor-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-mru-bookmark-mode)
(add-to-list 'semantic-default-submodes 'global-semanticdb-minor-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-idle-scheduler-mode)
;;(add-to-list 'semantic-default-submodes 'global-semantic-stickyfunc-mode)
(add-to-list 'semantic-default-submodes 'global-cedet-m3-minor-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-highlight-func-mode)

(semanticdb-enable-gnu-global-databases 'c-mode t)
(semanticdb-enable-gnu-global-databases 'c++-mode t)

(semantic-mode t)
(global-ede-mode t)
(ede-enable-generic-projects)

(defvar ede-projects-dir (expand-file-name "ede-projects"
                                         (file-name-directory load-file-name))
  "This is folder contains configurations for my custom projects")
;; (defvar rocket-through-file (expand-file-name "rocket-througt.el" ede-projects-dir)
;;   "This is configuration file for Rocket Through Project")
;; (load rocket-through-file)

(defvar victorian-rush-hour-file (expand-file-name "victorianrushhour.el" ede-projects-dir)
  "This is configuration file for Victorian Rush Hour Project")
(load victorian-rush-hour-file)

(require 'cedet-java)
(require 'ecb)
(provide 'init-ede-project)
;;; init-ede-project.el end here
