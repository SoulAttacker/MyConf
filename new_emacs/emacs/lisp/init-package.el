;; start-up config
(setq package-archives '(("org"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/")
                         ("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))
(setq package-check-signature nil)

(require 'package)

(unless (bound-and-true-p package--initialized)
    (package-initialize))

(unless package-archive-contents
    (package-refresh-contents))

(unless (package-installed-p 'use-package)
    (package-refresh-contents)
    (package-install 'use-package))

(eval-and-compile
    (setq use-package-always-ensure t)
    (setq use-package-always-defer t)
    (setq use-package-always-demand nil)
    (setq use-package-always-minimally t)
    (setq use-package-verbose t))

(require 'use-package)

;;;;;;;;;;;;;;;;;;;;;;;;
;; package-configuration
;;;;;;;;;;;;;;;;;;;;;;;;

;; default inner package
(fido-mode t)

;; pair complementation
(electric-pair-mode 1)


;; restart-emacs
(use-package restart-emacs)

;; company
(use-package company
  :diminish
  :defines (company-dabbrev-ignore-case company-dabbrev-downcase)
  :init (add-hook 'after-init-hook 'global-company-mode)
  :config
  (setq company-minimum-prefix-length 1
        company-show-quick-access t))

;; crux

;; which-key
(use-package which-key
    :defer nil
    :config (which-key-mode))

;; evil
;; (use-package 'evil)


;; lsp-mode
(use-package lsp-mode
  :init
  ;; set prefix for lsp-command-keymap (few alternatives - "C-l", "C-c l")
  ;; (setq lsp-keymap-prefix "C-c l")

  :hook ((python-mode. lsp-deferred)
         (c-mode. lsp-deferred)
         (lsp-mode . lsp-enable-which-key-integration))
  :commands(lsp lsp-deferred))

;; lsp-ui
(use-package lsp-ui :commands lsp-ui-mode)




;; optional if you want which-key integration
(use-package which-key
    :config
    (which-key-mode))

(require 'evil)
(evil-mode 1)

;; (require 'dracula-theme)
;; (use-package dracula-theme
;;   :init (load-theme 'dracula t)
;;   :config)

(use-package monokai-theme
  :init (load-theme 'monokai t)
  :config)

(use-package ivy
  :defer 1
  :demand
  :hook (after-init . ivy-mode)
  :config
  (ivy-mode 1)
  (setq ivy-use-virtual-buffers t
        ivy-initial-inputs-alist nil
        ivy-count-format "%d/%d "
        enable-recursive-minibuffers t
        ivy-re-builders-alist '((t . ivy--regex-ignore-order)))
)

(use-package counsel
  :after ivy
  :bind (("M-x" . counsel-M-x)
         ("C-x C-f" . counsel-find-file)
         ("C-c f" . counsel-recentf)
         ("C-c g" . counsel-git))
)

(use-package swiper
  :after ivy
  :bind (("C-s" . swiper)
         ("C-r" . swiper-isearch-backward))
  ;; :config (seq swiper-action-recenter t
  ;;              swiper-include-line-number-in-search t)
)



(provide 'init-package)
