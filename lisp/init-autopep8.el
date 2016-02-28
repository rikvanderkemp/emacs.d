;; Fix simple python issues on save with autopep8
(require-package 'py-autopep8)
(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)

(provide 'init-autopep8)
