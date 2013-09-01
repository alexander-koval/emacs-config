;;; victorianrushhour.el --- Configuration for VictorianRushHour project
;;; Commentary:
;; Configuration for VictorianRushHour project
;;; Code:
(require 'ede/cpp-root)

(defvar cocos2dx-dir "/opt/cocos2d-x/cocos2dx")
(defvar cocosdenshion-dir "/opt/cocos2d-x/CocosDenshion")
(defvar extensions-dir "/opt/cocos2d-x/extensions")

(ede-cpp-root-project "VictorianRushHour"
                      :name "Victorian Rush Hour"
                      :version "0.1"
                      :file "~/Workspace/C++/Emacs/VictorianRushHour/VictorianRushHour/Makefile"
                      :include-path '("/"
                                      "/linux"
                                      "/Classes"
                                      )
                      :system-include-path `(,(concat cocos2dx-dir "/")
                                             ,(concat cocos2dx-dir "/include/")
                                             ,(concat cocos2dx-dir
                                                      "/kazmath/include/")
                                             ,(concat cocos2dx-dir "/platform/")
                                             ,(concat cocos2dx-dir
                                                      "/platform/linux/")
                                             ,(concat cocos2dx-dir
                                                      "/platform/third_party/linux/")
                                             ,(concat cocos2dx-dir
                                                      "/platform/third_party/linux/libfreetype2/")
                                             ,(concat cocos2dx-dir "/cocoa/")
                                             ,(concat cocos2dx-dir
                                                      "/platform/third_party/linux/glew-1.7.0/glew-1.7.0/include/")
                                             ,(concat cocos2dx-dir
                                                      "/platform/third_party/linux/libxml2/")
                                             ,(concat cocos2dx-dir
                                                      "/platform/third_party/linux/libjpeg/")
                                             ,(concat cocosdenshion-dir "/include/")
                                             ,(concat cocos2dx-dir "/extensions/"))
                      :targets
                      (list
                       (ede-cpp-root-target "victorian-rush-hour-linux"
                                            :name "victorian-rush-hour-linux"
                                            :path ""
                                            :source '("Classes/AppDelegate.cpp"
                                                      "Classes/Block.cpp"
                                                      "Classes/GameLayer.cpp"
                                                      "Classes/GameSprite.cpp"
                                                      "Classes/Player.cpp"
                                                      "Classes/Terrain.cpp"
                                                      "linux/main.cpp")
                                            :versionsource '("Classes/AppDelegate.h"
                                                             "Classes/Block.h"
                                                             "Classes/GameLayer.h"
                                                             "Classes/GameSprite.h"
                                                             "Classes/Player.h"
                                                             "Classes/Terrain.h")))
                      :spp-table '(("CC_DLL" . "")
                                   ("EXPORT_DLL" . ""))
                      :spp-files  `(,(concat cocos2dx-dir
                                             "/platform/linux/CCPlatformDefine.h")
                                    ,(concat cocos2dx-dir
                                             "/platform/CCPlatformMacros.h")))
;; :spp-files '("/opt/cocos2d-x/cocos2dx/platform/linux/CCPlatformDefine.h"
;;              "/opt/cocos2d-x/cocos2dx/platform/CCPlatformMacros.h"))

(provide 'victorianrushhour)
;;; victorianrushhour.el ends here
