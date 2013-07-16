;;; init-ede-project.el --- Configuration for initialize my custom ede projects
;;; Commentary:
;; Configuration for initialize my custom ede projects
;;; Code:

(global-ede-mode t)
(ede-enable-generic-projects)

(defvar ede-projects-dir (expand-file-name "ede-projects"
                                         (file-name-directory load-file-name))
  "This is folder contains configurations for my custom projects")
(defvar rocket-through-file (expand-file-name "rocket-througt.el" ede-projects-dir)
  "This is configuration file for Rocket Through Project")
(load rocket-through-file)

(provide 'init-ede-project)
;;; init-ede-project.el end here
