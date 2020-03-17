(require 'popwin)
(popwin-mode t) ;; 光标自动移动到新窗口
(global-company-mode t)
(global-linum-mode t)
(setq make-backup-files nil)
(setq ring-bell-function 'ignore)


(provide 'init-better-default)
