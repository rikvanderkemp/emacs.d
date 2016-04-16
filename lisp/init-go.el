(setenv "GOPATH" "/Users/wij/projects/golang")

(require-package 'go-mode)
(require-package 'go-autocomplete)

;; Some of the setup is taken from
;; http://tleyden.github.io/blog/2014/05/27/configure-emacs-as-a-go-editor-from-scratch-part-2/
;; and part 1 at
;; http://tleyden.github.io/blog/2014/05/22/configure-emacs-as-a-go-editor-from-scratch/

(defun auto-complete-for-go ()
   (auto-complete-mode 1))
   (add-hook 'go-mode-hook 'auto-complete-for-go)

(with-eval-after-load 'go-mode
   (require 'go-autocomplete))


;; Leverage goimport to auto add missing imports on save
;; Add a M-x compile command to compile current file
;; Format code on save
;;
;; To get all this working you will need the following go packages:
;;    go get golang.org/x/tools/cmd/oracle
;;    go get golang.org/x/tools/cmd/goimports
;;    go get github.com/nsf/gocode

(defun my-go-mode-hook ()
  ; Use goimports instead of go-fmt
  (setq gofmt-command "goimports")
  ; Call Gofmt before saving
  (add-hook 'before-save-hook 'gofmt-before-save)
  ; Customize compile command to run go build
  (if (not (string-match "go" compile-command))
      (set (make-local-variable 'compile-command)
           "go build -v && go test -v && go vet"))
  ; Godef jump key binding
  (local-set-key (kbd "M-.") 'godef-jump))
(add-hook 'go-mode-hook 'my-go-mode-hook)


(provide 'init-go)
