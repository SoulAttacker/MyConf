;; init-package.el --- default configurations.	-*- lexical-binding: t -*-

;;; Commentary:
;;
;; package configurations.
;;


;;; Code:

;; init package-archives
(setq package-archives
      '(("gnu"    . "https://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
        ("melpa"  . "https://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
        ("org-cn" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/org/")))

;; close startup package loading
(setq package-enable-at-startup nil)
;; initialize package-archives
;; (package-initialize)

;; initialize use-package
(unless (package-installed-p 'use-package)
  (package-install 'use-package))

;; setup use-package
(eval-and-compile
  (setq use-package-always-ensure t)
  ;; (setq use-package-always-defer t)
  (setq use-package-expand-minimally t)
  (setq use-package-enable-imenu-support t))

(eval-and-compile
  (require 'use-package))

;; straight.el
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 6))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))


(provide 'init-package)
