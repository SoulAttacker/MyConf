(add-to-list 'load-path (expand-file-name (concat user-emacs-directory "lisp")))
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))

(require 'init-os)
(require 'init-package)
(require 'init-ui)
(require 'init-kbd)

(when (file-exists-p custom-file)
    (load-file custom-file))
