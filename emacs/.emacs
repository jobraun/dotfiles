;; Disable startup screen
(setq inhibit-startup-message t)

;; Append lisp folder to variable load-path
(add-to-list 'load-path "~/.emacs.d/lisp/")

;; Set default font
(set-default-font "Monospace-11")

;; Load theme
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

;; Enable Wind Move
(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))

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

(global-set-key (kbd "C-x C-b") 'bs-show)
(global-set-key (kbd "M-f") 'find-name-dired)
