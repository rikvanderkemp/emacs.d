(require-package 'tern)
(require-package 'tern-auto-complete)


(eval-after-load 'tern
   '(progn
      (require 'tern-auto-complete)
      (tern-ac-setup)))

;; Hooking to js2-mode and js3 mode
(add-hook 'js2-mode 'tern-mode t)

(provide 'init-tern)
