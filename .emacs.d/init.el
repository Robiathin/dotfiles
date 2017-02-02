(setq-default c-basic-offset 8
	tab-width 8
	indent-tabs-mode t
	c-default-style "bsd")

;; Ruby Options
(setq-default ruby-align-to-stmt-keywords nil
	ruby-deep-arglist nil
	ruby-deep-indent-paren nil
	ruby-deep-indent-paren-style nil
	ruby-indent-level 8
	ruby-indent-tabs-mode t)

;; Perl options
(setq-default perl-indent-level 8
	perl-tab-always-indent nil)

(setq auto-save-default nil)

;; Print a hard tab when the tab key is pressed
(defun print-hard-tab ()
	(interactive)
	(insert "\t"))
(global-set-key (kbd "TAB") 'print-hard-tab)

;; Manually indent LISP code
(defun print-new-line ()
	(interactive)
	(insert "\n"))
(add-hook 'emacs-lisp-mode-hook
	(lambda ()
		(global-set-key (kbd "RET") 'print-new-line)))
(add-hook 'scheme-mode-hook
	(lambda ()
		(global-set-key (kbd "RET") 'print-new-line)))

(global-linum-mode t)
