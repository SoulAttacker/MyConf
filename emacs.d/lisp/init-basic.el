;; the package manager
(require 'package)
(setq
 package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                    ("org" . "http://orgmode.org/elpa/")
                    ("melpa" . "http://melpa.org/packages/")
                    ("melpa-stable" . "http://stable.melpa.org/packages/"))
 package-archive-priorities '(("melpa-stable" . 1)));; the package manager

;; 显示行号
(global-linum-mode)

;; 行号格式
(setq linum-format "%d ")

;; tab缩进
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)
;; (setq custom-tab-width 4)
;; (setq-default python-indent-offset custom-tab-width)
;; (setq-default evil-shift-width custom-tab-width)
;; (setq c-basic-offset 4)
;; (setq c-default-style "linux")
;; (setq default-tab-width 4)
;; (setq create-lockfiles nil)

(electric-pair-mode 1)

;; 字体
(set-frame-font "Monaco-14")

;;进行语法加亮
(global-font-lock-mode t)

;; 括号补全
(electric-pair-mode t)

;;关闭出错的时候的提示的声音。
(setq visible-bell t)

;; package support
(setq use-package-enable-imenu-support t)


;; 把Yes用y代替
(fset 'yes-or-no-p 'y-or-n-p)

;; fill-column 
(setq-default fill-column 80)

;; 使用use-package管理插件
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))
(setq use-package-verbose t)
(setq use-package-always-ensure t)
(setq warning-minimum-level :emergency)

;; 编码
(prefer-coding-system 'utf-8)

(setenv "LANG" "en_US.UTF-8")
(setenv "LC_ALL" "en_US.UTF-8")
(setenv "LC_CTYPE" "en_US.UTF-8")


