;; Bootstrapping

;; I want to divide my configs into seperate files in order to keep things clean

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/lisp/")

;; I switch between linux and osx, so keep track of what I am currently working on
(defconst *is-a-mac* (eq system-type 'darwin))

(menu-bar-mode -1)
;(global-linum-mode 1)
;(setq linum-format "%d ")
(setq inhibit-startup-message t)

(setq c-basic-offset 4) 
(setq tab-width 4)          
(setq indent-tabs-mode nil) ; Force use of spaces

;; Moving backups files away from original directory
(setq backup-directory-alist
          `((".*" . ,temporary-file-directory)))

(setq auto-save-file-name-transforms
          `((".*" ,temporary-file-directory t)))


;; Bootstrap

(require 'init-melpa)
(require 'init-themes)
(require 'init-exec-path)
(require 'init-elpy)
(require 'init-flycheck)
(require 'init-magit)
(require 'init-autopep8)
(require 'init-helm)
(require 'init-web-mode)
(require 'init-php-mode)
(require 'init-markdown)
(require 'init-projectile)
(require 'init-expand-region)
(require 'init-emmet-mode)
(require 'init-scss-mode)
(require 'init-shortcuts)
(require 'init-auto-complete)
(require 'init-writeroom)
(require 'init-ox-reveal)
(require 'init-neotree)
(require 'init-tern)
(require 'init-js2-mode)
(require 'init-js3-mode)
(require 'init-powerline)
(require 'init-rust-mode)
(require 'init-lua-mode) ;; All related LUA packages are configured here as well
(require 'init-go) ;; All GO related config can be found here
(require 'init-virtualenv)
(require 'init-mastodon)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (emojify mastodon yaml-mode graphviz-dot-mode writeroom-mode web-mode virtualenvwrapper tern-auto-complete spacemacs-theme scss-mode rust-mode py-autopep8 powerline php-mode ox-reveal neotree monokai-theme markdown-mode magit lua-mode js3-mode js2-mode helm-projectile go-mode go-autocomplete flycheck expand-region exec-path-from-shell emmet-mode elpy buffer-move))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
