(require-package 'js2-mode)

;; http://elpa.gnu.org/packages/js2-mode.html

;; Set as the JS major mode
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))


(provide 'init-js2-mode)
