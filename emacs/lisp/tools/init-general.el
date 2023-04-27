;; init-evil.el --- evil configurations. -*- lexical-binding: t -*-

;;; Commentary:
;;
;; evil configurations.
;;


;;; Code:

;; package: default-text-scale
(use-package default-text-scale
  :hook (after-init . default-text-scale-mode))

;; package: general
(use-package general
  :config
  (general-evil-setup t))

(defun open-my-configuration ()
  "Open my config file."
  (interactive)
  (counsel-find-file user-emacs-directory))

;; global key binding
(general-define-key
 "M--" 'default-text-scale-decrease
 "M-=" 'default-text-scale-increase)

;; func to define my leader-key keymap
(general-create-definer my-leader-def
  :states '(normal insert visual emacs)
  :keymaps 'override
  :prefix "SPC"
  :non-normal-prefix "C-,")

;; func to define my normal state keymap
(general-create-definer my-normal-def
  :states '(normal)
  :keymaps 'override)

;; func to define my insert state keymap
(general-create-definer my-insert-def
  :states '(insert)
  :keymaps 'override)

(my-insert-def
  ;; activate C-a C-e in insert state
  "C-a" '(move-beginning-of-line :wk "move-begin")
  "C-e" '(move-end-of-line :wk "move-end")

  ;; can use C-hjkl to move cursor in insert state
  "C-h" '(backward-char :wk "backward-char")
  "C-j" '(next-line :wk "next-line")
  "C-k" '(previous-line :wk "previous-line")
  "C-l" '(forward-char :wk "forward-char")
  )

;; normal state key definition
(my-normal-def
  ;; activate C-a C-e in insert state
  "C-a" '(move-beginning-of-line :wk "move-begin")
  "C-e" '(move-end-of-line :wk "move-end")
  "C-S-<left>"  '(shrink-window-horizontally :wk "shrink-window-horizontally")
  "C-S-<right>" '(enlarge-window-horizontally :wk "enlarge-window-horizontally")
  "C-S-<down>"  '(shrink-window :wk "shrink-window")
  "C-S-<up>"    '(enlarge-window :wk "enlarge-window")

  ;; remap C-r
  "C-r" '(undo-redo :wk "undo-redo")

  ;; command for macos
  "M-s" '(save-buffer :wk "save-file")

  "g" '(:wk "Goto")
  "gd" '(lsp-ui-peek-find-definitions :wk "peek-definition")
  "gh" '(lsp-ui-peek-find-references :wk "peek-references")
  "gi" '(lsp-ui-peek-find-implementation :wk "peek-implementation")
  "gr" '(lsp-rename :wk "rename-symbols")
  "gs" '(lsp-ui-peek-find-workspace-symbol :wk "peek-symbols")
  "gD" '(evil-goto-definition :wk "goto-definition")
  )

;; leader key definition, prefix is "SPC" or "C-,"
(my-leader-def
  "SPC" '(counsel-M-x :wk "counsel-M-x")
  "a" '(:wk "Avy")
  "ac" '(avy-goto-char :wk "avy-goto-char")
  "aw" '(avy-goto-word-1 :wk "avy-goto-word")

  "b" '(:wk "Buffer")
  "bb" '(counsel-switch-buffer :wk "switch-buffer")
  "bk" '(kill-this-buffer :wk "kill-this-buffer")
  "bn" '(next-buffer :wk "next-buffer")
  "bp" '(previous-buffer :wk "previous-buffer")

  "bH" '(buf-move-left :wk "buffer-move-left")
  "bJ" '(buf-move-down :wk "buffer-move-down")
  "bK" '(buf-move-up :wk "buffer-move-up")
  "bL" '(buf-move-right :wk "buffer-move-right")

  "c" '(:wk "Code")
  "cb" '(cmake-ide-run-cmake :wk "cmake-run-cmake")
  "cc" '(cmake-ide-compile :wk "cmake-compile")
  "cr" '(quickrun :wk "code-quickrun")

  "e" '(treemacs :wk "treemacs")

  "f" '(:wk "File")
  "ff" '(counsel-find-file :wk "find-file")
  "fr" '(counsel-recentf :wk "recent-file")

  "g" '(:wk "Generator")
  "gc" '(comment-region :wk "comment-line")
  "gu" '(uncomment-region :wk "comment-line")

  "h" '(:wk "Help")
  "hr" '(restart-emacs :wk "restart-emacs")

  "l" '(:wk "Language")
  "la" '(lsp-execute-code-action :wk "code-action")
  "le" '(eval-buffer :wk "eval-buffer")
  "lf" '(lsp-format-buffer :wk "lsp-format-buffer")
  "lF" '(format-all-buffer :wk "format-all-buffer")

  "m" '(magit :wk "magit")

  "w" '(:wk "Window")
  "wh" '(evil-window-left :wk "window-left")
  "wl" '(evil-window-right :wk "window-right")
  "wk" '(evil-window-up :wk "window-up")
  "wj" '(evil-window-down :wk "window-up")
  "wq" '(evil-window-delete :wk "window-delete")
  "wv" '(evil-window-vsplit :wk "window-vsplit")
  "wh" '(evil-window-split :wk "window-hsplit")

  "wt" '(transwin-toggle :wk "transwin-toggle")

  "p" '(:wk "Project")
  "pc" '(projectile-compile-project :wk "projectile-compile-project")
  "pf" '(projectile-find-file :wk "projectile-find-file")
  "pp" '(open-my-configuration :wk "personal-config")
  "pr" '(counsel-projectile-rg :wk "projectile-rg")
  "ps" '(counsel-projectile-switch-project :wk "counsel-switch-project")
  "pR" '(projectile-replace :wk "projectile-replace")

  "t" '(:wk "Terminal")
  "tt" '(vterm-other-window :wk "vterm-other-window")
  "tv" '(vterm :wk "vertm-new-window")

  "T" '(lsp-ui-imenu :wk "lsp-ui-imenu")

  "v" '(evil-window-vsplit :wk "window-vsplit")
  "s" '(evil-window-split :wk "window-split")

  )

(provide 'init-general)
