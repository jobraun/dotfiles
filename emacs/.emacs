;; Disable startup screen
(setq inhibit-startup-message t)

;; Append lisp folder to variable load-path
(add-to-list 'load-path "~/.emacs.d/lisp/")

;; Set default font
(set-default-font "Monospace-11")

;; Load theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'dracula t)

;; Disable the toolbar completely
(tool-bar-mode -1)

;; Enable line and column numbers
(global-linum-mode 1)
(setq column-number-mode t)

(require 'highlight-indent-guides)
(add-hook 'prog-mode-hook 'highlight-indent-guides-mode)
(setq highlight-indent-guides-method 'character)

;; Indentation, 2 spaces, no tabs
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)

(setq c-default-style "linux"
      c-basic-offset 2)

;; Store auto save file in system tmp dir
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; Disable backup files
(setq make-backup-files nil)

;; Autoreload of buffers
(global-auto-revert-mode t)

;; Auto-Saving the desktop
(require 'desktop)
(desktop-save-mode 1)
(defun my-desktop-save ()
  (interactive)
  ;; Don't call desktop-save-in-desktop-dir, as it prints a message.
  (if (eq (desktop-owner) (emacs-pid))
      (desktop-save desktop-dirname)))
(add-hook 'auto-save-hook 'my-desktop-save)

;; Enable Wind Move
(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))

(require 'helm-config)
(helm-mode 1)

(require 'helm-projectile)
(helm-projectile-on)

(defun create-tags (dir-name)
  "Create tags file."
  (interactive "DDirectory: ")
  (shell-command (format "ctags -f %sTAGS -e -R %s"
                         (file-name-as-directory dir-name)
                         (directory-file-name dir-name))))

(global-set-key (kbd "C-c h p") 'helm-projectile)
(global-set-key (kbd "M-f") 'find-name-dired)
