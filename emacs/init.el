;;; init.el --- SoulWalker's Emacs Configuration.	-*- lexical-binding: t no-byte-compile: t -*-

;; Commentary:
;;
;; SoulWalker's Emacs - Wanna love world and peace.
;;

;; Defer garbage collection
(setq gc-cons-threshold most-positive-fixnum)

;; load path
;; Force "lisp"" and "elpa" at the head to reduce the startup time.
(defun add-subdirs-to-load-path(dir)
  "Recursive add directories to `load-path`"
  (let ((default-directory (file-name-as-directory dir)))
    (add-to-list 'load-path dir)
    (normal-top-level-add-subdirs-to-load-path)))

;; setup custom.el
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))

(add-subdirs-to-load-path (expand-file-name (concat user-emacs-directory "lisp")))
(add-subdirs-to-load-path (expand-file-name (concat user-emacs-directory "elpa")))

;; configuration start
(require 'init-config)
(require 'init-tools)

