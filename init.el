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
(require 'init-org)
