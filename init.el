(package-initialize)

;; (Add-to-list 'load-path "~/.emacs.d/lisp/")
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(defun open-my-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

;; Package Management
;;------------------------------------------------

(require 'init-packages)
(require 'init-better-default)
(require 'init-ui)
(require 'init-python)
(require 'init-evil)
(require 'init-org)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (use-package evil flycheck elpy company-jedi company monokai-theme hungry-delete swiper counsel smartparens exec-path-from-shell popwin))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
