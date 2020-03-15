;;  __        __             __   ___
;; |__)  /\  /  ` |__/  /\  / _` |__
;; |    /~~\ \__, |  \ /~~\ \__> |___
;;                      __   ___        ___      ___
;; |\/|  /\  |\ |  /\  / _` |__   |\/| |__  |\ |  |
;; |  | /~~\ | \| /~~\ \__> |___  |  | |___ | \|  |





;;----------------------

(require 'cl)

(when (>= emacs-major-version 24)
  (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
  )


(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))


;;add whatever packages you want here
(defvar xudl/packages '(
				 company
				 monokai-theme
				 hungry-delete
				 swiper
				 counsel
				 smartparens
				 exec-path-from-shell
				 popwin	 

				 )  "Default packages")

(setq package-selected-packages xudl/packages)

(defun xudl/packages-installed-p ()
  (loop for pkg in xudl/packages
	when (not (package-installed-p pkg)) do (return nil)
	finally (return t)))

(unless (xudl/packages-installed-p)
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (dolist (pkg xudl/packages)
    (when (not (package-installed-p pkg))
      (package-install pkg))))

;; let emacs could find the execuable
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))


(provide 'init-packages)
