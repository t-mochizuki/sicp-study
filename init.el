;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(add-to-list 'package-archives
             '("melpa"."http://melpa.org/packages/") t)
(package-initialize)

(setq markdown-command "~/Markdown_1.0.1/Markdown.pl")

(savehist-mode t)
(setq history-length 10000)

(setq make-backup-files nil)
(setq auto-save-default nil)

(setq initial-frame-alist
      (append (list
               '(top . 0)
               '(left . 0)
               '(width . 230) ;; 160
               '(height . 65)) ;; 48
              initial-frame-alist))

(ivy-mode t)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
;; (global-set-key (kbd "C-c C-r") 'ivy-resume)
;; (global-set-key (kbd "<f6>") 'ivy-resume)
;; (global-set-key (kbd "<f1> f") 'counsel-describe-function)
;; (global-set-key (kbd "<f1> v") 'counsel-describe-variable)
;; (global-set-key (kbd "<f1> l") 'counsel-find-library)
;; (global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
;; (global-set-key (kbd "<f2> u") 'counsel-unicode-char)
;; (global-set-key (kbd "C-c g") 'counsel-git)
;; (global-set-key (kbd "C-c j") 'counsel-git-grep)
;; (global-set-key (kbd "C-c k") 'counsel-ag)
;; (global-set-key (kbd "C-c l") 'counsel-locate)
;; (global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
;; (define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-history)

(require 'popwin)
(setq display-buffer-function 'popwin:display-buffer)

(add-hook 'after-init-hook 'global-company-mode)
(add-hook 'company-mode-hook
          '(lambda ()
             (set-face-attribute 'company-tooltip nil
                                 :foreground "black" :background "lightgrey")
             (set-face-attribute 'company-tooltip-common nil
                                 :foreground "black" :background "lightgrey")
             (set-face-attribute 'company-tooltip-common-selection nil
                                 :foreground "white" :background "steelblue")
             (set-face-attribute 'company-tooltip-selection nil
                                 :foreground "black" :background "steelblue")
             (set-face-attribute 'company-preview-common nil
                                 :background nil :foreground "lightgrey" :underline t)
             (set-face-attribute 'company-scrollbar-fg nil
                                 :background "orange")
             (set-face-attribute 'company-scrollbar-bg nil
                                 :background "gray40")
             (define-key company-mode-map (kbd "C-i") 'company-complete)
             (define-key company-active-map (kbd "C-n") 'company-select-next)
             (define-key company-active-map (kbd "C-p") 'company-select-previous)
             (define-key company-search-map (kbd "C-n") 'company-select-next)
             (define-key company-search-map (kbd "C-p") 'company-select-previous)))

(transient-mark-mode t)

(define-key global-map (kbd "M-/") 'dabbrev-expand)
(define-key global-map (kbd "C-x C-o") 'other-window)
(define-key global-map (kbd "C-t") 'other-window)
(define-key global-map (kbd "C-w") 'backward-kill-word)
(define-key global-map (kbd "C-c C-w") 'kill-region)
(define-key global-map (kbd "C-c C-u") 'kill-whole-line)
(define-key global-map (kbd "C-x C-b") 'switch-to-buffer)
(define-key global-map (kbd "M-a") 'backward-sentence)
(define-key global-map (kbd "M-e") 'forward-sentence)
(define-key global-map (kbd "C-h") 'delete-backward-char)
(define-key global-map (kbd "C-c C-v") 'view-mode)
(define-key global-map (kbd "C-c [ b") 'previous-buffer)
(define-key global-map (kbd "C-c ] b") 'next-buffer)

(add-to-list 'exec-path "/usr/local/bin")
(setq scheme-program-name "mit-scheme")
(setq inferior-lisp-program "sbcl")

(require 'paredit)

(add-hook 'scheme-mode-hook
          '(lambda ()
             (enable-paredit-mode)
             (define-key scheme-mode-map (kbd "C-M-k") 'kill-sexp)))

(add-hook 'lisp-mode-hook
          '(lambda ()
             (enable-paredit-mode)
             (define-key lisp-mode-map (kbd "C-M-k") 'kill-sexp)))

(add-hook 'c++-mode-hook
          '(lambda ()
             (c-set-style "stroustrup")))

(add-hook 'markdown-mode-hook
          '(lambda ()))

(add-hook 'view-mode-hook
          '(lambda ()
             (define-key view-mode-map (kbd "i") 'view-mode)
             (define-key view-mode-map (kbd "w") 'forward-word)
             (define-key view-mode-map (kbd "e") 'forward-word)
             (define-key view-mode-map (kbd "b") 'backward-word)
             (define-key view-mode-map (kbd "C-u") 'scroll-down-command)
             (define-key view-mode-map (kbd "C-d") 'scroll-up-command)
             (define-key view-mode-map (kbd "{") 'backward-paragraph)
             (define-key view-mode-map (kbd "}") 'forward-paragraph)
             (define-key view-mode-map (kbd "G") 'end-of-buffer)
             (define-key view-mode-map (kbd "l") 'forward-char)
             (define-key view-mode-map (kbd "k") 'previous-line)
             (define-key view-mode-map (kbd "j") 'next-line)
             (define-key view-mode-map (kbd "h") 'backward-char)))

(add-hook 'text-mode-hook
          '(lambda ()
             (setq indent-tabs-mode nil)))

(add-hook 'prog-mode-hook
          '(lambda ()
             (setq indent-tabs-mode nil)
             (show-paren-mode t)))

(require 'whitespace)
(global-whitespace-mode t)
(setq whitespace-style '(face
                         trailing
                         tabs
                         spaces
                         empty
                         space-mark
                         tab-mark
                         newline
                         ))
(setq whitespace-display-mappings
      '((space-mark ?\u3000 [?\u25a1])))

(setq whitespace-space-regexp "\\(\u3000+\\)")
(set-face-attribute 'whitespace-trailing nil
                    :foreground "Purple"
                    :background "White"
                    :underline t)
(set-face-attribute 'whitespace-tab nil
                    :foreground "Purple"
                    :background "White"
                    :underline t)
(set-face-attribute 'whitespace-space nil
                    :foreground "Purple"
                    :background "White")
(set-face-attribute 'whitespace-empty nil
                    :background "White")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-idle-delay nil)
 '(eww-history-limit 1000)
 '(package-selected-packages
   (quote
    (typescript-mode yaml-mode lispxmp history markdown-mode ddskk smartrep smartparens parinfer paredit cider slime counsel swiper popwin magit company))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
