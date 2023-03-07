;; init-evil.el --- evil configurations.	-*- lexical-binding: t -*-

;;; Commentary:
;;
;; evil configurations.
;;


;;; Code:

;; package: general
(use-package general
  :config
  (general-evil-setup t)
)

(defun open-my-configuration ()
  "Open my config file."
  (interactive)
  (counsel-find-file user-emacs-directory))


;; func to define my leader key map
(general-create-definer my-leader-def
  :states '(normal insert visual emacs)
  :keymaps 'override
  :prefix "SPC"
  :non-normal-prefix "C-,")

(my-leader-def
 "b" '(:wk "Buffer")
 "bb" '(counsel-switch-buffer :wk "switch-buffer")
 "bk" '(kill-this-buffer :wk "kill-this-buffer")
 "bn" '(next-buffer :wk "next-buffer")
 "bp" '(previous-buffer :wk "previous-buffer")
 "bK" '(kill-buffer :wk "kill-buffer")

 "e" '(treemacs :wk "treemacs")

 "f" '(:wk "File")
 "ff" '(counsel-find-file :wk "find-file")

 "h" '(:wk "Help")
 "hr" '(restart-emacs :wk "restart-emacs")

 "l" '(:wk "Language")
 "le" '(eval-buffer :wk "eval-buffer")
 "lf" '(format-all-buffer :wk "format-buffer")


 "p" '(:wk "Project")
 "pp" '(open-my-configuration :wk "personal-config")
 "pP" '(projectile-command-map :wk "projectile-command")

 "t" '(:wk "Terminal")
 "tt" '(vterm-other-window :wk "vterm-other-window")
 "tv" '(vterm :wk "vertm-new-window")

 )

(provide 'init-general)
