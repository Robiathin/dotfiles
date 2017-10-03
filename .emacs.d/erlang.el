;; Erlang Emacs Tools
;;
;; Ensure EMACS_ERLANG_TOOLS and EMACS_ERLANG_ROOT are both set

(setq load-path (cons (getenv "EMACS_ERLANG_TOOLS") load-path)
	erlang-root-dir (getenv "EMACS_ERLANG_ROOT"))
(require 'erlang-start)
(setq erlang-electric-commands '()
	auto-save-default nil)
