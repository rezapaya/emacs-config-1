;; Miscellaneous emacs configuration - much ripped from emacs-starter-kit

(when window-system
  (setq frame-title-format '(buffer-file-name "%f" ("%b")))
  (tooltip-mode -1)
  (tool-bar-mode -1)
  (blink-cursor-mode -1))

(mouse-wheel-mode t)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

(setq visibil-bell nil
      font-lock-maximum-decoration t
      inhibit-startup-message t
      transient-mark-mode t
      color-theme-is-global t
      delete-by-moving-to-trash t
      shift-select-mode nil
      truncate-partial-width-windows nil
      uniquify-buffer-name-style 'forward
      ediff-window-setup-function 'ediff-setup-windows-plain
      xterm-mouse-mode t
      save-place-file (concat dotfiles-dir "places"))

(setq brose-url-browser-function 'browse-url-firefox)

(auto-compression-mode t)

(global-font-lock-mode t)

(menu-bar-mode -1)

(recentf-mode 1)

(show-paren-mode 1)

(when (> emacs-major-version 21)
  (ido-mode t)
  (setq ido-enable-prefix nil
	ido-enable-flex-matching t
	ido-create-new-buffer 'always
	ido-max-prospects 10))

(set-default 'indent-tabs-mode nil)
(set-default 'indicate-empty-lines t)
(set-default 'imenu-auto-rescan t)

(setq autoload-file (concat dotfiles-dir "loaddefs.el"))
(setq custom-file (concat dotfiles-dir "custom.el"))
(setq indent-tabs-mode nil)
(setq make-backup-files nil)
(auto-save-mode nil)
(setq auto-save-default nil)
(setq backup-inhibited t)

(column-number-mode t)
(delete-selection-mode)

(add-hook 'before-make-frame-hook '(lambda () (tool-bar-mode -1)))

(global-auto-revert-mode t)

(set-default-font "-apple-Monaco-medium-normal-normal-*-16-*-*-*-m-0-iso10646-1")
(modify-frame-parameters nil '((wait-for-wm . nil)))
