;; init-package

(setq package-archives
      '(("gnu"    . "https://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
        ("melpa"  . "https://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
        ("org-cn" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/org/"))) 

;; Run package-refresh-contents if first start.
;; use folder "var" to check if it is the first start, see no-littering.
(unless (file-exists-p (expand-file-name "var" user-emacs-directory))
  (package-refresh-contents))

(setq package-enable-at-startup nil)
(package-initialize)

;; Initialize use-package
(unless (package-installed-p 'use-package)
  (package-install 'use-package))
;; this i only needed once
(eval-when-compile
  (require 'use-package))
(setq use-package-always-ensure t)

(provide 'init-package)
