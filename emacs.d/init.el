(add-to-list 'load-path "~/.emacs.d/lisp/")
(add-to-list 'load-path "~/.emacs.d/lisp/plugin/")
(add-to-list 'load-path "~/.emacs.d/lisp/language")

(load "init-basic.el")
(load "init-ui.el")
(load "init-macos.el")
(load "init-keybind.el")

;; plugin
(load "init-evil.el")
(load "init-rainbow.el")
(load "init-undo-tree.el")
(load "init-company.el")
(load "init-keybind.el")
;; (load "init-recentf.el")
(load "init-autopair.el")
(load "init-neotree.el")
(load "init-magit.el")
(load "init-smart-tab.el")
(load "init-helm.el")
(load "init-fiplr.el")
(load "init-mwim.el")
(load "init-all-the-icons.el")
(load "init-treemacs.el")
(load "init-helm.el")

;; language
(load "init-go.el")
(load "init-python.el")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(exec-path-from-shell use-package monokai-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
