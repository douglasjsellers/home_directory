(add-to-list 'load-path "/Users/douglassellers/.emacs.d/vendor/textmate.el")
(load "/Users/douglassellers/.emacs.d/vendor/osx-osascript.el")
(load "/Users/douglassellers/.emacs.d/vendor/osx-itunes.el")
(load "/Users/douglassellers/.emacs.d/vendor/twitter.el")


(autoload 'js2-mode "js2" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

(require 'textmate)
(require 'osx-itunes)

(textmate-mode)
(provide 'blurb)
(delete-selection-mode t)

(add-to-list 'load-path "/Users/douglassellers/.emacs.d/vendor/")
(require 'goto-last-change)

(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-c\C-k" 'kill-region)
(defun my-java-mode-hook ()
  (c-set-style "bsd")
  (setq c-basic-offset 4))
(add-hook 'java-mode-hook 'my-java-mode-hook)

(require 'twitter)
(autoload 'twitter-get-friends-timeline "twitter" nil t)
(autoload 'twitter-status-edit "twitter" nil t)
(global-set-key "\C-xt" 'twitter-get-friends-timeline)
(add-hook 'twitter-status-edit-mode-hook 'longlines-mode)
;; 	(autoload 'goto-last-change "goto-last-change"
;; 	  "Set point to the position of the last change." t)
