(setq transient-mark-mode t)

(define-key global-map (kbd "M-/") 'dabbrev-expand)
(define-key global-map (kbd "C-x C-o") 'other-window)
(define-key global-map (kbd "C-t") 'other-window)

(define-key global-map (kbd "M-h") 'backward-char)
(define-key global-map (kbd "M-j") 'next-line)
(define-key global-map (kbd "M-k") 'previous-line)
(define-key global-map (kbd "M-l") 'forward-char)
(define-key global-map (kbd "M-[") 'forward-paragraph)
(define-key global-map (kbd "M-]") 'backward-paragraph)
(define-key global-map (kbd "C-c C-w") 'backward-kill-word)
(define-key global-map (kbd "C-c C-u") 'kill-whole-line)

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
