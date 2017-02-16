(setq-default c-basic-offset 8
	tab-width 8
	indent-tabs-mode t
	c-default-style "bsd")

(load-theme 'tsdh-dark t)

;; Ruby Options
(setq-default ruby-align-to-stmt-keywords nil
	ruby-deep-arglist nil
	ruby-deep-indent-paren nil
	ruby-deep-indent-paren-style nil
	ruby-indent-level 8
	ruby-indent-tabs-mode t)

;; Perl Options
(setq-default perl-indent-level 8
	perl-tab-always-indent nil)

;; Erlang Options
(setq load-path (cons (getenv "EMACS_ERLANG_TOOLS") load-path))
(setq erlang-root-dir (getenv "EMACS_ERLANG_ROOT"))
(require 'erlang-start)
(setq erlang-electric-commands '())

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
