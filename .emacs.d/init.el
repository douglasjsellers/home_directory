;; Make it so that the meta key behaves itself on the mac
(setq mac-option-key-is-meta nil)
(setq mac-command-key-is-meta t)
(setq mac-command-modifier 'meta)
(setq mac-option-modifier nil)

;; make it so that the copy past steff is more sane
(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-c\C-k" 'kill-region)

;; make it so that when you select something and hit delete it deletes
;; it
(delete-selection-mode t)

;; Enable ido
(require 'ido)
(ido-mode t)
(setq ido-enable-flex-matching t) ;; enable fuzzy matching(require 'ido'

;; Install some starter kit stuff
(setq dotfiles-dir (file-name-directory
                    (or (buffer-file-name) load-file-name)))
(add-to-list 'load-path dotfiles-dir)
(add-to-list 'load-path (concat dotfiles-dir "/elpa-to-submit"))
(add-to-list 'load-path (concat dotfiles-dir "/elpa-to-submit/jabber"))
(setq autoload-file (concat dotfiles-dir "loaddefs.el"))
(setq package-user-dir (concat dotfiles-dir "elpa"))
(setq custom-file (concat dotfiles-dir "custom.el"))

;; These should be loaded on startup rather than autoloaded on demand
;; since they are likely to be used in every session:

(require 'cl)
(require 'saveplace)
(require 'ffap)
(require 'uniquify)
(require 'ansi-color)
(require 'recentf)

;; this must be loaded before ELPA since it bundles its own
;; out-of-date js stuff. TODO: fix it to use ELPA dependencies
;; TODO: this is causing issues with js2-mode; re-enable when fixed.
(load "elpa-to-submit/nxhtml/autostart")

;; Load up ELPA, the package manager:

(require 'package)
(package-initialize)
(require 'starter-kit-elpa)

;; Load up starter kit customizations:

(require 'starter-kit-defuns)
(require 'starter-kit-bindings)
(require 'starter-kit-misc)
(require 'starter-kit-registers)
(require 'starter-kit-eshell)
(require 'starter-kit-lisp)
(require 'starter-kit-ruby)
(require 'starter-kit-js)

(regen-autoloads)
(load custom-file 'noerror)

;; More complicated packages that haven't made it into ELPA yet:

(autoload 'jabber-connect "jabber" "" t)
;; TODO: rinari, slime

;; You can keep system- or user-specific customizations here:
(setq system-specific-config (concat dotfiles-dir system-name ".el")
      user-specific-config (concat dotfiles-dir user-login-name ".el"))

(if (file-exists-p system-specific-config) (load system-specific-config))
(if (file-exists-p user-specific-config) (load user-specific-config))


;; Make the java editing more sane
(defun my-java-mode-hook ()
  (c-set-style "bsd")
  (setq c-basic-offset 4))
(add-hook 'java-mode-hook 'my-java-mode-hook)

;; Enable nicer javascript editing
(autoload 'js2-mode "js2" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

;; init.el ends