(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("37c8c2817010e59734fe1f9302a7e6a2b5e8cc648cf6a6cc8b85f3bf17fececf" default))
 '(package-selected-packages '(markdown-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; autoöatically load theme
(load-theme 'monokai t)

;; automatically hide tool bar
(tool-bar-mode -1)

;; activating CUA mode
(cua-mode t)

;; opening emacs on full screen
(add-hook 'window-setup-hook 'toggle-frame-maximized t)
;;(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; set line numbers
(setq line-number-mode t)

;; test on meta up and down to move lines

;; (define-key input-decode-map "\e\eOA" (kbd "<M-up>"))
;; (define-key input-decode-map "\e\eOB" (kbd "<M-down>"))
;; (global-set-key (kbd "<M-up>") 'transpose-line-up)
;; (global-set-key (kbd "<M-down>") 'transpose-line-down)

;; try to add xml and gdml

(add-to-list 'auto-mode-alist '("\\.gdml\\'" . nxml-mode))
(add-to-list 'auto-mode-alist '("\\.rml\\'" . nxml-mode))

;; Highlight indent mode from git clone git@github.com:antonj/Highlight-Indentation-for-Emacs.git
;; Found here https://superuser.com/questions/608623/how-can-i-show-vertical-indentations-markers-with-emacs
;; If want to use highlight: M-x highlight-indentation-mode RET

(add-to-list 'load-path "~/.emacs.d/highlight-indents/")
(require 'highlight-indentation)

;; Installing packages from MELPA

(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/"))
(package-initialize)
