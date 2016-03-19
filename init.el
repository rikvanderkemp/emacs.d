;; Bootstrapping

;; I want to divide my configs into seperate files in order to keep things clean
(add-to-list 'load-path "~/.emacs.d/lisp/")

;; I switch between linux and osx, so keep track of what I am currently working on
(defconst *is-a-mac* (eq system-type 'darwin))

;(menu-bar-mode -1)
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
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#272822" "#F92672" "#A6E22E" "#E6DB74" "#66D9EF" "#FD5FF0" "#A1EFE4" "#F8F8F2"])
 '(compilation-message-face (quote default))
 '(custom-safe-themes
   (quote
    ("38ba6a938d67a452aeb1dada9d7cdeca4d9f18114e9fc8ed2b972573138d4664" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default)))
 '(fci-rule-color "#3E3D31")
 '(highlight-changes-colors (quote ("#FD5FF0" "#AE81FF")))
 '(highlight-tail-colors
   (quote
    (("#3E3D31" . 0)
     ("#67930F" . 20)
     ("#349B8D" . 30)
     ("#21889B" . 50)
     ("#968B26" . 60)
     ("#A45E0A" . 70)
     ("#A41F99" . 85)
     ("#3E3D31" . 100))))
 '(magit-diff-use-overlays nil)
 '(pos-tip-background-color "#A6E22E")
 '(pos-tip-foreground-color "#272822")
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#F92672")
     (40 . "#CF4F1F")
     (60 . "#C26C0F")
     (80 . "#E6DB74")
     (100 . "#AB8C00")
     (120 . "#A18F00")
     (140 . "#989200")
     (160 . "#8E9500")
     (180 . "#A6E22E")
     (200 . "#729A1E")
     (220 . "#609C3C")
     (240 . "#4E9D5B")
     (260 . "#3C9F79")
     (280 . "#A1EFE4")
     (300 . "#299BA6")
     (320 . "#2896B5")
     (340 . "#2790C3")
     (360 . "#66D9EF"))))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   (unspecified "#272822" "#3E3D31" "#A20C41" "#F92672" "#67930F" "#A6E22E" "#968B26" "#E6DB74" "#21889B" "#66D9EF" "#A41F99" "#FD5FF0" "#349B8D" "#A1EFE4" "#F8F8F2" "#F8F8F0")))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
