(use-package evil
  :ensure t
  :config
  (evil-mode 1)

(use-package evil-leader
    :ensure t
    :config
    (progn
      (global-evil-leader-mode)
      (setq evil-leader/in-all-states t)
        (evil-leader/set-leader ",")
        (evil-leader/set-key
      "co" 'evilnc-comment-or-uncomment-lines
      "cc" 'evilnc-copy-and-comment-lines
          "cp" 'evilnc-comment-or-uncomment-paragraphs)))
    )

(use-package evil-nerd-commenter
  :ensure t)
