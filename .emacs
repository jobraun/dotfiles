;; Disable startup screen
(setq inhibit-startup-message t)

;; Store auto save file in system tmp dir
(setq backup-directory-alist
          `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
          `((".*" ,temporary-file-directory t)))

;; Indentation, 4 spaces, no tabs
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(defvaralias 'c-basic-offset 'tab-width)

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
