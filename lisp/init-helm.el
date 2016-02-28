(require-package 'helm)

(require 'helm)

(helm-mode 1)
(helm-autoresize-mode 1)
(global-set-key (kbd "M-x") 'helm-M-x) ;; I want to use helm for M-x

(provide 'init-helm)
