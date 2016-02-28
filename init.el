;; Bootstrapping

;; I want to divide my configs into seperate files in order to keep things clean
(add-to-list 'load-path "~/.emacs.d/lisp/")

;; I switch between linux and osx, so keep track of what I am currently working on
(defconst *is-a-mac* (eq system-type 'darwin))

(menu-bar-mode -1)
(global-linum-mode 1)
(setq linum-format "%d ")
(setq inhibit-startup-message t)

(setq c-basic-offset 4) 
(setq tab-width 4)          
(setq indent-tabs-mode nil) ; Force use of spaces

;; Bootstrap

(require 'init-melpa)
(require 'init-themes)
(require 'init-exec-path)
(require 'init-elpy)
(require 'init-flycheck)
(require 'init-magit)
