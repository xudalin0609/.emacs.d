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
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/") t)
  )

(defun initialize-package()
  (unless nil  ;;package--initialized
    (setq package-enable-at-startup nil)
    (package-initialize)))


;;add whatever packages you want here
(defvar xudl/packages '(
				 company
				 monokai-theme
				 hungry-delete
				 swiper
				 counsel
				 smartparens
				 exec-path-from-shell
				 ;; popwin
				 ;; python elpy
			         elpy
				 evil
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
