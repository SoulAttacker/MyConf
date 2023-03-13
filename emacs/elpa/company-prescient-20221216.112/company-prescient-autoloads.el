;;; company-prescient-autoloads.el --- automatically extracted autoloads (do not edit)   -*- lexical-binding: t -*-
;; Generated by the `loaddefs-generate' function.

;; This file is part of GNU Emacs.

;;; Code:

(add-to-list 'load-path (or (and load-file-name (file-name-directory load-file-name)) (car load-path)))



;;; Generated autoloads from company-prescient.el

(defvar company-prescient-mode nil "\
Non-nil if Company-Prescient mode is enabled.
See the `company-prescient-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `company-prescient-mode'.")
(custom-autoload 'company-prescient-mode "company-prescient" nil)
(autoload 'company-prescient-mode "company-prescient" "\
Minor mode to use prescient.el in Company completions.

This is a global minor mode.  If called interactively, toggle the
`Company-Prescient mode' mode.  If the prefix argument is
positive, enable the mode, and if it is zero or negative, disable
the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `(default-value \\='company-prescient-mode)'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

(fn &optional ARG)" t)
(register-definition-prefixes "company-prescient" '("company-prescient-"))

;;; End of scraped data

(provide 'company-prescient-autoloads)

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; no-native-compile: t
;; coding: utf-8-emacs-unix
;; End:

;;; company-prescient-autoloads.el ends here
