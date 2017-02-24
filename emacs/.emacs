;; Disable startup screen
(setq inhibit-startup-message t)

;; Dark background
(invert-face 'default)

;; Enable line and column numbers
(global-linum-mode 1)
(setq column-number-mode t)

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
