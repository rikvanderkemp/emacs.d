(require-package 'markdown-mode)

(with-eval-after-load 'whitespace-cleanup-mode
  (push 'markdown-mode whitespace-cleanup-mode-ignore-modes))


(provide 'init-markdown)
