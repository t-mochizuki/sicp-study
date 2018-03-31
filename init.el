(setq transient-mark-mode t)

(define-key global-map (kbd "M-/") 'dabbrev-expand)
(define-key global-map (kbd "C-x C-o") 'other-window)

;; (setq indent-tabs-mode nil)
;; (define-key scheme-mode-map (kbd "M-g M-g") 'goto-line)
;; (define-key scheme-mode-map (kbd "M-;") 'comment-dwim)
;; (define-key scheme-mode-map (kbd "C-M-f") 'forward-sexp)
;; (define-key scheme-mode-map (kbd "C-M-b") 'backward-sexp)
;; (define-key scheme-mode-map (kbd "C-M-d") 'down-list)
;; (define-key scheme-mode-map (kbd "C-M-u") 'backwark-up-lis)
;; (define-key scheme-mode-map (kbd "C-M-a") 'begining-of-defun)
;; (define-key scheme-mode-map (kbd "C-M-q") 'indent-pp-sexp)


(add-to-list 'exec-path "/usr/local/bin")
(setq scheme-program-name "mit-scheme")

(add-hook 'scheme-mode-hook
	  '(lambda ()
	     (setq indent-tabs-mode nil)
	     (define-key scheme-mode-map (kbd "C-j") 'newline-and-indent)
	     (define-key scheme-mode-map (kbd "C-M-k") 'kill-sexp)))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
