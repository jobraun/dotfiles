;; Disable startup screen
(setq inhibit-startup-message t)

;; Append lisp folder to variable load-path
(add-to-list 'load-path "~/.emacs.d/lisp/")

;; Load theme wombat
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'zenburn t)

;; Disable the toolbar completely
(tool-bar-mode -1)

;; Enable line and column numbers
(global-linum-mode 1)
(setq column-number-mode t)

(require 'highlight-indent-guides)
(add-hook 'prog-mode-hook 'highlight-indent-guides-mode)
(setq highlight-indent-guides-method 'character)

;; Store auto save file in system tmp dir
(setq backup-directory-alist
          `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
          `((".*" ,temporary-file-directory t)))

(setq c-default-style "linux"
      c-basic-offset 2)

;; Indentation, 2 spaces, no tabs
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)

;; Disable backup files
(setq make-backup-files nil)

;; This is how emacs tells the file type by the file suffix.
(setq auto-mode-alist
      (append '(("\\.bib$"      . bibtex-mode))
              '(("\\.tex$"      . latex-mode))
              '(("\\.cpp$"      . c++-mode))
              '(("\\.h$"        . c++-mode))
              '(("\\.hpp$"      . c++-mode))
              '(("\\.c$"        . c-mode))
              '(("\\.vcxproj$"  . xml-mode))
auto-mode-alist))

(add-to-list 'load-path "~/.emacs.d/lisp/neotree")
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)
