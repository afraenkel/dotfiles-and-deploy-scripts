
;; Load path
(add-to-list 'load-path "~/.emacs.d/lisp")

;; Package Manager
(require 'package)
;; (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/"))
(add-to-list 'package-archives '("elpy" . "http://jorgenschaefer.github.io/packages/"))
(package-initialize)

;; don't show startup
(setq inhibit-startup-screen t)

;; don't autosave or backup
(setq backup-inhibited t)
(setq auto-save-default nil)

;; don't show menu bar
(menu-bar-mode -1)

;; don't show the tool bar
;;(require 'tool-bar)
(tool-bar-mode -1)

;; Don't use TABS for indentations.
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)

;; Set the number to the number of columns to use.
(setq fill-column 79)

;; Add Autofill mode to mode hooks.
(add-hook 'text-mode-hook 'turn-on-auto-fill)

;; Show line number in the mode line.
(line-number-mode 1)

;; Show column number in the mode line.
(column-number-mode 1)

;; Syntax highlighting
(global-font-lock-mode 1)

;; Parentheses highlighting
(require 'paren)
(show-paren-mode t)

;; ido mode
(require 'ido)
(ido-mode t)
(setq ido-enable-flex-matching t) ;; enable fuzzy matching


(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))

(require 'markdown-mode)
(add-to-list 'auto-mode-alist '("\\.md$" . markdown-mode))

;;(require 'gfm-mode "markdown-mode")

;; Macaulay 2 start
(load ".emacs-Macaulay2" t)
;; Macaulay 2 end

(electric-indent-mode -1)


(load-theme 'tango-dark t)


;; Python related
(package-initialize)
(elpy-enable)
(elpy-use-ipython)
;;(elpy-clean-modeline)

;; Install Intero
(add-hook 'haskell-mode-hook 'intero-mode)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(elpy-rpc-backend "jedi")
 '(package-selected-packages
   (quote
    (flyspell-correct magit dockerfile-mode markdown-mode+ markdown-mode intero go-mode elpy))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; (autoload 'markdown-mode "markdown-mode"
;;    "Major mode for editing Markdown files" t)
;; (add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
;; (add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;; (autoload 'gfm-mode "markdown-mode"
;;    "Major mode for editing GitHub Flavored Markdown files" t)
;; (add-to-list 'auto-mode-alist '("README\\.md\\'" . gfm-mode))
