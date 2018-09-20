(require 'init-elpa)

(require-package 'atom-one-dark-theme)

(autoload 'visual-basic-mode "visual-basic-mode" "Visual Basic Mode." t)
(add-to-list 'auto-mode-alist '("\\.vb\\'" . visual-basic-mode))
;; Activating  user packages
(require 'evil)
(evil-mode 1)

(require 'helm)
(require 'helm-config)

(set-face-attribute 'default nil
                    :family "Consolas"
                    :height 140
                    :weight 'normal
                    :width 'normal)

(load-theme 'atom-one-dark t)

(setq make-backup-files nil)
(setq auto-save-default nil)

(setq x-select-enable-clipboard t)
(setq global-linium-mode t)

(setq delete-old-versions t)
(setq ring-bell-function 'ignore)

(blink-cursor-mode 0)
(show-paren-mode 1)
(set-cursor-color "#cccccc")
(global-hl-line-mode 1)
(define-key global-map (kbd "RET") 'newline-and-indent)
(setq-default cursor-type 'bar)
(setq inhibit-startup-message t)
(menu-bar-mode -1)
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))
(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))

(projectile-global-mode)
(helm-projectile-on)

(global-set-key (kbd "M-x") #'helm-M-x)
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "C-x C-b") 'helm-mini)
(global-set-key (kbd "C-x C-f") 'helm-find-files)

(global-set-key (kbd "C-SPC") 'company-complete)
(global-set-key (kbd "C-q") 'kill-this-buffer)

(define-key helm-map (kbd "C-j") 'helm-next-line)
(define-key helm-map (kbd "C-k") 'helm-previous-line)

;; Unbind the two emacs movement keys
(define-key helm-map (kbd "C-n") nil)
(define-key helm-map (kbd "C-p") nil)

(setq resize-window-swap-capital-and-lowercase-behavior t)
(global-set-key (kbd "C-c ;") 'resize-window)
(global-set-key (kbd "C-c C-;") 'resize-window)

(provide 'init-user-settings)
