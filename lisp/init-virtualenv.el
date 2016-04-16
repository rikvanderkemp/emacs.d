;; Documentation at https://github.com/porterjamesj/virtualenvwrapper.el
(require-package 'virtualenvwrapper)

(venv-initialize-interactive-shells) ;; interactive shell support
;;(venv-initialize-eshell)

(setq venv-location "/Users/wij/projects/python/environments/")

(provide 'init-virtualenv)
