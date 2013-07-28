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

(semantic-add-system-include "/opt/cocos2d-x/cocos2dx" 'c++-mode)
(semantic-add-system-include "/opt/cocos2d-x/cocos2dx/platform/third_party/linux" 'c++-mode)
(semantic-add-system-include "/opt/cocos2d-x/cocos2dx/platform/third_party/linux/libfreetype2" 'c++-mode)
(semantic-add-system-include "/opt/cocos2d-x/cocos2dx/platform/third_party/linux/glew-1.7.0/glew-1.7.0/include" 'c++-mode)
(semantic-add-system-include "/opt/cocos2d-x/cocos2dx/platform/third_party/linux/libxml2" 'c++-mode)
(semantic-add-system-include "/opt/cocos2d-x/cocos2dx/platform/third_party/linux/libjpeg" 'c++-mode)
(semantic-add-system-include "/opt/cocos2d-x/cocos2dx/platform/linux" 'c++-mode)
(semantic-add-system-include "/opt/cocos2d-x/cocos2dx/platform" 'c++-mode)
(semantic-add-system-include "/opt/cocos2d-x/cocos2dx/cocoa" 'c++-mode)
(semantic-add-system-include "/opt/cocos2d-x/cocos2dx/include" 'c++-mode)
(semantic-add-system-include "/opt/cocos2d-x/cocos2dx/kazmath/include" 'c++-mode)
(semantic-add-system-include "/opt/cocos2d-x/CocosDenshion/include" 'c++-mode)
(semantic-add-system-include "/opt/cocos2d-x/extensions" 'c++-mode)

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

(provide 'init-ede-project)
;;; init-ede-project.el end here
