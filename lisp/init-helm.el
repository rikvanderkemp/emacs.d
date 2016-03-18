(require-package 'helm)

(require 'helm-config)

(helm-mode 1)
(helm-autoresize-mode 1)

(global-set-key (kbd "M-x")                          'undefined)
(global-set-key (kbd "M-x")                          'helm-M-x)
(global-set-key (kbd "C-x r b")                      'helm-filtered-bookmarks)
(global-set-key (kbd "C-x C-f")                      'helm-find-files)

;; Addons
(require-package 'helm-projectile)
(helm-projectile-on)

(provide 'init-helm)
