;; encoding: utf-8
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(setq default-buffer-line-file-coding-system 'utf-8)
(setq gc-cons-threshold most-positive-fixnum)

;; inhibit startup
(setq inhibit-startup-message t)

;; inhibit tool-bar
(tool-bar-mode -1)

;; inhibit scroll-bar
(scroll-bar-mode -1)

;; set nu
(global-display-line-numbers-mode t)

;; backup
(setq backup-directory-alist (quote (("." . "~/.emacs-backups"))))

;; font
(set-face-attribute 'default nil :font "PTMono Nerd Font 20")

;; window position
;; (set-frame-position (selected-frame) 500 500)

;; full-screen
(setq initial-frame-alist (quote ((fullscreen .maximized))))

(provide 'init-ui)
