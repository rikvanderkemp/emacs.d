(require-package 'buffer-move)
;; Some global shortcuts

;; Window movement

(global-set-key (kbd "<M-S-up>")     'buf-move-up)
(global-set-key (kbd "<M-S-down>")   'buf-move-down)
(global-set-key (kbd "<M-S-left>")   'buf-move-left)
(global-set-key (kbd "<M-S-right>")  'buf-move-right)

;; Window resize
(global-set-key (kbd "<C-S-right>")  'enlarge-window-horizontally)
(global-set-key (kbd "<C-S-left>")  'shrink-window-horizontally)

(provide 'init-shortcuts)
