;;;; .emacs.d/init.el

;;; UI

(load-theme 'wombat t)

;; Hide menu bar
(menu-bar-mode -1)

;; Show line numbers
(require 'linum)
(global-linum-mode t)
(setq linum-format "%3d ")

;; Highlight a pair of parens
(show-paren-mode t)


;;; Key Bindings

;; Use C-h as backspace
(keyboard-translate ?\C-h ?\C-?)


;;; Backups

(setq backup-directory-alist '((".*" . "~/.emacs.history")))
(setq version-control t)
(setq kept-new-versions 5)
(setq kept-old-versions 1)
(setq delete-old-versions t)
