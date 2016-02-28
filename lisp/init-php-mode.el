(require-package 'php-mode)

;; See Installion on https://github.com/ejmr/php-mode
(with-eval-after-load 'php-mode
  '(require 'php-ext))

(provide 'init-php-mode)
