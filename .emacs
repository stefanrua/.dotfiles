;; GO TO LINE 44 FOR THE MORE INTERESTING STUFF

(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  (when no-ssl
    (warn "\
Your version of Emacs does not support SSL connections,
which is unsafe because it allows man-in-the-middle attacks.
There are two things you can do about this warning:
1. Install an Emacs version that does support SSL and be safe.
2. Remove this warning from your init file so you won't see it again."))
  ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  ;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
    (add-to-list 'package-archives (cons "gnu" (concat proto "://elpa.gnu.org/packages/")))))
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (gruvbox)))
 '(custom-safe-themes
   (quote
    ("7f89ec3c988c398b88f7304a75ed225eaac64efa8df3638c815acc563dfd3b55" default)))
 '(package-selected-packages
   (quote
    (undo-tree flycheck markdown-mode nav gruvbox-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;
;; THE ACTUALLY INTERESTING PART
;;

;; Remove menu, tool, and scroll bars
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(global-linum-mode 1) ;; Add line numbers
(setq show-paren-delay 0) ;; Remove delay from showing parens / KEEP THIS BEFORE show-paren-mode
(show-paren-mode 1) ;; Show matchin parens
(set-default 'truncate-lines t) ;; Remove line wrap

;; Keybinds
(global-unset-key (kbd "C-z")) ;; Remove freezing bind

;; Tab width
; (setq-default tab-width 4)
(setq c-default-style "linux"
      c-basic-offset 4)
(setq js-indent-level 2)

;; Go directly to scratchpad
(setq inhibit-startup-message t
      inhibit-startup-echo-area-message t)
(setq initial-scratch-message "
 ;;      ___           ___           ___           ___           ___     
 ;;     /\\  \\         /\\__\\         /\\  \\         /\\  \\         /\\  \\    
 ;;    /::\\  \\       /::|  |       /::\\  \\       /::\\  \\       /::\\  \\   
 ;;   /:/\\:\\  \\     /:|:|  |      /:/\\:\\  \\     /:/\\:\\  \\     /:/\\ \\  \\  
 ;;  /::\\~\\:\\  \\   /:/|:|__|__   /::\\~\\:\\  \\   /:/  \\:\\  \\   _\\:\\~\\ \\  \\ 
 ;; /:/\\:\\ \\:\\__\\ /:/ |::::\\__\\ /:/\\:\\ \\:\\__\\ /:/__/ \\:\\__\\ /\\ \\:\\ \\ \\__\\
 ;; \\:\\~\\:\\ \\/__/ \\/__/~~/:/  / \\/__\\:\\/:/  / \\:\\  \\  \\/__/ \\:\\ \\:\\ \\/__/
 ;;  \\:\\ \\:\\__\\         /:/  /       \\::/  /   \\:\\  \\        \\:\\ \\:\\__\\  
 ;;   \\:\\ \\/__/        /:/  /        /:/  /     \\:\\  \\        \\:\\/:/  /  
 ;;    \\:\\__\\         /:/  /        /:/  /       \\:\\__\\        \\::/  /   
 ;;     \\/__/         \\/__/         \\/__/         \\/__/         \\/__/    

")
