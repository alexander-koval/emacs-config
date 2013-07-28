;;; victorianrushhour.el --- Configuration for VictorianRushHour project
;;; Commentary:
;; Configuration for VictorianRushHour project
;;; Code:
(ede-cpp-root-project "RocketThrougt"
                      :name "Rocket Througt"
                      :file "~/Workspace/C++/Emacs/VictorianRushHour/VictorianRushHour/Makefile"
                      :include-path '("/"
                                     "/linux"
                                     "/Classes"
                                     "/Classes/victorianrushhour"
                                     )
                      :system-include-path '("/opt/cocos2d-x/cocos2dx"
                                            "/opt/cocos2d-x/cocos2dx/platform/third_party/linux"
                                            "/opt/cocos2d-x/cocos2dx/platform/third_party/linux/libfreetype2"
                                            "/opt/cocos2d-x/cocos2dx/cocoa"
                                            "/opt/cocos2d-x/cocos2dx/include"
                                            "/opt/cocos2d-x/cocos2dx/platform"
                                            "/opt/cocos2d-x/cocos2dx/platform/linux"
                                            "/opt/cocos2d-x/cocos2dx/platform/third_party/linux/glew-1.7.0/glew-1.7.0/include"
                                            "/opt/cocos2d-x/cocos2dx/platform/third_party/linux/libxml2"
                                            "/opt/cocos2d-x/cocos2dx/platform/third_party/linux/libjpeg"
                                            "/opt/cocos2d-x/cocos2dx/kazmath/include"
                                            "/opt/cocos2d-x/CocosDenshion/include"
                                            "/opt/cocos2d-x/extensions/")
                      )

(provide 'victorianrushhour)
;;; victorianrushhour.el ends here
