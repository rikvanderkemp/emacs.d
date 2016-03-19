(require-package 'js3-mode)

;;js3.el should be placed in your emacs include path. You'll need to
;;byte-compile js3-mode before using it - in emacs, M-x
;;byte-compile-file RET <path-to-js3.el> RET. Or on the command line:
;;emacs --batch -f batch-byte-compile js3.el If you want, js3-mode can
;;be configured using M-x customize-group RET js3-mode RET.

'(js3-auto-indent-p t)         ; it's nice for commas to right themselves.
'(js3-enter-indents-newline t) ; don't need to push tab before typing
'(js3-indent-on-enter-key t)   ; fix indenting before moving on

;; Hook into tern

(add-hook 'js3-mode 'tern-mode t)


(provide 'init-js3-mode)
