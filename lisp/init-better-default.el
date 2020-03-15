;;-----------------------------------
;;change default setting to be better
;;-----------------------------------
(global-auto-revert-mode 1) ;; 自动加载外部修改过的文件
(setq auto-save-mode nil) ;; 关闭自动保存
(require 'popwin)
(popwin-mode 1) ;; 光标自动移动到新窗口

(global-company-mode 1)
(setq ring-bell-function 'ignore)

(provide 'init-better-default)