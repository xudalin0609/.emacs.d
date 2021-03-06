;; (if (eq system-type 'darwin)
;;     ;; MacOS的python3目录
;;     (setq python3Dic "/usr/local/bin")
;;   ;; 其他Linux系统的python3目录
;;   (setq python3Dic "/usr/bin"))


;; 自定义一套开发环境
(defun my-python-mode-config ()
  (setq
  ;; 缩进长度4个空格
  python-indent 4     
  ;; 使用空格而不是tab进行缩进
  indent-tabs-mode nil
  ;; 如果有tab的话就解释成4个空格
  default-tab-width 4
  ;; 设置 run-python 的参数，主要是python3解释器的路径，不然默认用的是python2
  ;; python-shell-interpreter (concat python3Dic "/python3")
  ;; python-shell-completion-native-enable nil
  ;; py-python-command (concat python3Dic "/python3")
  ;; exec-path (append exec-path '(python3Dic))
  ;; python-shell-completion-native-disabled-interpreters '("python")))
  ))

;; 在每次进入python-mode的时候加载自定义的python开发环境
(add-hook 'python-mode-hook 'my-python-mode-config)

;; (use-package company-jedi
;;   :ensure t
;;   :init
;;   ;; 对company-jedi的一些初始化设置
;;   (progn
;;   ;; 按下字符就弹出补全，0延迟
;;   (setq jedi:get-in-function-call-delay 0)
;;   ;; 进入pyhton-mode的时候初始化jedi
;;   (add-hook 'python-mode-hook 'jedi:setup)
;;   ;; 在打出点的时候弹出补全
;;   (setq jedi:complete-on-dot t)
;;   ;; 补全的时候识别简写
;;   (setq jedi:use-shortcuts t)
;;   ;; 补全列表循环
;;   (setq company-selection-wrap-around t)
;;   ;; 虚拟环境
;;   ;; (setq jedi:environment-root "jedi")))
;;   ))


;;启用elpy的python开发环境
;; (use-package elpy
;;   :ensure t
;;   :commands elpy-enable
;;   :hook
;;   (python-mode . elpy-mode))

(use-package elpy
  :ensure t
  :init
  ;; (setq indent-tabs-mode nil)
  ;; 如果有tab的话就解释成4个空格
  (setq-default indent-tabs-mode nil)
  (elpy-enable))


;; 代码检查
;; (use-package flycheck
;;   :ensure t
;;   :hook
;;   (progn
;;     (python-mode . flycheck-mode)))

(provide 'init-python)
